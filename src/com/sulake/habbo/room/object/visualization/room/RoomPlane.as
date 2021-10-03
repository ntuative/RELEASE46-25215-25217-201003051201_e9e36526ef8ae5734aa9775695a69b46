package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.utils.PlaneBitmapData;
   import com.sulake.habbo.room.object.visualization.room.utils.Randomizer;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.BlendMode;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomPlane
   {
      
      public static const const_178:int = 2;
      
      public static const const_1532:int = 0;
      
      public static const const_176:int = 3;
      
      public static const const_236:int = 1;
       
      
      private var var_460:Vector3d = null;
      
      private var var_652:Array;
      
      private var var_278:Vector3d = null;
      
      private var var_168:Map = null;
      
      private var _bitmapData:BitmapData = null;
      
      private var _type:int = 0;
      
      private var var_218:PlaneBitmapData = null;
      
      private var var_653:IPlaneRasterizer = null;
      
      private var var_790:Vector3d = null;
      
      private var _height:Number = 0;
      
      private var var_122:Vector3d = null;
      
      private var var_104:Vector3d = null;
      
      private var var_79:Vector3d = null;
      
      private var var_105:Vector3d = null;
      
      private var var_1788:Number = 0;
      
      private var var_187:Array;
      
      private var var_279:Vector3d = null;
      
      private var var_559:PlaneMaskManager = null;
      
      private var _isVisible:Boolean = true;
      
      private var _color:uint = 0;
      
      private var var_1791:Number = 0;
      
      private var var_1790:Number = 0;
      
      private var var_1789:int = 0;
      
      private var var_149:Boolean = false;
      
      private var var_73:Vector3d = null;
      
      private var _disposed:Boolean = false;
      
      private var var_55:BitmapData = null;
      
      private var var_1786:Number = 0;
      
      private var var_1787:Number = 0;
      
      private var _offset:Point = null;
      
      private var var_1170:Array;
      
      private var _id:String = null;
      
      private var var_986:Array;
      
      private var var_1426:Boolean = true;
      
      private var _width:Number = 0;
      
      private var var_169:BitmapData = null;
      
      private var var_791:Boolean = false;
      
      private var var_252:Array;
      
      public function RoomPlane(param1:IVector3d, param2:IVector3d, param3:IVector3d, param4:IVector3d, param5:int, param6:Boolean, param7:Array, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0)
      {
         var _loc13_:int = 0;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var_1170 = [];
         var_187 = [];
         var_252 = [];
         var_652 = [];
         var_986 = [];
         super();
         var_1789 = param8;
         var_790 = new Vector3d();
         var_790.assign(param1);
         var_73 = new Vector3d();
         var_73.assign(param2);
         var_279 = new Vector3d();
         var_279.assign(param3);
         var_278 = new Vector3d();
         var_278.assign(param4);
         var_460 = Vector3d.crossProduct(var_279,var_278);
         if(false)
         {
            var_460.mul(Infinity);
         }
         if(param7 != null)
         {
            _loc13_ = 0;
            while(_loc13_ < param7.length)
            {
               _loc14_ = param7[_loc13_] as IVector3d;
               if(_loc14_ != null)
               {
                  _loc15_ = new Vector3d();
                  _loc15_.assign(_loc14_);
                  var_1170.push(_loc14_);
               }
               _loc13_++;
            }
         }
         _offset = new Point();
         _type = param5;
         var_168 = new Map();
         var_122 = new Vector3d();
         var_104 = new Vector3d();
         var_79 = new Vector3d();
         var_105 = new Vector3d();
         var_1786 = param9;
         var_1787 = param10;
         var_1791 = param11;
         var_1790 = param12;
         var_791 = param6;
      }
      
      public function resetRectangleMasks() : void
      {
         if(var_791)
         {
            if(false)
            {
               return;
            }
            var_149 = true;
            var_252 = [];
         }
      }
      
      private function resetTextureCache(param1:BitmapData = null) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         if(var_168 != null)
         {
            _loc2_ = 0;
            while(_loc2_ < var_168.length)
            {
               _loc3_ = var_168.getWithIndex(_loc2_) as PlaneBitmapData;
               if(_loc3_ != null)
               {
                  if(_loc3_.bitmap != null && _loc3_.bitmap != param1)
                  {
                     _loc3_.bitmap.dispose();
                  }
                  _loc3_.dispose();
               }
               _loc2_++;
            }
            var_168.reset();
         }
         var_218 = null;
      }
      
      public function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(_bitmapData != null)
         {
            _bitmapData.dispose();
            _bitmapData = null;
         }
         if(var_168 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < var_168.length)
            {
               _loc2_ = var_168.getWithIndex(_loc1_) as PlaneBitmapData;
               if(_loc2_ != null)
               {
                  if(_loc2_.bitmap != null)
                  {
                     _loc2_.bitmap.dispose();
                  }
                  _loc2_.dispose();
               }
               _loc1_++;
            }
            var_168.dispose();
            var_168 = null;
         }
         var_218 = null;
         var_73 = null;
         var_790 = null;
         var_279 = null;
         var_278 = null;
         var_460 = null;
         var_653 = null;
         var_122 = null;
         var_104 = null;
         var_79 = null;
         var_105 = null;
         var_187 = null;
         var_252 = null;
         if(var_55 != null)
         {
            var_55.dispose();
            var_55 = null;
         }
         if(var_169 != null)
         {
            var_169.dispose();
            var_169 = null;
         }
         _disposed = true;
      }
      
      public function get hasTexture() : Boolean
      {
         return var_1426;
      }
      
      private function addOutlines(param1:PlaneBitmapData) : void
      {
      }
      
      private function cacheTexture(param1:String, param2:PlaneBitmapData) : Boolean
      {
         var _loc3_:PlaneBitmapData = var_168.remove(param1) as PlaneBitmapData;
         if(_loc3_ != null)
         {
            if(param2 != null && param2.bitmap != _loc3_.bitmap)
            {
               _loc3_.bitmap.dispose();
            }
            _loc3_.dispose();
         }
         var_218 = param2;
         var_168.add(param1,param2);
         return true;
      }
      
      public function addBitmapMask(param1:String, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         if(var_791)
         {
            _loc4_ = null;
            _loc5_ = 0;
            while(_loc5_ < var_187.length)
            {
               _loc4_ = var_187[_loc5_] as RoomPlaneBitmapMask;
               if(_loc4_ != null)
               {
                  if(_loc4_.type == param1 && _loc4_.leftSideLoc == param2 && _loc4_.rightSideLoc == param3)
                  {
                     return false;
                  }
               }
               _loc5_++;
            }
            _loc4_ = new RoomPlaneBitmapMask(param1,param2,param3);
            var_187.push(_loc4_);
            var_149 = true;
            return true;
         }
         return false;
      }
      
      public function set rasterizer(param1:IPlaneRasterizer) : void
      {
         var_653 = param1;
      }
      
      public function set hasTexture(param1:Boolean) : void
      {
         var_1426 = param1;
      }
      
      private function draw(param1:BitmapData, param2:Matrix) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(_bitmapData != null)
         {
            if(param2.a == 1 && param2.d == 1 && param2.c == 0 && param2.b != 0 && Math.abs(param2.b) <= 1 && (_type == const_236 || _type == const_176))
            {
               _loc3_ = 0;
               _loc4_ = 0;
               _loc5_ = 0;
               _loc6_ = 0;
               if(param2.b > 0)
               {
                  ++param2.ty;
               }
               _loc7_ = 0;
               while(_loc3_ < param1.width)
               {
                  _loc3_++;
                  _loc5_ += Math.abs(param2.b);
                  if(_loc5_ >= 1)
                  {
                     _bitmapData.copyPixels(param1,new Rectangle(_loc4_ + _loc6_,0,_loc3_ - _loc4_,param1.height),new Point(param2.tx + _loc4_,param2.ty + _loc7_),null,null,true);
                     _loc4_ = _loc3_;
                     if(param2.b > 0)
                     {
                        _loc7_++;
                     }
                     else
                     {
                        _loc7_--;
                     }
                     _loc5_ = 0;
                  }
               }
               if(_loc5_ > 0)
               {
                  _bitmapData.copyPixels(param1,new Rectangle(_loc4_,0,_loc3_ - _loc4_,param1.height),new Point(param2.tx + _loc4_,param2.ty + _loc7_),null,null,true);
               }
               return;
            }
            _bitmapData.draw(param1,param2,null,null,null,false);
         }
      }
      
      public function set maskManager(param1:PlaneMaskManager) : void
      {
         var_559 = param1;
      }
      
      private function updateMask(param1:BitmapData, param2:IRoomGeometry) : void
      {
         var _loc9_:* = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         if(!var_791 || false && false && !var_149 || var_559 == null)
         {
            return;
         }
         if(param1 == null || param2 == null)
         {
            return;
         }
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         updateMaskChangeStatus();
         var _loc7_:Number = param1.width;
         var _loc8_:Number = param1.height;
         if(var_55 == null || var_55.width != _loc7_ || var_55.height != _loc8_)
         {
            if(var_55 != null)
            {
               var_55.dispose();
               var_55 = null;
            }
            var_55 = new BitmapData(_loc7_,_loc8_,true,16777215);
            var_149 = true;
         }
         if(var_149)
         {
            var_652 = [];
            var_986 = [];
            if(var_55 != null)
            {
               var_55.fillRect(var_55.rect,16777215);
            }
            resetTextureCache(param1);
            _loc9_ = param2.getCoordinatePosition(var_460);
            _loc10_ = 0;
            _loc11_ = 0;
            _loc5_ = 0;
            while(_loc5_ < var_187.length)
            {
               _loc3_ = var_187[_loc5_] as RoomPlaneBitmapMask;
               if(_loc3_ != null)
               {
                  _loc10_ = 0 - 0 * _loc3_.leftSideLoc / 0;
                  _loc11_ = 0 - 0 * _loc3_.rightSideLoc / 0;
                  _loc12_ = _loc3_.type;
                  var_559.updateMask(var_55,_loc12_,param2.scale,_loc9_,_loc10_,_loc11_);
                  var_652.push(new RoomPlaneBitmapMask(_loc12_,_loc3_.leftSideLoc,_loc3_.rightSideLoc));
               }
               _loc5_++;
            }
            _loc6_ = 0;
            while(_loc6_ < var_252.length)
            {
               _loc4_ = var_252[_loc6_] as RoomPlaneRectangleMask;
               if(_loc4_ != null)
               {
                  _loc10_ = 0 - 0 * _loc4_.leftSideLoc / 0;
                  _loc11_ = 0 - 0 * _loc4_.rightSideLoc / 0;
                  _loc13_ = 0 * _loc4_.leftSideLength / 0;
                  _loc14_ = 0 * _loc4_.rightSideLength / 0;
                  var_55.fillRect(new Rectangle(_loc10_ - _loc13_,_loc11_ - _loc14_,_loc13_,_loc14_),4278190080);
                  var_986.push(new RoomPlaneRectangleMask(_loc4_.leftSideLength,_loc4_.rightSideLoc,_loc4_.leftSideLength,_loc4_.rightSideLength));
               }
               _loc6_++;
            }
            var_149 = false;
         }
         combineTextureMask(param1,var_55);
      }
      
      public function get relativeDepth() : Number
      {
         return var_1788;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function resetBitmapMasks() : void
      {
         if(var_791)
         {
            if(false)
            {
               return;
            }
            var_149 = true;
            var_187 = [];
         }
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function set id(param1:String) : void
      {
         if(param1 != _id)
         {
            resetTextureCache();
            _id = param1;
         }
      }
      
      public function get visible() : Boolean
      {
         return _isVisible;
      }
      
      private function getTextureIdentifier(param1:Number) : String
      {
         if(var_653 != null)
         {
            return var_653.getTextureIdentifier(param1,normal);
         }
         return String(param1);
      }
      
      public function get bitmapData() : BitmapData
      {
         if(_isVisible)
         {
            if(_bitmapData != null)
            {
               return _bitmapData.clone();
            }
         }
         return null;
      }
      
      public function get offset() : Point
      {
         return _offset;
      }
      
      public function get rightSide() : IVector3d
      {
         return var_278;
      }
      
      private function renderTexture(param1:IRoomGeometry, param2:BitmapData) : void
      {
         if(var_122 == null || var_104 == null || var_79 == null || var_105 == null || param2 == null || _bitmapData == null)
         {
            return;
         }
         var _loc3_:Number = 0 - 0;
         var _loc4_:Number = 0 - 0;
         var _loc5_:Number = 0 - 0;
         var _loc6_:Number = 0 - 0;
         if(_type == const_236 || _type == const_176)
         {
            if(Math.abs(_loc5_ - param2.width) <= 1)
            {
               _loc5_ = param2.width;
            }
            if(Math.abs(_loc6_ - param2.width) <= 1)
            {
               _loc6_ = param2.width;
            }
            if(Math.abs(_loc3_ - param2.height) <= 1)
            {
               _loc3_ = param2.height;
            }
            if(Math.abs(_loc4_ - param2.height) <= 1)
            {
               _loc4_ = param2.height;
            }
         }
         var _loc7_:Number = _loc5_ / param2.width;
         var _loc8_:Number = _loc6_ / param2.width;
         var _loc9_:Number = _loc3_ / param2.height;
         var _loc10_:Number = _loc4_ / param2.height;
         var _loc11_:Matrix = new Matrix();
         _loc11_.a = _loc7_;
         _loc11_.b = _loc8_;
         _loc11_.c = _loc9_;
         _loc11_.d = _loc10_;
         _loc11_.translate(var_79.x,var_79.y);
         draw(param2,_loc11_);
      }
      
      public function get location() : IVector3d
      {
         return var_73;
      }
      
      private function updateCorners(param1:IRoomGeometry) : void
      {
         var_122.assign(param1.getScreenPosition(var_73));
         var_104.assign(param1.getScreenPosition(Vector3d.sum(var_73,var_278)));
         var_79.assign(param1.getScreenPosition(Vector3d.sum(Vector3d.sum(var_73,var_279),var_278)));
         var_105.assign(param1.getScreenPosition(Vector3d.sum(var_73,var_279)));
         _offset = param1.getScreenPoint(var_790);
         var_122.x = Math.round(var_122.x);
         var_122.y = Math.round(var_122.y);
         var_104.x = Math.round(var_104.x);
         var_104.y = Math.round(var_104.y);
         var_79.x = Math.round(var_79.x);
         var_79.y = Math.round(var_79.y);
         var_105.x = Math.round(var_105.x);
         var_105.y = Math.round(var_105.y);
         _offset.x = Math.round(_offset.x);
         _offset.y = Math.round(_offset.y);
         var _loc2_:Number = Math.min(var_122.x,var_104.x,var_79.x,var_105.x);
         var _loc3_:Number = Math.max(var_122.x,var_104.x,var_79.x,var_105.x);
         var _loc4_:Number = Math.min(var_122.y,var_104.y,var_79.y,var_105.y);
         var _loc5_:Number = Math.max(var_122.y,var_104.y,var_79.y,var_105.y);
         _loc3_ -= _loc2_;
         _offset.x = 0 - _loc2_;
         var_122.x = 0 - _loc2_;
         var_104.x = 0 - _loc2_;
         var_79.x = 0 - _loc2_;
         var_105.x = 0 - _loc2_;
         _loc5_ -= _loc4_;
         _offset.y = 0 - _loc4_;
         var_122.y = 0 - _loc4_;
         var_104.y = 0 - _loc4_;
         var_79.y = 0 - _loc4_;
         var_105.y = 0 - _loc4_;
         _width = _loc3_;
         _height = _loc5_;
      }
      
      private function updateMaskChangeStatus() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:* = null;
         if(!var_149)
         {
            return;
         }
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:Boolean = true;
         var _loc4_:* = null;
         if(true)
         {
            while(_loc1_ < var_187.length)
            {
               _loc4_ = var_187[_loc1_] as RoomPlaneBitmapMask;
               if(_loc4_ != null)
               {
                  _loc6_ = false;
                  while(_loc2_ < var_652.length)
                  {
                     _loc7_ = var_652[_loc2_] as RoomPlaneBitmapMask;
                     if(_loc7_ != null)
                     {
                        if(_loc7_.type == _loc4_.type && _loc7_.leftSideLoc == _loc4_.leftSideLoc && _loc7_.rightSideLoc == _loc4_.rightSideLoc)
                        {
                           _loc6_ = true;
                           break;
                        }
                     }
                     _loc2_++;
                  }
                  if(!_loc6_)
                  {
                     _loc3_ = false;
                     break;
                  }
               }
               _loc1_++;
            }
         }
         else
         {
            _loc3_ = false;
         }
         if(false)
         {
            _loc3_ = false;
         }
         if(_loc3_)
         {
            var_149 = false;
         }
      }
      
      public function set color(param1:uint) : void
      {
         _color = param1;
      }
      
      public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : Boolean
      {
         var _loc4_:* = NaN;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = null;
         if(!param3)
         {
            if(!_isVisible)
            {
               return false;
            }
         }
         if(param1 == null || _disposed)
         {
            return false;
         }
         if(param3)
         {
            var_218 = null;
            _loc4_ = 0;
            _loc4_ = Number(Vector3d.cosAngle(param1.directionAxis,normal));
            if(_loc4_ > -0.001)
            {
               if(_isVisible)
               {
                  _isVisible = false;
                  return true;
               }
               return false;
            }
            _loc5_ = 0;
            while(_loc5_ < var_1170.length)
            {
               _loc4_ = Number(Vector3d.cosAngle(param1.directionAxis,var_1170[_loc5_]));
               if(_loc4_ > -0.001)
               {
                  if(_isVisible)
                  {
                     _isVisible = false;
                     return true;
                  }
                  return false;
               }
               _loc5_++;
            }
            updateCorners(param1);
            _loc6_ = param1.getScreenPosition(var_790);
            _loc7_ = _loc6_.z;
            _loc8_ = Math.max(0 - _loc7_,0 - _loc7_,0 - _loc7_,0 - _loc7_);
            if(_type == const_176)
            {
               _loc8_ += 0.02;
            }
            var_1788 = _loc8_;
            _isVisible = true;
         }
         if(param3 || needsNewTexture(param1,param2))
         {
            if(_bitmapData == null || _width != _bitmapData.width || _height != _bitmapData.height)
            {
               if(_bitmapData != null)
               {
                  _bitmapData.dispose();
                  _bitmapData = null;
                  if(_width < 1 || _height < 1)
                  {
                     return true;
                  }
               }
               else if(_width < 1 || _height < 1)
               {
                  return false;
               }
               _bitmapData = new BitmapData(_width,_height,true,16777215);
               _bitmapData.lock();
            }
            else
            {
               _bitmapData.lock();
               _bitmapData.fillRect(_bitmapData.rect,16777215);
            }
            Randomizer.setSeed(var_1789);
            _loc9_ = getTexture(param1,param2);
            if(_loc9_ != null)
            {
               renderTexture(param1,_loc9_);
            }
            _bitmapData.unlock();
            return true;
         }
         return false;
      }
      
      public function copyBitmapData(param1:BitmapData) : BitmapData
      {
         if(_isVisible)
         {
            if(_bitmapData != null && param1 != null)
            {
               if(_bitmapData.width == param1.width && _bitmapData.height == param1.height)
               {
                  param1.copyPixels(_bitmapData,_bitmapData.rect,new Point(0,0));
                  return param1;
               }
            }
         }
         return null;
      }
      
      private function needsNewTexture(param1:IRoomGeometry, param2:int) : Boolean
      {
         var _loc4_:* = null;
         if(param1 == null)
         {
            return false;
         }
         var _loc3_:PlaneBitmapData = var_218;
         if(_loc3_ == null)
         {
            _loc4_ = getTextureIdentifier(param1.scale);
            _loc3_ = var_168.getValue(_loc4_) as PlaneBitmapData;
         }
         updateMaskChangeStatus();
         if(_loc3_ == null || _loc3_.timeStamp >= 0 && param2 > _loc3_.timeStamp || var_149)
         {
            return true;
         }
         return false;
      }
      
      public function addRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         if(var_791)
         {
            _loc5_ = null;
            _loc6_ = 0;
            while(_loc6_ < var_252.length)
            {
               _loc5_ = var_252[_loc6_] as RoomPlaneRectangleMask;
               if(_loc5_ != null)
               {
                  if(_loc5_.leftSideLoc == param1 && _loc5_.rightSideLoc == param2 && _loc5_.leftSideLength == param3 && _loc5_.rightSideLength == param4)
                  {
                     return false;
                  }
               }
               _loc6_++;
            }
            _loc5_ = new RoomPlaneRectangleMask(param1,param2,param3,param4);
            var_252.push(_loc5_);
            var_149 = true;
            return true;
         }
         return false;
      }
      
      private function getTexture(param1:IRoomGeometry, param2:int) : BitmapData
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(needsNewTexture(param1,param2))
         {
            _loc5_ = 0 * param1.scale;
            _loc6_ = 0 * param1.scale;
            _loc7_ = param1.getCoordinatePosition(var_460);
            _loc4_ = getTextureIdentifier(param1.scale);
            if(var_218 != null)
            {
               _loc3_ = var_218;
            }
            else
            {
               _loc3_ = var_168.getValue(_loc4_) as PlaneBitmapData;
            }
            _loc8_ = null;
            if(_loc3_ != null)
            {
               _loc8_ = _loc3_.bitmap;
            }
            if(var_653 != null)
            {
               _loc3_ = var_653.render(_loc8_,_id,_loc5_,_loc6_,param1.scale,_loc7_,var_1426,var_1786,var_1787,var_1791,var_1790,param2);
               if(_loc3_ != null)
               {
                  if(_loc8_ != null && _loc3_.bitmap != _loc8_)
                  {
                     _loc8_.dispose();
                  }
               }
            }
            else
            {
               _loc9_ = new BitmapData(_loc5_,_loc6_,true,4278190080 | _color);
               _loc3_ = new PlaneBitmapData(_loc9_,-1);
            }
            updateMask(_loc3_.bitmap,param1);
            if(_loc3_ != null)
            {
               cacheTexture(_loc4_,_loc3_);
            }
         }
         else if(var_218 != null)
         {
            _loc3_ = var_218;
         }
         else
         {
            _loc4_ = getTextureIdentifier(param1.scale);
            _loc3_ = var_168.getValue(_loc4_) as PlaneBitmapData;
         }
         if(_loc3_ != null)
         {
            var_218 = _loc3_;
            return _loc3_.bitmap;
         }
         return null;
      }
      
      public function get normal() : IVector3d
      {
         return var_460;
      }
      
      private function combineTextureMask(param1:BitmapData, param2:BitmapData) : void
      {
         if(param1 == null || param2 == null)
         {
            return;
         }
         if(var_169 != null && (var_169.width != param1.width || var_169.height != param1.height))
         {
            var_169.dispose();
            var_169 = null;
         }
         if(var_169 == null)
         {
            var_169 = new BitmapData(param1.width,param1.height,true,4294967295);
         }
         var_169.copyChannel(param1,param1.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.RED);
         var_169.draw(param2,null,null,BlendMode.DARKEN);
         param1.copyChannel(var_169,var_169.rect,new Point(0,0),BitmapDataChannel.RED,BitmapDataChannel.ALPHA);
      }
      
      public function get leftSide() : IVector3d
      {
         return var_279;
      }
   }
}
