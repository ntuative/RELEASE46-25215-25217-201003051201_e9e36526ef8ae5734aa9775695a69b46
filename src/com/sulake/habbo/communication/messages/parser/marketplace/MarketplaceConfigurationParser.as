package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1602:int;
      
      private var var_1376:int;
      
      private var var_1601:int;
      
      private var var_1598:int;
      
      private var var_1599:int;
      
      private var var_1377:int;
      
      private var var_1595:int;
      
      private var var_1597:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1602;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1376;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1595;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1598;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1599;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1377;
      }
      
      public function get commission() : int
      {
         return var_1601;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1597 = param1.readBoolean();
         var_1601 = param1.readInteger();
         var_1376 = param1.readInteger();
         var_1377 = param1.readInteger();
         var_1598 = param1.readInteger();
         var_1602 = param1.readInteger();
         var_1599 = param1.readInteger();
         var_1595 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1597;
      }
   }
}
