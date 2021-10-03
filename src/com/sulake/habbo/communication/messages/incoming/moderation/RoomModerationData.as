package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_110:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1962:int;
      
      private var var_378:int;
      
      private var var_654:RoomData;
      
      private var var_1678:int;
      
      private var _ownerName:String;
      
      private var var_2212:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_378 = param1.readInteger();
         var_1962 = param1.readInteger();
         var_2212 = param1.readBoolean();
         var_1678 = param1.readInteger();
         _ownerName = param1.readString();
         var_110 = new RoomData(param1);
         var_654 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1962;
      }
      
      public function get event() : RoomData
      {
         return var_654;
      }
      
      public function get room() : RoomData
      {
         return var_110;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_110 != null)
         {
            var_110.dispose();
            var_110 = null;
         }
         if(var_654 != null)
         {
            var_654.dispose();
            var_654 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_378;
      }
      
      public function get ownerId() : int
      {
         return var_1678;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2212;
      }
   }
}
