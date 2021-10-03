package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_196:String = "e";
      
      public static const const_76:String = "i";
      
      public static const const_75:String = "s";
       
      
      private var var_941:String;
      
      private var var_1116:String;
      
      private var var_1118:int;
      
      private var var_2210:int;
      
      private var var_942:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1116 = param1.readString();
         var_2210 = param1.readInteger();
         var_941 = param1.readString();
         var_942 = param1.readInteger();
         var_1118 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_942;
      }
      
      public function get productType() : String
      {
         return var_1116;
      }
      
      public function get expiration() : int
      {
         return var_1118;
      }
      
      public function get furniClassId() : int
      {
         return var_2210;
      }
      
      public function get extraParam() : String
      {
         return var_941;
      }
   }
}
