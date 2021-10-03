package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1479:int = 2;
      
      public static const const_307:int = 4;
      
      public static const const_1229:int = 1;
      
      public static const const_1294:int = 3;
       
      
      private var var_945:int = 0;
      
      private var var_760:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_945;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_945 = param1.readInteger();
         if(var_945 == 3)
         {
            var_760 = param1.readString();
         }
         else
         {
            var_760 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_945 = 0;
         var_760 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_760;
      }
   }
}
