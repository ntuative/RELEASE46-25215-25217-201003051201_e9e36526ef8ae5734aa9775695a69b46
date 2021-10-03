package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1511:Array;
      
      private var var_1650:int;
      
      private var var_1651:int;
      
      private var var_1649:int;
      
      private var var_1648:int;
      
      private var _dayOffsets:Array;
      
      private var var_1647:int;
      
      private var var_1510:Array;
      
      public function MarketplaceItemStatsParser()
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
      
      public function get furniTypeId() : int
      {
         return var_1651;
      }
      
      public function get historyLength() : int
      {
         return var_1648;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1649;
      }
      
      public function get offerCount() : int
      {
         return var_1647;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1510;
      }
      
      public function get averagePrice() : int
      {
         return var_1650;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1650 = param1.readInteger();
         var_1647 = param1.readInteger();
         var_1648 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1511 = [];
         var_1510 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1511.push(param1.readInteger());
            var_1510.push(param1.readInteger());
            _loc3_++;
         }
         var_1649 = param1.readInteger();
         var_1651 = param1.readInteger();
         return true;
      }
   }
}
