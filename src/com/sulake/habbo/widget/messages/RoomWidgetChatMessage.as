package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_106:int = 0;
      
      public static const const_128:int = 1;
      
      public static const const_97:int = 2;
      
      public static const const_547:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1302:int = 0;
      
      private var var_2069:String = "";
      
      private var var_189:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_189 = param2;
         var_1302 = param3;
         var_2069 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_2069;
      }
      
      public function get chatType() : int
      {
         return var_1302;
      }
      
      public function get text() : String
      {
         return var_189;
      }
   }
}
