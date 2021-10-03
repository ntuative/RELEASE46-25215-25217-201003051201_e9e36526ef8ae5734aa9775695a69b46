package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1660:Number;
      
      private var var_540:Number = 0;
      
      private var var_1661:Number;
      
      private var var_539:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1660 = param1;
         var_1661 = param2;
      }
      
      public function update() : void
      {
         var_539 += var_1661;
         var_540 += var_539;
         if(var_540 > 0)
         {
            var_540 = 0;
            var_539 = var_1660 * -1 * var_539;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_539 = param1;
         var_540 = 0;
      }
      
      public function get location() : Number
      {
         return var_540;
      }
   }
}
