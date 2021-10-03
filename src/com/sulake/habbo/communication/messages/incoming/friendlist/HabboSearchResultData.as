package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2297:Boolean;
      
      private var var_2300:int;
      
      private var var_2298:Boolean;
      
      private var var_1458:String;
      
      private var var_1196:String;
      
      private var var_1643:int;
      
      private var var_1882:String;
      
      private var var_2299:String;
      
      private var var_1881:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1643 = param1.readInteger();
         this.var_1458 = param1.readString();
         this.var_1882 = param1.readString();
         this.var_2297 = param1.readBoolean();
         this.var_2298 = param1.readBoolean();
         param1.readString();
         this.var_2300 = param1.readInteger();
         this.var_1881 = param1.readString();
         this.var_2299 = param1.readString();
         this.var_1196 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1196;
      }
      
      public function get avatarName() : String
      {
         return this.var_1458;
      }
      
      public function get avatarId() : int
      {
         return this.var_1643;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2297;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2299;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1881;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2298;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1882;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2300;
      }
   }
}
