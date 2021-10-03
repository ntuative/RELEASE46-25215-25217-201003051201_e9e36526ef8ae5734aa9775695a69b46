package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1895:Array;
      
      private var var_1893:String;
      
      private var var_1894:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1893 = param1;
         var_1895 = param2;
         var_1894 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1893;
      }
      
      public function get yieldList() : Array
      {
         return var_1895;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1894;
      }
   }
}
