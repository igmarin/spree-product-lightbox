class ProductLightboxExtension < Spree::Extension
  version "1.0"
  description "Lightbox for product images"
  url "http://spreehq.org"
  def activate
    # admin.tabs.add "Product Lightbox", "/admin/product_lightbox", :after => "Layouts", :visibility => [:all]
    Spree::BaseController.class_eval do
       helper ProductImageHelper
    end
  end
end
