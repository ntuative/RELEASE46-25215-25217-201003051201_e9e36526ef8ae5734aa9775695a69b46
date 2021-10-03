package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_982:int;
      
      private var var_1848:int;
      
      private var var_1452:int;
      
      private var var_110:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1452 = param1.readInteger();
         var_1848 = param1.readInteger();
         var_982 = param1.readInteger();
         var_110 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1452);
      }
      
      public function get reportedUserId() : int
      {
         return var_982;
      }
      
      public function get callerUserId() : int
      {
         return var_1848;
      }
      
      public function get callId() : int
      {
         return var_1452;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_110;
      }
   }
}
