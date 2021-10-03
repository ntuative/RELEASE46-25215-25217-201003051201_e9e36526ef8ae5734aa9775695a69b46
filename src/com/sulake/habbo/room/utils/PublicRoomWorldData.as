package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_2031:Number = 1;
      
      private var var_202:Number = 1;
      
      private var var_2062:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_2062 = param1;
         var_202 = param2;
         var_2031 = param3;
      }
      
      public function get scale() : Number
      {
         return var_202;
      }
      
      public function get heightScale() : Number
      {
         return var_2031;
      }
   }
}
