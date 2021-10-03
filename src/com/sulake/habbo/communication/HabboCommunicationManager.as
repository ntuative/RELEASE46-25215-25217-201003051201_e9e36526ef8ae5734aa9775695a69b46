package com.sulake.habbo.communication
{
   import com.sulake.core.Core;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.ICoreCommunicationManager;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.connection.IConnectionStateListener;
   import com.sulake.core.communication.enum.ConnectionType;
   import com.sulake.core.communication.messages.IMessageConfiguration;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.protocol.IProtocol;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.habbo.communication.enum.HabboConnectionType;
   import com.sulake.habbo.communication.enum.HabboProtocolType;
   import com.sulake.habbo.communication.protocol.WedgieProtocol;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.configuration.enum.HabboConfigurationEvent;
   import com.sulake.habbo.tracking.HabboErrorVariableEnum;
   import com.sulake.iid.IIDCoreCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HabboCommunicationManager extends Component implements IHabboCommunicationManager, IConnectionStateListener
   {
       
      
      private var var_733:int = 0;
      
      private var var_34:String = "";
      
      private var var_1157:Timer;
      
      private var var_250:Array;
      
      private var var_1759:Boolean = false;
      
      private var var_85:String = "";
      
      private var var_97:IHabboConfigurationManager;
      
      private var var_1006:IMessageConfiguration;
      
      private const const_1607:int = 5;
      
      private var var_335:int = -1;
      
      private var var_287:ICoreCommunicationManager;
      
      private var var_785:int = 1;
      
      private var var_1760:Boolean = false;
      
      private var var_1761:Boolean = false;
      
      private var _connection:IConnection;
      
      public function HabboCommunicationManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1006 = new HabboMessages();
         var_250 = [];
         var_1157 = new Timer(100,1);
         super(param1,param2,param3);
         this.queueInterface(new IIDCoreCommunicationManager(),onCoreCommunicationManagerInit);
         this.queueInterface(new IIDHabboConfigurationManager(),onHabboConfigurationInit);
      }
      
      public function get port() : int
      {
         if(var_335 < 0 || var_335 >= var_250.length)
         {
            return 0;
         }
         return var_250[var_335];
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] Security Error: " + param1.text);
         ErrorReportStorage.addDebugData("Communication Security Error","SecurityError on connect: " + param1.text + ". Port was " + var_250[var_335]);
         tryNextPort();
      }
      
      private function onConnect(param1:Event) : void
      {
         ErrorReportStorage.addDebugData("Connection","Connected with " + var_785 + " attempts");
      }
      
      private function onConfigurationReady(param1:Event = null) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         Logger.log("Habbo Communication Manager: init based on configuration: " + var_97);
         if(var_97 == null)
         {
            Core.crash("Received configuration ready event but configuration was null",Core.const_811);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Ready");
            var_250 = [];
            var_34 = var_97.getKey("connection.info.host","fused37-public-proxy-1.hotel.varoke.net");
            _loc2_ = var_97.getKey("connection.info.port","25001");
            _loc3_ = _loc2_.split(",");
            for each(_loc4_ in _loc3_)
            {
               var_250.push(parseInt(_loc4_.replace(" ","")));
            }
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Host: " + var_34);
            Logger.log("Connection Host: " + var_34);
            Logger.log("Connection Ports: " + var_250);
            Logger.log("Habbo Connection Info:" + _connection);
            var_1760 = true;
            if(var_1761)
            {
               nextPort();
            }
         }
      }
      
      public function messageReceived(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1339,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1323,param1 + " " + param2);
         if(false)
         {
            var_85 += ",R:" + param1;
         }
         else
         {
            var_85 = "R:" + param1;
         }
         if(false)
         {
            var_85 = var_85.substring(-150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",var_85);
      }
      
      private function nextPort() : void
      {
         ++var_335;
         if(var_335 >= var_250.length)
         {
            ++var_785;
            ErrorReportStorage.addDebugData("ConnectionRetry","Connection attempt " + var_785);
            if(var_785 > const_1607)
            {
               if(var_1759)
               {
                  return;
               }
               var_1759 = true;
               Core.error("Connection failed to host " + var_34 + " ports " + var_250,true,Core.const_622);
               return;
            }
            var_335 = 0;
         }
         _connection.timeout = var_785 * 5000;
         _connection.init(var_34,var_250[var_335]);
      }
      
      private function onTryNextPort(param1:TimerEvent) : void
      {
         var_1157.stop();
         nextPort();
      }
      
      public function get mode() : int
      {
         return var_733;
      }
      
      override public function dispose() : void
      {
         if(_connection)
         {
            _connection.dispose();
            _connection = null;
         }
         if(var_287)
         {
            var_287.release(new IIDCoreCommunicationManager());
            var_287 = null;
         }
         if(var_97)
         {
            var_97.release(new IIDHabboConfigurationManager());
            var_97 = null;
         }
         super.dispose();
      }
      
      public function initConnection(param1:String) : void
      {
         switch(param1)
         {
            case HabboConnectionType.const_273:
               if(var_97 == null)
               {
                  Core.crash("Tried to connect to proxy but configuration was null",Core.const_622);
                  return;
               }
               if(_connection == null)
               {
                  Core.crash("Tried to connect to proxy but connection was null",Core.const_622);
                  return;
               }
               var_1761 = true;
               if(var_1760)
               {
                  nextPort();
               }
               break;
            default:
               Logger.log("Unknown Habbo Connection Type: " + param1);
         }
      }
      
      public function habboWebLogin(param1:String, param2:String) : IHabboWebLogin
      {
         var _loc3_:String = "";
         _loc3_ = var_97.getKey("url.prefix",_loc3_);
         _loc3_ = _loc3_.replace("http://","");
         _loc3_ = _loc3_.replace("https://","");
         return new HabboWebLogin(param1,param2,_loc3_);
      }
      
      public function addHabboConnectionMessageEvent(param1:IMessageEvent) : void
      {
         return var_287.addConnectionMessageEvent(HabboConnectionType.const_273,param1);
      }
      
      public function connectionInit(param1:String, param2:int) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1154,param1);
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1293,String(param2));
      }
      
      public function messageSent(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1382,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1166,param1 + " " + param2);
         if(false)
         {
            var_85 += ",S:" + param1;
         }
         else
         {
            var_85 = "S:" + param1;
         }
         if(false)
         {
            var_85 = var_85.substring(-150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",var_85);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] IO Error: " + param1.text);
         switch(param1.type)
         {
            case IOErrorEvent.IO_ERROR:
               break;
            case IOErrorEvent.DISK_ERROR:
               break;
            case IOErrorEvent.NETWORK_ERROR:
               break;
            case IOErrorEvent.VERIFY_ERROR:
         }
         ErrorReportStorage.addDebugData("Communication IO Error","IOError " + param1.type + " on connect: " + param1.text + ". Port was " + var_250[var_335]);
         tryNextPort();
      }
      
      public function set mode(param1:int) : void
      {
         var_733 = param1;
      }
      
      private function onCoreCommunicationManagerInit(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:* = null;
         Logger.log("Habbo Communication Manager: Core Communication Manager found:: " + [param1,param2]);
         if(param2 != null)
         {
            var_287 = param2 as ICoreCommunicationManager;
            var_287.connectionStateListener = this;
            var_287.registerProtocolType(HabboProtocolType.const_950,WedgieProtocol);
            _connection = var_287.createConnection(HabboConnectionType.const_273,ConnectionType.const_989);
            _loc3_ = var_287.getProtocolInstanceOfType(HabboProtocolType.const_950);
            _connection.registerMessageClasses(var_1006);
            _connection.protocol = _loc3_;
            _connection.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
            _connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
            _connection.addEventListener(Event.CONNECT,onConnect);
         }
      }
      
      private function tryNextPort() : void
      {
         var_1157.addEventListener(TimerEvent.TIMER,onTryNextPort);
         var_1157.start();
      }
      
      private function onHabboConfigurationInit(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 != null)
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Received");
            var_97 = param2 as IHabboConfigurationManager;
            (var_97 as Component).events.addEventListener(HabboConfigurationEvent.INIT,onConfigurationReady);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config NOT received");
         }
      }
      
      public function getHabboMainConnection(param1:Function) : IConnection
      {
         return !!var_287 ? var_287.queueConnection(HabboConnectionType.const_273,param1) : null;
      }
   }
}
