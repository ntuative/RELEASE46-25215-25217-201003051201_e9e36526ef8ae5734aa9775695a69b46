package com.sulake.habbo.session
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.messages.outgoing.room.pets.GetPetInfoMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.users.GetSelectedBadgesMessageComposer;
   
   public class UserDataManager implements IUserDataManager
   {
       
      
      private var _userIds:Map;
      
      private var var_630:Map;
      
      private var var_373:Map;
      
      private var _connection:IConnection;
      
      public function UserDataManager()
      {
         super();
         var_373 = new Map();
         _userIds = new Map();
         var_630 = new Map();
      }
      
      public function removeUserDataByIndex(param1:int) : void
      {
         var _loc2_:int = _userIds.getValue(param1);
         var_373.remove(_loc2_);
         _userIds.remove(param1);
      }
      
      public function updateName(param1:int, param2:String) : void
      {
         var _loc3_:IUserData = getUserData(param1);
         if(_loc3_ != null)
         {
            _loc3_.name = param2;
         }
      }
      
      public function getUserData(param1:int) : IUserData
      {
         return var_373.getValue(param1);
      }
      
      public function getUserBadges(param1:int) : Array
      {
         if(_connection != null)
         {
            _connection.send(new GetSelectedBadgesMessageComposer(param1));
         }
         var _loc2_:* = var_630.getValue(param1) as Array;
         if(_loc2_ == null)
         {
            _loc2_ = [];
         }
         return _loc2_;
      }
      
      public function updateFigure(param1:int, param2:String) : void
      {
         var _loc3_:int = _userIds.getValue(param1);
         var _loc4_:IUserData = getUserData(_loc3_);
         if(_loc4_ != null)
         {
            _loc4_.figure = param2;
         }
      }
      
      public function setUserBadges(param1:int, param2:Array) : void
      {
         var_630.remove(param1);
         var_630.add(param1,param2);
      }
      
      public function setUserData(param1:IUserData) : void
      {
         var_373.remove(param1.webID);
         _userIds.remove(param1.id);
         var_373.add(param1.webID,param1);
         _userIds.add(param1.id,param1.webID);
      }
      
      public function dispose() : void
      {
         _connection = null;
         var_373.dispose();
         var_373 = null;
         _userIds.dispose();
         var_373 = null;
         var_630.dispose();
         var_630 = null;
      }
      
      public function requestPetInfo(param1:int) : void
      {
         var _loc2_:IUserData = getUserData(param1);
         if(_loc2_ != null && _connection != null)
         {
            _connection.send(new GetPetInfoMessageComposer(_loc2_.webID));
         }
      }
      
      public function getUserDataByIndex(param1:int) : IUserData
      {
         var _loc2_:int = _userIds.getValue(param1);
         return getUserData(_loc2_);
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
