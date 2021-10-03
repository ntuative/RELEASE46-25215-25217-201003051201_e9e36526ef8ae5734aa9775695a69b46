package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1569:int = 9;
      
      public static const const_1503:int = 4;
      
      public static const const_1432:int = 1;
      
      public static const const_1177:int = 10;
      
      public static const const_1514:int = 2;
      
      public static const const_1369:int = 7;
      
      public static const const_1256:int = 11;
      
      public static const const_1563:int = 3;
      
      public static const const_1364:int = 8;
      
      public static const const_1326:int = 5;
      
      public static const const_1598:int = 6;
      
      public static const const_1171:int = 12;
       
      
      private var var_2095:String;
      
      private var _roomId:int;
      
      private var var_1106:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2095;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1106 = param1.readInteger();
         var_2095 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1106;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
