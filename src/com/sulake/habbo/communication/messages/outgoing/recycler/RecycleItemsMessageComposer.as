package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_805:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_805 = new Array();
         var_805.push(param1.length);
         var_805 = var_805.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_805;
      }
   }
}
