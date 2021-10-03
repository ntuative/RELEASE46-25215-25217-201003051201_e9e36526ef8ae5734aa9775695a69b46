package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_604:String;
      
      private var var_1676:int;
      
      private var var_2214:String;
      
      private var var_1071:int;
      
      private var var_1113:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1113;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1113 = param1.readInteger();
         var_2214 = param1.readString();
         var_1676 = param1.readInteger();
         var_604 = param1.readString();
         var_1071 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2214;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_604;
      }
      
      public function get petType() : int
      {
         return var_1071;
      }
      
      public function get level() : int
      {
         return var_1676;
      }
   }
}
