package com.sulake.core.window
{
   import com.sulake.core.window.components.ActivatorController;
   import com.sulake.core.window.components.BackgroundController;
   import com.sulake.core.window.components.BitmapWrapperController;
   import com.sulake.core.window.components.BorderController;
   import com.sulake.core.window.components.ButtonController;
   import com.sulake.core.window.components.CanvasController;
   import com.sulake.core.window.components.CheckBoxController;
   import com.sulake.core.window.components.ContainerButtonController;
   import com.sulake.core.window.components.ContainerController;
   import com.sulake.core.window.components.DisplayObjectWrapperController;
   import com.sulake.core.window.components.DropMenuController;
   import com.sulake.core.window.components.DropMenuItemController;
   import com.sulake.core.window.components.FrameController;
   import com.sulake.core.window.components.HeaderController;
   import com.sulake.core.window.components.IconController;
   import com.sulake.core.window.components.InteractiveController;
   import com.sulake.core.window.components.ItemGridController;
   import com.sulake.core.window.components.ItemListController;
   import com.sulake.core.window.components.PasswordFieldController;
   import com.sulake.core.window.components.RadioButtonController;
   import com.sulake.core.window.components.RegionController;
   import com.sulake.core.window.components.ScalerController;
   import com.sulake.core.window.components.ScrollableItemListWindow;
   import com.sulake.core.window.components.ScrollbarController;
   import com.sulake.core.window.components.ScrollbarLiftController;
   import com.sulake.core.window.components.SelectableButtonController;
   import com.sulake.core.window.components.SelectorController;
   import com.sulake.core.window.components.TabButtonController;
   import com.sulake.core.window.components.TabContainerButtonController;
   import com.sulake.core.window.components.TabContextController;
   import com.sulake.core.window.components.TabSelectorController;
   import com.sulake.core.window.components.TextController;
   import com.sulake.core.window.components.TextFieldController;
   import com.sulake.core.window.components.ToolTipController;
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class Factory
   {
       
      
      protected var var_10:Dictionary;
      
      public function Factory()
      {
         super();
         var_10 = new Dictionary();
         var_10["null"] = WindowController;
         var_10["null"] = ActivatorController;
         var_10["null"] = BackgroundController;
         var_10["null"] = BorderController;
         var_10["null"] = ButtonController;
         var_10["null"] = ButtonController;
         var_10["null"] = SelectableButtonController;
         var_10["null"] = SelectableButtonController;
         var_10["null"] = SelectableButtonController;
         var_10["null"] = BitmapWrapperController;
         var_10["null"] = CanvasController;
         var_10["null"] = CheckBoxController;
         var_10["null"] = ContainerController;
         var_10["null"] = ContainerButtonController;
         var_10["null"] = InteractiveController;
         var_10["null"] = DisplayObjectWrapperController;
         var_10["null"] = ScrollbarLiftController;
         var_10["null"] = DropMenuController;
         var_10["null"] = DropMenuItemController;
         var_10["null"] = FrameController;
         var_10["null"] = HeaderController;
         var_10["null"] = IconController;
         var_10["null"] = ItemListController;
         var_10["null"] = ItemListController;
         var_10["null"] = ItemListController;
         var_10["null"] = ItemGridController;
         var_10["null"] = ItemGridController;
         var_10["null"] = ItemGridController;
         var_10["null"] = PasswordFieldController;
         var_10["null"] = RadioButtonController;
         var_10["null"] = RegionController;
         var_10["null"] = ScalerController;
         var_10["null"] = ScrollbarController;
         var_10["null"] = ScrollbarController;
         var_10["null"] = ButtonController;
         var_10["null"] = ButtonController;
         var_10["null"] = ButtonController;
         var_10["null"] = ButtonController;
         var_10["null"] = ScrollbarLiftController;
         var_10["null"] = ScrollbarLiftController;
         var_10["null"] = WindowController;
         var_10["null"] = WindowController;
         var_10["null"] = ScrollableItemListWindow;
         var_10["null"] = SelectorController;
         var_10["null"] = TabSelectorController;
         var_10["null"] = TabButtonController;
         var_10["null"] = TabContainerButtonController;
         var_10["null"] = ContainerController;
         var_10["null"] = TabContextController;
         var_10["null"] = TabSelectorController;
         var_10["null"] = TextController;
         var_10["null"] = TextFieldController;
         var_10["null"] = ToolTipController;
      }
      
      public function getWindowClassByType(param1:uint) : Class
      {
         return var_10[param1];
      }
   }
}
