package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectRoomMaskUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_1153:String = "door";
      
      public static const const_438:String = "window";
      
      public static const const_642:String = "RORMUM_ADD_MASK";
      
      public static const const_447:String = "RORMUM_ADD_MASK";
      
      public static const const_225:String = "hole";
       
      
      private var var_2060:String = "";
      
      private var var_2058:String = "";
      
      private var var_2059:String = "window";
      
      private var var_2061:Vector3d = null;
      
      private var _type:String = "";
      
      public function RoomObjectRoomMaskUpdateMessage(param1:String, param2:String, param3:String = null, param4:IVector3d = null, param5:String = "window")
      {
         super(null,null);
         _type = param1;
         var_2058 = param2;
         var_2060 = param3;
         if(param4 != null)
         {
            var_2061 = new Vector3d(param4.x,param4.y,param4.z);
         }
         var_2059 = param5;
      }
      
      public function get maskCategory() : String
      {
         return var_2059;
      }
      
      public function get maskId() : String
      {
         return var_2058;
      }
      
      public function get maskLocation() : IVector3d
      {
         return var_2061;
      }
      
      public function get maskType() : String
      {
         return var_2060;
      }
      
      public function get type() : String
      {
         return _type;
      }
   }
}
