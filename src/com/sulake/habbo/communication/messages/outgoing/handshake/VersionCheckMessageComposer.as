package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1951:String;
      
      private var var_1172:String;
      
      private var var_1952:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1952 = param1;
         var_1172 = param2;
         var_1951 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1952,var_1172,var_1951];
      }
      
      public function dispose() : void
      {
      }
   }
}
