package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1174:int = 0;
       
      
      private var _updateID:int = 0;
      
      private var var_1827:Boolean = false;
      
      private var var_1824:String = "normal";
      
      private var var_1251:String = "";
      
      private var _instanceId:int = 0;
      
      private var var_343:Boolean = true;
      
      private var _height:int = 0;
      
      private var var_1823:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_1001:Boolean = false;
      
      private var var_1002:Boolean = false;
      
      private var var_1826:Boolean = false;
      
      private var _offset:Point;
      
      private var var_1825:Boolean = true;
      
      private var var_1068:Number = 0;
      
      private var _width:int = 0;
      
      private var var_1712:String = "";
      
      private var var_883:BitmapData = null;
      
      public function RoomObjectSprite()
      {
         _offset = new Point(0,0);
         super();
         _instanceId = var_1174++;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         var_1002 = param1;
         ++_updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1826 = param1;
         ++_updateID;
      }
      
      public function dispose() : void
      {
         var_883 = null;
         _width = 0;
         _height = 0;
      }
      
      public function get offsetX() : int
      {
         return _offset.x;
      }
      
      public function get offsetY() : int
      {
         return _offset.y;
      }
      
      public function get height() : int
      {
         return _height;
      }
      
      public function set blendMode(param1:String) : void
      {
         var_1824 = param1;
         ++_updateID;
      }
      
      public function set tag(param1:String) : void
      {
         var_1712 = param1;
         ++_updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1251 = param1;
         ++_updateID;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1827;
      }
      
      public function set offsetX(param1:int) : void
      {
         _offset.x = param1;
         ++_updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         _offset.y = param1;
         ++_updateID;
      }
      
      public function get relativeDepth() : Number
      {
         return var_1068;
      }
      
      public function get color() : int
      {
         return _color;
      }
      
      public function get alpha() : int
      {
         return var_1823;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         var_1825 = param1;
         ++_updateID;
      }
      
      public function get visible() : Boolean
      {
         return var_343;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1827 = param1;
         ++_updateID;
      }
      
      public function get flipH() : Boolean
      {
         return var_1001;
      }
      
      public function get flipV() : Boolean
      {
         return var_1002;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1826;
      }
      
      public function get blendMode() : String
      {
         return var_1824;
      }
      
      public function get instanceId() : int
      {
         return _instanceId;
      }
      
      public function get tag() : String
      {
         return var_1712;
      }
      
      public function get assetName() : String
      {
         return var_1251;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         var_1068 = param1;
         ++_updateID;
      }
      
      public function get capturesMouse() : Boolean
      {
         return var_1825;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         var_1823 = param1;
         ++_updateID;
      }
      
      public function get width() : int
      {
         return _width;
      }
      
      public function get updateId() : int
      {
         return _updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         _color = param1;
         ++_updateID;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            _width = param1.width;
            _height = param1.height;
         }
         var_883 = param1;
         ++_updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_343 = param1;
         ++_updateID;
      }
      
      public function get asset() : BitmapData
      {
         return var_883;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         var_1001 = param1;
         ++_updateID;
      }
   }
}
