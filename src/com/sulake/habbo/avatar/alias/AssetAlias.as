package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_1002:Boolean;
      
      private var _name:String;
      
      private var var_1745:String;
      
      private var var_1001:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_1745 = String(param1.@link);
         var_1001 = Boolean(parseInt(param1.@fliph));
         var_1002 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_1001;
      }
      
      public function get flipV() : Boolean
      {
         return var_1002;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_1745;
      }
   }
}
