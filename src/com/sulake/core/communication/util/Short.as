package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_722:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_722 = new ByteArray();
         var_722.writeShort(param1);
         var_722.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_722.position = 0;
         if(false)
         {
            _loc1_ = var_722.readShort();
            var_722.position = 0;
         }
         return _loc1_;
      }
   }
}
