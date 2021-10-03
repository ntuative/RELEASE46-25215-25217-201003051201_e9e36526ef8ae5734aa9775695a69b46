package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_852:LegacyWallGeometry = null;
      
      private var var_581:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_582:TileHeightMap = null;
      
      private var var_2062:String = null;
      
      private var _roomId:int = 0;
      
      private var var_853:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_852 = new LegacyWallGeometry();
         var_853 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_582 != null)
         {
            var_582.dispose();
         }
         var_582 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_2062 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_852;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_853;
      }
      
      public function dispose() : void
      {
         if(var_582 != null)
         {
            var_582.dispose();
            var_582 = null;
         }
         if(var_852 != null)
         {
            var_852.dispose();
            var_852 = null;
         }
         if(var_853 != null)
         {
            var_853.dispose();
            var_853 = null;
         }
         if(var_581 != null)
         {
            var_581.dispose();
            var_581 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_582;
      }
      
      public function get worldType() : String
      {
         return var_2062;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_581 != null)
         {
            var_581.dispose();
         }
         var_581 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_581;
      }
   }
}
