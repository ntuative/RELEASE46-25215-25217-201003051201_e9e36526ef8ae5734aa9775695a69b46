package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_114:String = "RWPUE_VOTE_RESULT";
      
      public static const const_122:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1282:int;
      
      private var var_1075:String;
      
      private var var_661:Array;
      
      private var var_1025:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1075 = param2;
         var_1025 = param3;
         var_661 = param4;
         if(var_661 == null)
         {
            var_661 = [];
         }
         var_1282 = param5;
      }
      
      public function get votes() : Array
      {
         return var_661.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1282;
      }
      
      public function get question() : String
      {
         return var_1075;
      }
      
      public function get choices() : Array
      {
         return var_1025.slice();
      }
   }
}
