package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.tracking.LatencyPingResponseMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingReportMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingRequestMessageComposer;
   import com.sulake.habbo.communication.messages.parser.tracking.LatencyPingResponseMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LatencyTracker
   {
       
      
      private var var_150:Array;
      
      private var var_33:Boolean = false;
      
      private var var_1434:int = 0;
      
      private var var_1433:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_461:Map;
      
      private var var_1802:int = 0;
      
      private var var_1436:int = 0;
      
      private var var_175:IHabboConfigurationManager;
      
      private var var_1177:int = 0;
      
      private var _connection:IConnection;
      
      private var var_1435:int = 0;
      
      public function LatencyTracker()
      {
         super();
      }
      
      public function update(param1:uint) : void
      {
         if(!var_33)
         {
            return;
         }
         if(getTimer() - var_1434 > var_1433)
         {
            testLatency();
         }
      }
      
      private function testLatency() : void
      {
         var_1434 = getTimer();
         var_461.add(var_1177,var_1434);
         _connection.send(new LatencyPingRequestMessageComposer(var_1177));
         ++var_1177;
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function init() : void
      {
         if(var_175 == null || _communication == null || _connection == null)
         {
            return;
         }
         var_1433 = int(var_175.getKey("latencytest.interval"));
         var_1435 = int(var_175.getKey("latencytest.report.index"));
         var_1802 = int(var_175.getKey("latencytest.report.delta"));
         _communication.addHabboConnectionMessageEvent(new LatencyPingResponseMessageEvent(onPingResponse));
         if(var_1433 < 1)
         {
            return;
         }
         var_461 = new Map();
         var_150 = new Array();
         var_33 = true;
      }
      
      private function onPingResponse(param1:IMessageEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         if(var_461 == null || var_150 == null)
         {
            return;
         }
         var _loc2_:LatencyPingResponseMessageParser = (param1 as LatencyPingResponseMessageEvent).getParser();
         var _loc3_:int = var_461.getValue(_loc2_.requestId);
         var_461.remove(_loc2_.requestId);
         var _loc4_:int = getTimer() - _loc3_;
         var_150.push(_loc4_);
         if(var_150.length == var_1435 && var_1435 > 0)
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            _loc8_ = 0;
            while(_loc8_ < var_150.length)
            {
               _loc5_ += var_150[_loc8_];
               _loc8_++;
            }
            _loc9_ = _loc5_ / 0;
            _loc8_ = 0;
            while(_loc8_ < var_150.length)
            {
               if(var_150[_loc8_] < _loc9_ * 2)
               {
                  _loc6_ += var_150[_loc8_];
                  _loc7_++;
               }
               _loc8_++;
            }
            if(_loc7_ == 0)
            {
               var_150 = [];
               return;
            }
            _loc10_ = _loc6_ / _loc7_;
            if(Math.abs(_loc9_ - var_1436) > var_1802 || var_1436 == 0)
            {
               var_1436 = _loc9_;
               _loc11_ = new LatencyPingReportMessageComposer(_loc9_,_loc10_,var_150.length);
               _connection.send(_loc11_);
            }
            var_150 = [];
         }
      }
      
      public function dispose() : void
      {
         var_33 = false;
         var_175 = null;
         _communication = null;
         _connection = null;
         if(var_461 != null)
         {
            var_461.dispose();
            var_461 = null;
         }
         var_150 = null;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_175 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
