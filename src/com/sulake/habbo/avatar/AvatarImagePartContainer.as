package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1970:int;
      
      private var var_1971:String;
      
      private var var_1575:IActionDefinition;
      
      private var var_1972:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1973:String;
      
      private var var_1974:String;
      
      private var var_1691:Boolean;
      
      private var var_1975:ColorTransform;
      
      private var var_1813:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1971 = param1;
         var_1973 = param2;
         var_1970 = param3;
         _color = param4;
         _frames = param5;
         var_1575 = param6;
         var_1691 = param7;
         var_1813 = param8;
         var_1974 = param9;
         var_1972 = param10;
         var_1975 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1691;
      }
      
      public function get partType() : String
      {
         return var_1973;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1813;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1972;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1970;
      }
      
      public function get flippedPartType() : String
      {
         return var_1974;
      }
      
      public function get bodyPartId() : String
      {
         return var_1971;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1575;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1975;
      }
   }
}
