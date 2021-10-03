package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HelloMessageParser implements IMessageParser
   {
       
      
      protected var var_82:int;
      
      public function HelloMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get x() : int
      {
         return var_82;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_82 = 200;
         return true;
      }
   }
}