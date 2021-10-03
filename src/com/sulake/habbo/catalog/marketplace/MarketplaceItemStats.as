package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1511:Array;
      
      private var var_1650:int;
      
      private var var_1651:int;
      
      private var var_1648:int;
      
      private var var_1649:int;
      
      private var _dayOffsets:Array;
      
      private var var_1647:int;
      
      private var var_1510:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1511;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1511 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1651;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1510 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1650 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1648;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1649;
      }
      
      public function get offerCount() : int
      {
         return var_1647;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1647 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1510;
      }
      
      public function get averagePrice() : int
      {
         return var_1650;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1649 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1648 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1651 = param1;
      }
   }
}
