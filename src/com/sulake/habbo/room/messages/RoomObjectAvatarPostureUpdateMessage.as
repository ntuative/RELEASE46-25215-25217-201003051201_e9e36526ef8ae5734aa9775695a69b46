package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2032:String;
      
      private var var_760:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2032 = param1;
         var_760 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2032;
      }
      
      public function get parameter() : String
      {
         return var_760;
      }
   }
}
