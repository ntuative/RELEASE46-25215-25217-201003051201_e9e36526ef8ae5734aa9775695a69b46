package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.FlatControllerData;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.RoomSettingsData;
   
   public class RoomSettingsDataMessageParser implements IMessageParser
   {
       
      
      private var var_118:RoomSettingsData;
      
      public function RoomSettingsDataMessageParser()
      {
         super();
      }
      
      public function get data() : RoomSettingsData
      {
         return var_118;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_118 = new RoomSettingsData();
         var_118.roomId = param1.readInteger();
         var_118.name = param1.readString();
         var_118.description = param1.readString();
         var_118.doorMode = param1.readInteger();
         var_118.categoryId = param1.readInteger();
         var_118.maximumVisitors = param1.readInteger();
         var_118.maximumVisitorsLimit = param1.readInteger();
         var_118.tags = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_118.tags.push(param1.readString());
            _loc3_++;
         }
         var_118.controllers = [];
         var _loc4_:int = param1.readInteger();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            var_118.controllers.push(new FlatControllerData(param1));
            _loc5_++;
         }
         var_118.controllerCount = param1.readInteger();
         var_118.allowPets = param1.readInteger() == 1;
         var_118.allowFoodConsume = param1.readInteger() == 1;
         var_118.allowWalkThrough = param1.readInteger() == 1;
         return true;
      }
      
      public function flush() : Boolean
      {
         var_118 = null;
         return true;
      }
   }
}
