package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_730:IAssetLoader;
      
      private var var_1251:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1251 = param1;
         var_730 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_730;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_730 != null)
            {
               if(true)
               {
                  var_730.dispose();
                  var_730 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1251;
      }
   }
}
