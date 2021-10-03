package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2065:Class;
      
      private var var_2064:Class;
      
      private var var_2063:String;
      
      private var var_1277:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2063 = param1;
         var_2064 = param2;
         var_2065 = param3;
         if(rest == null)
         {
            var_1277 = new Array();
         }
         else
         {
            var_1277 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2065;
      }
      
      public function get assetClass() : Class
      {
         return var_2064;
      }
      
      public function get mimeType() : String
      {
         return var_2063;
      }
      
      public function get fileTypes() : Array
      {
         return var_1277;
      }
   }
}
