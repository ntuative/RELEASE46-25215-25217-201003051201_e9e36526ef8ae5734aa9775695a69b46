package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_686:String = "Rectangle";
      
      public static const const_55:String = "Boolean";
      
      public static const const_539:String = "Number";
      
      public static const const_59:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_716:String = "Point";
      
      public static const const_878:String = "Array";
      
      public static const const_952:String = "uint";
      
      public static const const_463:String = "hex";
      
      public static const const_1007:String = "Map";
       
      
      private var var_568:String;
      
      private var var_172:Object;
      
      private var var_2301:Boolean;
      
      private var _type:String;
      
      private var var_1933:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_568 = param1;
         var_172 = param2;
         _type = param3;
         var_1933 = param4;
         var_2301 = param3 == const_1007 || param3 == const_878 || param3 == const_716 || param3 == const_686;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_463:
               return "0x" + uint(var_172).toString(16);
            case const_55:
               return Boolean(var_172) == true ? "true" : "false";
            case const_716:
               return "Point(" + Point(var_172).x + ", " + Point(var_172).y + ")";
            case const_686:
               return "Rectangle(" + Rectangle(var_172).x + ", " + Rectangle(var_172).y + ", " + Rectangle(var_172).width + ", " + Rectangle(var_172).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_1007:
               _loc3_ = var_172 as Map;
               _loc1_ = "<var key=\"" + var_568 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_878:
               _loc4_ = var_172 as Array;
               _loc1_ = "<var key=\"" + var_568 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_716:
               _loc5_ = var_172 as Point;
               _loc1_ = "<var key=\"" + var_568 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_59 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_59 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_686:
               _loc6_ = var_172 as Rectangle;
               _loc1_ = "<var key=\"" + var_568 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_59 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_59 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_59 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_59 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_463:
               _loc1_ = "<var key=\"" + var_568 + "\" value=\"" + "0x" + uint(var_172).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_568 + "\" value=\"" + var_172 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_172;
      }
      
      public function get valid() : Boolean
      {
         return var_1933;
      }
      
      public function get key() : String
      {
         return var_568;
      }
   }
}
