package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_339:Number = 0.5;
      
      private static const const_754:int = 3;
      
      private static const const_1061:Number = 1;
       
      
      private var var_1864:Boolean = false;
      
      private var var_1865:Boolean = false;
      
      private var var_1003:int = 0;
      
      private var var_258:Vector3d = null;
      
      private var var_1863:int = 0;
      
      private var var_1861:int = 0;
      
      private var var_1868:Boolean = false;
      
      private var var_1870:int = -2;
      
      private var var_1862:Boolean = false;
      
      private var var_1866:int = 0;
      
      private var var_1869:int = -1;
      
      private var var_394:Vector3d = null;
      
      private var var_1867:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1863;
      }
      
      public function get targetId() : int
      {
         return var_1869;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1866 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1863 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1864 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1869 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1865 = param1;
      }
      
      public function dispose() : void
      {
         var_394 = null;
         var_258 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_394 == null)
         {
            var_394 = new Vector3d();
         }
         var_394.assign(param1);
         var_1003 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1870;
      }
      
      public function get screenHt() : int
      {
         return var_1867;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1861 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_258;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1867 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1866;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1864;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1865;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_394 != null && var_258 != null)
         {
            ++var_1003;
            _loc2_ = Vector3d.dif(var_394,var_258);
            if(_loc2_.length <= const_339)
            {
               var_258 = var_394;
               var_394 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_339 * (const_754 + 1))
               {
                  _loc2_.mul(const_339);
               }
               else if(var_1003 <= const_754)
               {
                  _loc2_.mul(const_339);
               }
               else
               {
                  _loc2_.mul(const_1061);
               }
               var_258 = Vector3d.sum(var_258,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1868 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1861;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1862 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1870 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_258 != null)
         {
            return;
         }
         var_258 = new Vector3d();
         var_258.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1868;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1862;
      }
   }
}
