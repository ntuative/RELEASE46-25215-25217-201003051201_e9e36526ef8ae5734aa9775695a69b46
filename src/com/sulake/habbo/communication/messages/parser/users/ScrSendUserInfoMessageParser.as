package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2246:int;
      
      private var var_1256:String;
      
      private var var_2247:int;
      
      private var var_2244:int;
      
      private var var_2243:int;
      
      private var var_2245:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1256;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2245;
      }
      
      public function get responseType() : int
      {
         return var_2244;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2247;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1256 = param1.readString();
         var_2247 = param1.readInteger();
         var_2246 = param1.readInteger();
         var_2243 = param1.readInteger();
         var_2244 = param1.readInteger();
         var_2245 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_2246;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2243;
      }
   }
}
