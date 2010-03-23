module ProductImageHelper
  def link_to_main_product_image(product)
    large_image_url = product.images.empty? ? "noimage/product.jpg" : 
                      product.images.first.attachment.url(:large) 
    link_to product_image(product), large_image_url, :title => product.name
  end
  
  def link_to_image(image, title='')
    link_to image_tag(image.url(:mini)), image.url(:large), :title => title
  end
end


