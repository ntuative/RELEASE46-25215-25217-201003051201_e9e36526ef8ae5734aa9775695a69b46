package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_1844:Number = 0;
      
      private var var_1686:Number = 0;
      
      private var var_1685:Number = 0;
      
      private var var_1843:Number = 0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1686 = param1;
         var_1685 = param2;
         var_1844 = param3;
         var_1843 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1686;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1844;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1685;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1843;
      }
   }
}
