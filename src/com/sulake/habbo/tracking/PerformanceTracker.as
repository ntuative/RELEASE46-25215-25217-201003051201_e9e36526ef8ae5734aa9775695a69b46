package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1466:GarbageMonitor = null;
      
      private var var_1120:int = 0;
      
      private var var_1168:Boolean = false;
      
      private var var_1778:String = "";
      
      private var var_1467:String = "";
      
      private var var_345:Number = 0;
      
      private var var_1226:int = 10;
      
      private var var_2302:Array;
      
      private var var_618:int = 0;
      
      private var var_1227:int = 60;
      
      private var var_1012:int = 0;
      
      private var var_1011:int = 0;
      
      private var var_1779:String = "";
      
      private var var_1938:Number = 0;
      
      private var var_1224:int = 1000;
      
      private var var_1936:Boolean = true;
      
      private var var_1937:Number = 0.15;
      
      private var var_175:IHabboConfigurationManager = null;
      
      private var var_1784:String = "";
      
      private var var_1225:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2302 = [];
         super();
         var_1467 = Capabilities.version;
         var_1778 = Capabilities.os;
         var_1168 = Capabilities.isDebugger;
         var_1784 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1466 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1120 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1466.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1466.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_345;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1227 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1467;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1011;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1224)
         {
            ++var_1012;
            _loc3_ = true;
         }
         else
         {
            ++var_618;
            if(var_618 <= 1)
            {
               var_345 = param1;
            }
            else
            {
               _loc4_ = Number(var_618);
               var_345 = var_345 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1120 > var_1227 * 1000 && var_1225 < var_1226)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_345);
            _loc5_ = true;
            if(var_1936 && var_1225 > 0)
            {
               _loc6_ = differenceInPercents(var_1938,var_345);
               if(_loc6_ < var_1937)
               {
                  _loc5_ = false;
               }
            }
            var_1120 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_1938 = var_345;
               if(sendReport())
               {
                  ++var_1225;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1226 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1224 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1784,var_1467,var_1778,var_1779,var_1168,_loc4_,_loc3_,var_1011,var_345,var_1012);
            _connection.send(_loc1_);
            var_1011 = 0;
            var_345 = 0;
            var_618 = 0;
            var_1012 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_175 = param1;
         var_1227 = int(var_175.getKey("performancetest.interval","60"));
         var_1224 = int(var_175.getKey("performancetest.slowupdatelimit","1000"));
         var_1226 = int(var_175.getKey("performancetest.reportlimit","10"));
         var_1937 = Number(var_175.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_1936 = Boolean(int(var_175.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
