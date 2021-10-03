package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1062:String;
      
      private var var_1728:int;
      
      private var var_2076:int;
      
      private var var_1514:int;
      
      private var var_2072:int;
      
      private var _category:int;
      
      private var var_2366:int;
      
      private var var_2075:int;
      
      private var var_2073:int;
      
      private var var_2074:int;
      
      private var var_2078:int;
      
      private var var_2077:Boolean;
      
      private var var_1363:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1728 = param1;
         var_1062 = param2;
         var_2076 = param3;
         var_2074 = param4;
         _category = param5;
         var_1363 = param6;
         var_1514 = param7;
         var_2073 = param8;
         var_2075 = param9;
         var_2078 = param10;
         var_2072 = param11;
         var_2077 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2074;
      }
      
      public function get extra() : int
      {
         return var_1514;
      }
      
      public function get stuffData() : String
      {
         return var_1363;
      }
      
      public function get groupable() : Boolean
      {
         return var_2077;
      }
      
      public function get creationMonth() : int
      {
         return var_2078;
      }
      
      public function get roomItemID() : int
      {
         return var_2076;
      }
      
      public function get itemType() : String
      {
         return var_1062;
      }
      
      public function get itemID() : int
      {
         return var_1728;
      }
      
      public function get songID() : int
      {
         return var_1514;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2073;
      }
      
      public function get creationYear() : int
      {
         return var_2072;
      }
      
      public function get creationDay() : int
      {
         return var_2075;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
