package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1631:XML;
      
      private var var_1388:ITextWindow;
      
      private var var_1387:ITextWindow;
      
      private var var_1634:XML;
      
      private var var_754:IWindowContainer;
      
      private var var_2281:ITextWindow;
      
      private var var_1633:String = "";
      
      private var var_2347:IButtonWindow;
      
      private var var_1630:XML;
      
      private var var_1386:ITextWindow;
      
      private var var_1632:XML;
      
      private var var_753:IButtonWindow;
      
      private var var_78:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_348:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1634) as IWindowContainer;
               break;
            case Offer.const_378:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1632) as IWindowContainer;
               break;
            case Offer.const_474:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1631) as IWindowContainer;
               break;
            case Offer.const_675:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1630) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_754 != null)
            {
               _window.removeChild(var_754);
               var_754.dispose();
            }
            var_754 = _loc2_;
            _window.addChild(_loc2_);
            var_754.x = 0;
            var_754.y = 0;
         }
         var_1386 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1387 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1388 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2281 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_753 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_753 != null)
         {
            var_753.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_753.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_78 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_78,page,var_1633);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1634 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1632 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1631 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1630 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_896,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1633 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_78 = param1.offer;
         attachStub(var_78.priceType);
         if(var_1386 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_78.priceInCredits));
            var_1386.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1387 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_78.priceInPixels));
            var_1387.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1388 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_78.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_78.priceInPixels));
            var_1388.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_753 != null)
         {
            var_753.enable();
         }
      }
   }
}
