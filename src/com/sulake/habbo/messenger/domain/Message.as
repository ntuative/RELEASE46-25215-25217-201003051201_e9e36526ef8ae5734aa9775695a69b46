package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_528:int = 2;
      
      public static const const_835:int = 6;
      
      public static const const_518:int = 1;
      
      public static const const_649:int = 3;
      
      public static const const_807:int = 4;
      
      public static const const_582:int = 5;
       
      
      private var var_2248:String;
      
      private var var_1055:int;
      
      private var var_1724:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1055 = param2;
         var_1724 = param3;
         var_2248 = param4;
      }
      
      public function get time() : String
      {
         return var_2248;
      }
      
      public function get senderId() : int
      {
         return var_1055;
      }
      
      public function get messageText() : String
      {
         return var_1724;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
