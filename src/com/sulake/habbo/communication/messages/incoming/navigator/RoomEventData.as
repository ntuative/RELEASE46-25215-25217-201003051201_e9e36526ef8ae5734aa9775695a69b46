package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_2040:String;
      
      private var var_378:int;
      
      private var var_2038:String;
      
      private var var_2039:String;
      
      private var var_2036:int;
      
      private var var_2041:String;
      
      private var var_2037:int;
      
      private var var_615:Array;
      
      private var var_963:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_615 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_963 = false;
            return;
         }
         this.var_963 = true;
         var_2036 = int(_loc2_);
         var_2038 = param1.readString();
         var_378 = int(param1.readString());
         var_2037 = param1.readInteger();
         var_2040 = param1.readString();
         var_2039 = param1.readString();
         var_2041 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_615.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2037;
      }
      
      public function get eventName() : String
      {
         return var_2040;
      }
      
      public function get eventDescription() : String
      {
         return var_2039;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2038;
      }
      
      public function get tags() : Array
      {
         return var_615;
      }
      
      public function get creationTime() : String
      {
         return var_2041;
      }
      
      public function get exists() : Boolean
      {
         return var_963;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2036;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_615 = null;
      }
      
      public function get flatId() : int
      {
         return var_378;
      }
   }
}
