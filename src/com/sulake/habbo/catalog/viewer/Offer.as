package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_1019:String = "price_type_none";
      
      public static const const_382:String = "pricing_model_multi";
      
      public static const const_348:String = "price_type_credits";
      
      public static const const_474:String = "price_type_credits_and_pixels";
      
      public static const const_356:String = "pricing_model_bundle";
      
      public static const const_359:String = "pricing_model_single";
      
      public static const const_675:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1386:String = "pricing_model_unknown";
      
      public static const const_378:String = "price_type_pixels";
       
      
      private var var_914:int;
      
      private var _offerId:int;
      
      private var var_913:int;
      
      private var var_429:String;
      
      private var var_609:String;
      
      private var var_2238:int;
      
      private var var_622:ICatalogPage;
      
      private var var_1352:String;
      
      private var var_430:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1352 = param1.localizationId;
         var_914 = param1.priceInCredits;
         var_913 = param1.priceInPixels;
         var_622 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_429;
      }
      
      public function get page() : ICatalogPage
      {
         return var_622;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2238 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_430;
      }
      
      public function get localizationId() : String
      {
         return var_1352;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_913;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1352 = "";
         var_914 = 0;
         var_913 = 0;
         var_622 = null;
         if(var_430 != null)
         {
            var_430.dispose();
            var_430 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_609;
      }
      
      public function get previewCallbackId() : int
      {
         return var_2238;
      }
      
      public function get priceInCredits() : int
      {
         return var_914;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_429 = const_359;
            }
            else
            {
               var_429 = const_382;
            }
         }
         else if(param1.length > 1)
         {
            var_429 = const_356;
         }
         else
         {
            var_429 = const_1386;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_429)
         {
            case const_359:
               var_430 = new SingleProductContainer(this,param1);
               break;
            case const_382:
               var_430 = new MultiProductContainer(this,param1);
               break;
            case const_356:
               var_430 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_429);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_914 > 0 && var_913 > 0)
         {
            var_609 = const_474;
         }
         else if(var_914 > 0)
         {
            var_609 = const_348;
         }
         else if(var_913 > 0)
         {
            var_609 = const_378;
         }
         else
         {
            var_609 = const_1019;
         }
      }
   }
}
