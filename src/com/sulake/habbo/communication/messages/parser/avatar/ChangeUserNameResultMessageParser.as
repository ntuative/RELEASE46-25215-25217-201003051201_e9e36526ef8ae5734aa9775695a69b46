package com.sulake.habbo.communication.messages.parser.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ChangeUserNameResultMessageParser implements IMessageParser
   {
       
      
      private var var_967:Array;
      
      private var var_1139:int = -1;
      
      private var _name:String;
      
      public function ChangeUserNameResultMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1139 = param1.readInteger();
         _name = param1.readString();
         var _loc2_:int = param1.readInteger();
         var_967 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_967.push(param1.readString());
            _loc3_++;
         }
         return true;
      }
      
      public function get nameSuggestions() : Array
      {
         return var_967;
      }
      
      public function flush() : Boolean
      {
         var_1139 = -1;
         _name = "";
         var_967 = null;
         return true;
      }
      
      public function get resultCode() : int
      {
         return var_1139;
      }
      
      public function get name() : String
      {
         return _name;
      }
   }
}
