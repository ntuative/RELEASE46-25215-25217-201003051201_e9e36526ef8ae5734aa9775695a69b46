package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1504:int;
      
      private var var_1505:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1504;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1504 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1504 = this.var_1504;
         _loc1_.var_1505 = this.var_1505;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1505 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1505;
      }
   }
}
