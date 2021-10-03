package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_604:String;
      
      private var var_1193:String;
      
      private var var_1194:String;
      
      private var var_1197:int;
      
      private var var_951:int;
      
      private var var_1196:String;
      
      private var _name:String;
      
      private var var_1195:Boolean;
      
      private var var_667:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_951 = param1.readInteger();
         this.var_667 = param1.readBoolean();
         this.var_1195 = param1.readBoolean();
         this.var_604 = param1.readString();
         this.var_1197 = param1.readInteger();
         this.var_1194 = param1.readString();
         this.var_1193 = param1.readString();
         this.var_1196 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_951;
      }
      
      public function get realName() : String
      {
         return var_1196;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1194;
      }
      
      public function get categoryId() : int
      {
         return var_1197;
      }
      
      public function get online() : Boolean
      {
         return var_667;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1195;
      }
      
      public function get lastAccess() : String
      {
         return var_1193;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_604;
      }
   }
}
