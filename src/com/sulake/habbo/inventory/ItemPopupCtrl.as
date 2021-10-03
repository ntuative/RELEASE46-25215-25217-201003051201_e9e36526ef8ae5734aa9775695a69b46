package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1065:int = 100;
      
      private static const const_1064:int = 200;
      
      private static const const_1067:int = 180;
      
      public static const const_788:int = 1;
      
      public static const const_394:int = 2;
      
      private static const const_1066:int = 250;
      
      private static const const_760:int = 5;
       
      
      private var var_564:BitmapData;
      
      private var var_291:Timer;
      
      private var var_6:IWindowContainer;
      
      private var var_666:BitmapData;
      
      private var var_292:Timer;
      
      private var var_70:IWindowContainer;
      
      private var var_1457:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_292 = new Timer(const_1066,1);
         var_291 = new Timer(const_1065,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_70 = param1;
         var_70.visible = false;
         _assets = param2;
         var_292.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_291.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_666 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_564 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_70.visible = false;
         var_291.reset();
         var_292.reset();
         if(var_6 != null)
         {
            var_6.removeChild(var_70);
         }
      }
      
      public function hideDelayed() : void
      {
         var_291.reset();
         var_292.reset();
         var_291.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_292 != null)
         {
            var_292.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_292.stop();
            var_292 = null;
         }
         if(var_291 != null)
         {
            var_291.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_291.stop();
            var_291 = null;
         }
         _assets = null;
         var_70 = null;
         var_6 = null;
         var_564 = null;
         var_666 = null;
      }
      
      public function showDelayed() : void
      {
         var_291.reset();
         var_292.reset();
         var_292.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_70 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_6 != null)
         {
            var_6.removeChild(var_70);
         }
         var_6 = param1;
         var_1457 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_70.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_70.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1067,param3.width),Math.min(const_1064,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_70.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_70 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_70.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_788:
               _loc2_.bitmap = var_666.clone();
               _loc2_.width = var_666.width;
               _loc2_.height = var_666.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_394:
               _loc2_.bitmap = var_564.clone();
               _loc2_.width = var_564.width;
               _loc2_.height = var_564.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_291.reset();
         var_292.reset();
         if(var_6 == null)
         {
            return;
         }
         var_70.visible = true;
         var_6.addChild(var_70);
         refreshArrow(var_1457);
         switch(var_1457)
         {
            case const_788:
               var_70.x = 0 - const_760;
               break;
            case const_394:
               var_70.x = var_6.width + const_760;
         }
         var_70.y = (0 - 0) / 2;
      }
   }
}
