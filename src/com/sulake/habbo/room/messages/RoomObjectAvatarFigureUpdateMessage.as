package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1953:String;
      
      private var var_604:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_604 = param1;
         var_1953 = param2;
      }
      
      public function get race() : String
      {
         return var_1953;
      }
      
      public function get figure() : String
      {
         return var_604;
      }
   }
}
