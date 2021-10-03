package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1747:int;
      
      private var var_1751:int;
      
      private var var_1749:int;
      
      private var _userName:String;
      
      private var var_1752:int;
      
      private var var_1748:int;
      
      private var var_1750:int;
      
      private var _userId:int;
      
      private var var_667:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1748 = param1.readInteger();
         var_1752 = param1.readInteger();
         var_667 = param1.readBoolean();
         var_1749 = param1.readInteger();
         var_1751 = param1.readInteger();
         var_1747 = param1.readInteger();
         var_1750 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1750;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_667;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_1752;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1751;
      }
      
      public function get cautionCount() : int
      {
         return var_1747;
      }
      
      public function get cfhCount() : int
      {
         return var_1749;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1748;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
