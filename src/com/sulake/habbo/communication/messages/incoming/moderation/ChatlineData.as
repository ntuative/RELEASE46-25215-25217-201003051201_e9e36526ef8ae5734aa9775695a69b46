package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1576:String;
      
      private var var_2208:int;
      
      private var var_2207:int;
      
      private var var_2206:int;
      
      private var var_2205:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2208 = param1.readInteger();
         var_2206 = param1.readInteger();
         var_2207 = param1.readInteger();
         var_2205 = param1.readString();
         var_1576 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1576;
      }
      
      public function get hour() : int
      {
         return var_2208;
      }
      
      public function get minute() : int
      {
         return var_2206;
      }
      
      public function get chatterName() : String
      {
         return var_2205;
      }
      
      public function get chatterId() : int
      {
         return var_2207;
      }
   }
}
