package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1683:int;
      
      private var var_604:String;
      
      private var var_1676:int;
      
      private var var_1681:int;
      
      private var var_1684:int;
      
      private var var_1682:int;
      
      private var _nutrition:int;
      
      private var var_1113:int;
      
      private var var_1677:int;
      
      private var var_1680:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1678:int;
      
      private var var_1679:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1676;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1682;
      }
      
      public function flush() : Boolean
      {
         var_1113 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_1677;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1680;
      }
      
      public function get maxNutrition() : int
      {
         return var_1679;
      }
      
      public function get figure() : String
      {
         return var_604;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1681;
      }
      
      public function get petId() : int
      {
         return var_1113;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1113 = param1.readInteger();
         _name = param1.readString();
         var_1676 = param1.readInteger();
         var_1677 = param1.readInteger();
         var_1684 = param1.readInteger();
         var_1680 = param1.readInteger();
         _energy = param1.readInteger();
         var_1682 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1679 = param1.readInteger();
         var_604 = param1.readString();
         var_1681 = param1.readInteger();
         var_1678 = param1.readInteger();
         var_1683 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1684;
      }
      
      public function get ownerId() : int
      {
         return var_1678;
      }
      
      public function get age() : int
      {
         return var_1683;
      }
   }
}
