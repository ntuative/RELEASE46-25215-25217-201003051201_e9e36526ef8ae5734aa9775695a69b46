package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_908:String = "AssetLoaderEventUnload";
      
      public static const const_43:String = "AssetLoaderEventError";
      
      public static const const_787:String = "AssetLoaderEventOpen";
      
      public static const const_969:String = "AssetLoaderEventProgress";
      
      public static const const_885:String = "AssetLoaderEventStatus";
      
      public static const const_29:String = "AssetLoaderEventComplete";
       
      
      private var var_363:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_363 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_363;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_363);
      }
   }
}
