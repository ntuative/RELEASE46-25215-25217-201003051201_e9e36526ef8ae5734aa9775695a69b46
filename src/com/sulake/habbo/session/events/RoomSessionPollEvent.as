package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_111:String = "RSPE_POLL_CONTENT";
      
      public static const const_120:String = "RSPE_POLL_OFFER";
      
      public static const const_58:String = "RSPE_POLL_ERROR";
       
      
      private var var_1052:Array = null;
      
      private var var_1297:String = "";
      
      private var var_1210:String;
      
      private var var_1298:String = "";
      
      private var var_1053:int = 0;
      
      private var _id:int = -1;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         _id = param3;
         super(param1,param2);
      }
      
      public function get questionArray() : Array
      {
         return var_1052;
      }
      
      public function get startMessage() : String
      {
         return var_1297;
      }
      
      public function get summary() : String
      {
         return var_1210;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1297 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1053 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1210 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1053;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1298 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1298;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1052 = param1;
      }
   }
}
