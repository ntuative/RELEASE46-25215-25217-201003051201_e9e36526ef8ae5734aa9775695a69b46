package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2003:int = 0;
      
      private var var_2001:int = 0;
      
      private var var_1877:int = 0;
      
      private var var_2002:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_2001;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2001 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_2003 = param1;
      }
      
      public function get credits() : int
      {
         return var_1877;
      }
      
      public function get clubDays() : int
      {
         return var_2003;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_2002 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1877 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_2002;
      }
   }
}
