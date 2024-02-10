class CacheController < ApplicationController
  def index
    @products = Product.all.limit(5)
    
    # unless Rails.cache.exist? "products_cache"
    #   Rails.cache.write("products_cache", @products, expires_in: 10.minutes)
    # end
  end
end
