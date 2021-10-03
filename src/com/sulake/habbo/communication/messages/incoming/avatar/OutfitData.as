package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1768:String;
      
      private var var_951:String;
      
      private var var_1767:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1767 = param1.readInteger();
         var_1768 = param1.readString();
         var_951 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_951;
      }
      
      public function get figureString() : String
      {
         return var_1768;
      }
      
      public function get slotId() : int
      {
         return var_1767;
      }
   }
}
