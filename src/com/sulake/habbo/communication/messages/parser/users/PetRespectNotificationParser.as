package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1681:int;
      
      private var var_1186:PetData;
      
      private var var_2004:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1681;
      }
      
      public function get petData() : PetData
      {
         return var_1186;
      }
      
      public function flush() : Boolean
      {
         var_1186 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_2004;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1681 = param1.readInteger();
         var_2004 = param1.readInteger();
         var_1186 = new PetData(param1);
         return true;
      }
   }
}
