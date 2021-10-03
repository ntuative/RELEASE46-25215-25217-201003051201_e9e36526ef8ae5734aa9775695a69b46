package com.sulake.habbo.communication.messages.outgoing.catalog
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SelectClubGiftComposer implements IMessageComposer
   {
       
      
      private var var_1107:String;
      
      public function SelectClubGiftComposer(param1:String)
      {
         super();
         var_1107 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1107];
      }
      
      public function dispose() : void
      {
         var_1107 = null;
      }
   }
}
