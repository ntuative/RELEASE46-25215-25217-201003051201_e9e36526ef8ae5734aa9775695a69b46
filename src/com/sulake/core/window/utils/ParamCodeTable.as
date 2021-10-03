package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_110;
         param1["bound_to_parent_rect"] = const_82;
         param1["child_window"] = const_800;
         param1["embedded_controller"] = const_281;
         param1["resize_to_accommodate_children"] = const_62;
         param1["input_event_processor"] = const_49;
         param1["internal_event_handling"] = const_606;
         param1["mouse_dragging_target"] = const_211;
         param1["mouse_dragging_trigger"] = const_299;
         param1["mouse_scaling_target"] = const_232;
         param1["mouse_scaling_trigger"] = const_372;
         param1["horizontal_mouse_scaling_trigger"] = const_223;
         param1["vertical_mouse_scaling_trigger"] = const_205;
         param1["observe_parent_input_events"] = const_869;
         param1["optimize_region_to_layout_size"] = const_361;
         param1["parent_window"] = const_856;
         param1["relative_horizontal_scale_center"] = const_155;
         param1["relative_horizontal_scale_fixed"] = const_103;
         param1["relative_horizontal_scale_move"] = const_297;
         param1["relative_horizontal_scale_strech"] = const_250;
         param1["relative_scale_center"] = const_794;
         param1["relative_scale_fixed"] = const_600;
         param1["relative_scale_move"] = const_1000;
         param1["relative_scale_strech"] = const_808;
         param1["relative_vertical_scale_center"] = const_157;
         param1["relative_vertical_scale_fixed"] = const_123;
         param1["relative_vertical_scale_move"] = const_309;
         param1["relative_vertical_scale_strech"] = const_248;
         param1["on_resize_align_left"] = const_636;
         param1["on_resize_align_right"] = const_439;
         param1["on_resize_align_center"] = const_375;
         param1["on_resize_align_top"] = const_687;
         param1["on_resize_align_bottom"] = const_416;
         param1["on_resize_align_middle"] = const_388;
         param1["on_accommodate_align_left"] = const_978;
         param1["on_accommodate_align_right"] = const_480;
         param1["on_accommodate_align_center"] = const_504;
         param1["on_accommodate_align_top"] = const_863;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_603;
         param1["route_input_events_to_parent"] = const_455;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_892;
         param1["scalable_with_mouse"] = const_880;
         param1["reflect_horizontal_resize_to_parent"] = const_399;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_267;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
