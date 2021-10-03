package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_542:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_499:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_542);
         var_499 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_499;
      }
   }
}
