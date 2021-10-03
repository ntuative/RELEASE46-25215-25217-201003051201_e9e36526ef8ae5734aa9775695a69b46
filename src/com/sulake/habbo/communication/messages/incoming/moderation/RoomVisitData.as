package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_649:String;
      
      private var var_1618:int;
      
      private var var_1579:Boolean;
      
      private var _roomId:int;
      
      private var var_1617:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1579 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_649 = param1.readString();
         var_1617 = param1.readInteger();
         var_1618 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1579;
      }
      
      public function get roomName() : String
      {
         return var_649;
      }
      
      public function get enterMinute() : int
      {
         return var_1618;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1617;
      }
   }
}
