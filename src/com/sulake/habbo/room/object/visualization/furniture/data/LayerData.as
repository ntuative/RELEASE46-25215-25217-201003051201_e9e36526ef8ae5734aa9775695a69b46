package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_405:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_409:int = 0;
      
      public static const const_920:int = 2;
      
      public static const const_899:int = 1;
      
      public static const const_559:Boolean = false;
      
      public static const const_497:String = "";
      
      public static const const_466:int = 0;
      
      public static const const_381:int = 0;
      
      public static const const_431:int = 0;
       
      
      private var var_1888:int = 0;
      
      private var var_1712:String = "";
      
      private var var_1471:int = 0;
      
      private var var_1889:int = 0;
      
      private var var_1887:Number = 0;
      
      private var var_1823:int = 255;
      
      private var var_1890:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1888;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1471 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1887;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1889 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1888 = param1;
      }
      
      public function get tag() : String
      {
         return var_1712;
      }
      
      public function get alpha() : int
      {
         return var_1823;
      }
      
      public function get ink() : int
      {
         return var_1471;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1887 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1889;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1890 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1890;
      }
      
      public function set tag(param1:String) : void
      {
         var_1712 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1823 = param1;
      }
   }
}
