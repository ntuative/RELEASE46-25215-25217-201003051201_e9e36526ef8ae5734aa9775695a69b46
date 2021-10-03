package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_111:String = "RWPUW_CONTENT";
      
      public static const const_120:String = "RWPUW_OFFER";
      
      public static const const_58:String = "RWPUW_ERROR";
       
      
      private var var_1052:Array = null;
      
      private var var_1297:String = "";
      
      private var var_1210:String;
      
      private var var_1298:String = "";
      
      private var var_1053:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
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
