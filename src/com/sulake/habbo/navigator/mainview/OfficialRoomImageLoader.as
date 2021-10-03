package com.sulake.habbo.navigator.mainview
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.display.BitmapData;
   import flash.net.URLRequest;
   
   public class OfficialRoomImageLoader implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_707:IBitmapWrapperWindow;
      
      private var var_921:String;
      
      private var var_855:String;
      
      private var _navigator:HabboNavigator;
      
      public function OfficialRoomImageLoader(param1:HabboNavigator, param2:String, param3:IBitmapWrapperWindow)
      {
         super();
         _navigator = param1;
         var_855 = param2;
         var_707 = param3;
         var _loc4_:String = _navigator.configuration.getKey("image.library.url");
         var_921 = _loc4_ + var_855;
         Logger.log("[OFFICIAL ROOM ICON IMAGE DOWNLOADER] : " + var_921);
      }
      
      private function method_9(param1:AssetLoaderEvent) : void
      {
         Logger.log("Error loading image: " + var_921 + ", " + param1);
         dispose();
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         var_707 = null;
         _navigator = null;
      }
      
      private function onImageReady(param1:AssetLoaderEvent) : void
      {
         if(_disposed)
         {
            return;
         }
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(_loc2_ == null)
         {
            Logger.log("Loading pic from url: " + var_921 + " failed. loaderStruct == null");
            return;
         }
         Logger.log("IMAGE READY: " + var_855 + ", " + _loc2_);
         setImage();
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function startLoad() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.assets.hasAsset(var_855))
         {
            setImage();
         }
         else
         {
            _loc1_ = new URLRequest(var_921);
            _loc2_ = _navigator.assets.loadAssetFromFile(var_855,_loc1_,"image/gif");
            _loc2_.addEventListener(AssetLoaderEvent.const_29,onImageReady);
            _loc2_.addEventListener(AssetLoaderEvent.const_43,method_9);
         }
      }
      
      private function setImage() : void
      {
         var _loc1_:BitmapData = _navigator.getButtonImage(var_855,"");
         var_707.bitmap = _loc1_;
         var_707.width = _loc1_.width;
         var_707.height = _loc1_.height;
         var_707.visible = true;
         dispose();
      }
   }
}
