package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_705;
         param1["bitmap"] = const_640;
         param1["border"] = const_732;
         param1["border_notify"] = const_1344;
         param1["button"] = const_390;
         param1["button_thick"] = const_694;
         param1["button_icon"] = const_1257;
         param1["button_group_left"] = const_548;
         param1["button_group_center"] = const_527;
         param1["button_group_right"] = const_517;
         param1["canvas"] = const_615;
         param1["checkbox"] = const_635;
         param1["closebutton"] = const_981;
         param1["container"] = const_303;
         param1["container_button"] = const_532;
         param1["display_object_wrapper"] = const_638;
         param1["dropmenu"] = const_403;
         param1["dropmenu_item"] = const_433;
         param1["frame"] = const_321;
         param1["frame_notify"] = const_1135;
         param1["header"] = const_619;
         param1["icon"] = const_1002;
         param1["itemgrid"] = const_1011;
         param1["itemgrid_horizontal"] = const_470;
         param1["itemgrid_vertical"] = const_505;
         param1["itemlist"] = const_795;
         param1["itemlist_horizontal"] = const_305;
         param1["itemlist_vertical"] = const_289;
         param1["maximizebox"] = const_1321;
         param1["menu"] = const_1137;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_990;
         param1["minimizebox"] = const_1282;
         param1["notify"] = const_1200;
         param1["null"] = const_625;
         param1["password"] = const_510;
         param1["radiobutton"] = const_578;
         param1["region"] = const_435;
         param1["restorebox"] = const_1150;
         param1["scaler"] = const_945;
         param1["scaler_horizontal"] = const_1174;
         param1["scaler_vertical"] = const_1268;
         param1["scrollbar_horizontal"] = const_401;
         param1["scrollbar_vertical"] = const_657;
         param1["scrollbar_slider_button_up"] = const_921;
         param1["scrollbar_slider_button_down"] = const_1005;
         param1["scrollbar_slider_button_left"] = const_857;
         param1["scrollbar_slider_button_right"] = const_902;
         param1["scrollbar_slider_bar_horizontal"] = const_940;
         param1["scrollbar_slider_bar_vertical"] = const_786;
         param1["scrollbar_slider_track_horizontal"] = const_818;
         param1["scrollbar_slider_track_vertical"] = const_903;
         param1["scrollable_itemlist"] = const_1349;
         param1["scrollable_itemlist_vertical"] = const_436;
         param1["scrollable_itemlist_horizontal"] = const_970;
         param1["selector"] = const_679;
         param1["selector_list"] = const_648;
         param1["submenu"] = const_990;
         param1["tab_button"] = const_696;
         param1["tab_container_button"] = const_827;
         param1["tab_context"] = const_424;
         param1["tab_content"] = const_1008;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_516;
         param1["input"] = const_632;
         param1["toolbar"] = const_1178;
         param1["tooltip"] = const_286;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
