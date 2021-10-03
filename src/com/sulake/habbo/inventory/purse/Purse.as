package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2134:Boolean = false;
      
      private var var_2132:int = 0;
      
      private var var_2003:int = 0;
      
      private var var_2133:int = 0;
      
      private var var_1486:int = 0;
      
      private var var_2002:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1486 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2132;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2134;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2134 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2132 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_2003 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1486;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2133 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_2003;
      }
      
      public function get pixelBalance() : int
      {
         return var_2133;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_2002 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_2002;
      }
   }
}
