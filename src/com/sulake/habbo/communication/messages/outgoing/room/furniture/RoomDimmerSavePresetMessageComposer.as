package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1626:int;
      
      private var var_1627:int;
      
      private var var_1829:Boolean;
      
      private var var_1830:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1828:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1627 = param1;
         var_1626 = param2;
         var_1830 = param3;
         var_1828 = param4;
         var_1829 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1627,var_1626,var_1830,var_1828,int(var_1829)];
      }
      
      public function dispose() : void
      {
      }
   }
}
