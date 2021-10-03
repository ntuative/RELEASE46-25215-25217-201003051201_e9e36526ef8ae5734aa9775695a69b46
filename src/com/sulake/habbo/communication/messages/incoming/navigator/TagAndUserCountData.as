package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class TagAndUserCountData
   {
       
      
      private var var_1962:int;
      
      private var var_1712:String;
      
      public function TagAndUserCountData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1712 = param1.readString();
         this.var_1962 = param1.readInteger();
      }
      
      public function get userCount() : int
      {
         return this.var_1962;
      }
      
      public function get tag() : String
      {
         return this.var_1712;
      }
   }
}
