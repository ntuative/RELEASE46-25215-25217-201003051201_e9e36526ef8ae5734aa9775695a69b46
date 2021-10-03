package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1271:int;
      
      private var var_1963:int = -1;
      
      private var var_363:int;
      
      private var var_1650:int;
      
      private var var_1839:int;
      
      private var _offerId:int;
      
      private var var_1270:int;
      
      private var var_1838:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1838 = param2;
         var_1839 = param3;
         var_1271 = param4;
         var_363 = param5;
         var_1963 = param6;
         var_1650 = param7;
         var_1270 = param8;
      }
      
      public function get status() : int
      {
         return var_363;
      }
      
      public function get price() : int
      {
         return var_1271;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1963;
      }
      
      public function get offerCount() : int
      {
         return var_1270;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1839;
      }
      
      public function get averagePrice() : int
      {
         return var_1650;
      }
      
      public function get furniId() : int
      {
         return var_1838;
      }
   }
}
