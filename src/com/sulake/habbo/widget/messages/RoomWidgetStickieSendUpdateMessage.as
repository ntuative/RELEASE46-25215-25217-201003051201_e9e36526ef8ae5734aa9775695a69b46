package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_437:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_526:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_740:String;
      
      private var var_152:int;
      
      private var var_189:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_152 = param2;
         var_189 = param3;
         var_740 = param4;
      }
      
      public function get objectId() : int
      {
         return var_152;
      }
      
      public function get text() : String
      {
         return var_189;
      }
      
      public function get colorHex() : String
      {
         return var_740;
      }
   }
}
