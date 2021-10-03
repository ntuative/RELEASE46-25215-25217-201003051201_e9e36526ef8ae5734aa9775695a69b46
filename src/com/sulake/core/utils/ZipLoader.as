package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_374:FZip;
      
      private var var_1127:Array;
      
      private var var_1659:uint = 0;
      
      private var var_765:int = 0;
      
      private var var_2348:Array;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1127 = new Array();
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log(param1.text);
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,0));
      }
      
      public function get resources() : Array
      {
         return var_1127;
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         var _loc3_:String = getQualifiedClassName(var_14.content);
         var_1127.push(var_14.contentLoaderInfo.applicationDomain.getDefinition(_loc3_));
         ++var_765;
         if(var_1127.length == var_1659)
         {
            var_14.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
            var_14.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0));
         }
         else
         {
            var_14.loadBytes(var_374.getFileAt(var_765).content);
         }
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 1) : void
      {
         var_317 = param1;
         if(var_374)
         {
            var_374.close();
         }
         var_374 = new FZip();
         var_374.addEventListener(Event.COMPLETE,onComplete);
         var_374.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_374.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_374.load(var_317);
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0));
      }
      
      private function onComplete(param1:Event) : void
      {
         var_765 = 0;
         var_1659 = var_374.getFileCount();
         removeEventListeners();
         var_14.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
         var_14.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_14.loadBytes(var_374.getFileAt(var_765).content);
      }
   }
}
