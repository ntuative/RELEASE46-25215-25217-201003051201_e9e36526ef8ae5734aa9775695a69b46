package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1021:PetData;
      
      private var var_1483:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1483 = param1.readBoolean();
         var_1021 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1483 + ", " + var_1021.id + ", " + var_1021.name + ", " + pet.figure + ", " + var_1021.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1483;
      }
      
      public function get pet() : PetData
      {
         return var_1021;
      }
   }
}
