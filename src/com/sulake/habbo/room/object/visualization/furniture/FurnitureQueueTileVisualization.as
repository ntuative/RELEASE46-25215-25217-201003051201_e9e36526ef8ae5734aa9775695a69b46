package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1027:int = 1;
      
      private static const const_1062:int = 3;
      
      private static const const_1029:int = 2;
      
      private static const const_1028:int = 15;
       
      
      private var var_747:int;
      
      private var var_237:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_237 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1029)
         {
            var_237 = new Array();
            var_237.push(const_1027);
            var_747 = const_1028;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_747 > 0)
         {
            --var_747;
         }
         if(var_747 == 0)
         {
            if(false)
            {
               super.setAnimation(var_237.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
