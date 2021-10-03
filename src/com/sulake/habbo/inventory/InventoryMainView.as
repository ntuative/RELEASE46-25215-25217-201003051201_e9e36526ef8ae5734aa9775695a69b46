package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.ICoreWindowManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITabContextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.inventory.enum.InventoryCategory;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class InventoryMainView
   {
       
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_628:String;
      
      private var var_2282:IWindowContainer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_12:IFrameWindow;
      
      private var var_629:String;
      
      private var var_758:Boolean = true;
      
      private var var_1121:IWindowContainer;
      
      private var var_11:HabboInventory;
      
      private var var_184:IHabboToolbar;
      
      public function InventoryMainView(param1:HabboInventory, param2:IHabboWindowManager, param3:IAssetLibrary)
      {
         super();
         var_11 = param1;
         _assetLibrary = param3;
         _windowManager = param2;
         var _loc4_:IAsset = _assetLibrary.getAssetByName("inventory_xml");
         var _loc5_:XmlAsset = XmlAsset(_loc4_);
         var _loc6_:ICoreWindowManager = ICoreWindowManager(_windowManager);
         var_12 = _loc6_.buildFromXML(XML(_loc5_.content)) as IFrameWindow;
         if(var_12 != null)
         {
            var_12.visible = false;
            var_12.procedure = windowEventProc;
            setCreditBalance(0);
            setPixelBalance(0);
            setClubStatus(0,0);
         }
      }
      
      public function windowEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type == WindowEvent.const_50)
         {
            _loc3_ = ITabContextWindow(param2).selector.getSelected().name;
            if(_loc3_ != var_629)
            {
               var_11.toggleInventoryPage(_loc3_);
            }
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            if(param2.name == "header_button_close")
            {
               hideInventory();
            }
         }
      }
      
      public function hideInventory() : void
      {
         var_11.closingInventoryView();
         var _loc1_:IWindow = method_1();
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.visible = false;
      }
      
      private function setViewToCategory(param1:String) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1 == "")
         {
            return;
         }
         var_11.checkCategoryInitilization(param1);
         var _loc2_:ITabContextWindow = var_12.findChildByName("contentArea") as ITabContextWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.container.removeChild(var_1121);
         _loc2_.invalidate();
         var _loc3_:IWindowContainer = var_11.getCategoryWindowContainer(param1);
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.visible = true;
         _loc2_.container.addChild(_loc3_);
         var_1121 = _loc3_;
         var_629 = param1;
         _loc2_.selector.setSelected(_loc2_.selector.getSelectableByName(param1));
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_79)
         {
         }
         if(param1.iconId != HabboToolbarIconEnum.INVENTORY)
         {
            return;
         }
         if(param1.type == HabboToolbarEvent.const_54)
         {
            if(var_629 == InventoryCategory.const_174)
            {
               toggleCategoryView(InventoryCategory.const_174);
            }
            else if(var_629 == InventoryCategory.const_69)
            {
               toggleCategoryView(InventoryCategory.const_69);
            }
            else if(var_11 != null)
            {
               var_11.toggleInventoryPage(InventoryCategory.const_69);
            }
         }
      }
      
      public function toggleSubCategoryView(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:IWindow = method_1();
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.visible)
         {
            if(var_628 == param1)
            {
               if(param2)
               {
                  _loc3_.visible = false;
               }
            }
            else
            {
               setSubViewToCategory(param1);
            }
         }
         else
         {
            _loc3_.visible = true;
            if(param1 != var_628)
            {
               setSubViewToCategory(param1);
            }
            if(var_184 != null && var_758)
            {
               var_184.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.INVENTORY,_loc3_ as IWindowContainer));
            }
         }
      }
      
      public function setClubStatus(param1:int, param2:int) : void
      {
         _windowManager.registerLocalizationParameter("inventory.purse.clubdays","months",String(param1));
         _windowManager.registerLocalizationParameter("inventory.purse.clubdays","days",String(param2));
      }
      
      public function updateSubCategoryView() : void
      {
         if(var_628 == null)
         {
            return;
         }
         setSubViewToCategory(var_628);
      }
      
      public function dispose() : void
      {
         var_11 = null;
         var_12 = null;
         var_1121 = null;
         var_184 = null;
         _windowManager = null;
      }
      
      public function setCreditBalance(param1:int) : void
      {
         _windowManager.registerLocalizationParameter("inventory.purse.creditbalance","balance",String(param1));
      }
      
      public function method_1() : IFrameWindow
      {
         return var_12;
      }
      
      public function setHabboToolbarIcon() : void
      {
         if(var_184 != null)
         {
            var_184.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_116,HabboToolbarIconEnum.INVENTORY));
         }
      }
      
      private function setSubViewToCategory(param1:String) : void
      {
         if(param1 == null || param1 == "")
         {
            return;
         }
         var_11.checkCategoryInitilization(param1);
         var _loc2_:IWindowContainer = var_12.findChildByName("subContentArea") as IWindowContainer;
         while(_loc2_.numChildren > 0)
         {
            _loc2_.removeChildAt(0);
         }
         var _loc3_:IWindowContainer = var_11.getCategorySubWindowContainer(param1);
         if(_loc3_ != null)
         {
            _loc2_.visible = true;
            _loc3_.visible = true;
            _loc2_.height = _loc3_.height;
            _loc2_.addChild(_loc3_);
         }
         else
         {
            _loc2_.visible = false;
            _loc2_.height = 0;
         }
         var_12.resizeToFitContent();
         var_2282 = _loc3_;
         var_628 = param1;
         if(var_184 != null)
         {
            var_184.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_646,HabboToolbarIconEnum.INVENTORY,var_12 as IWindowContainer));
         }
      }
      
      public function showInventory() : void
      {
         var _loc1_:IWindow = method_1();
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.visible = true;
         if(var_184 != null && var_758)
         {
            var_184.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.INVENTORY,_loc1_ as IWindowContainer));
            var_758 = false;
         }
         var_11.inventoryViewOpened(var_628);
      }
      
      public function get isVisible() : Boolean
      {
         return !!var_12 ? false : false;
      }
      
      public function getCategoryViewId() : String
      {
         return var_629;
      }
      
      public function getSubCategoryViewId() : String
      {
         return var_628;
      }
      
      public function setToolbar(param1:IHabboToolbar) : void
      {
         var_184 = param1;
         var_184.events.addEventListener(HabboToolbarEvent.const_79,onHabboToolbarEvent);
         var_184.events.addEventListener(HabboToolbarEvent.const_54,onHabboToolbarEvent);
      }
      
      public function toggleCategoryView(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:IWindow = method_1();
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.visible)
         {
            if(var_629 == param1)
            {
               if(param2)
               {
                  _loc3_.visible = false;
               }
            }
            else
            {
               setViewToCategory(param1);
            }
         }
         else
         {
            _loc3_.visible = true;
            _loc3_.activate();
            if(param1 != var_629 || !var_11.isInventoryCategoryInit(param1))
            {
               setViewToCategory(param1);
            }
            if(var_184 != null && var_758)
            {
               var_184.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.INVENTORY,_loc3_ as IWindowContainer));
               var_758 = false;
            }
            var_11.inventoryViewOpened(param1);
         }
      }
      
      public function setPixelBalance(param1:int) : void
      {
         _windowManager.registerLocalizationParameter("inventory.purse.pixelbalance","balance",String(param1));
      }
   }
}
