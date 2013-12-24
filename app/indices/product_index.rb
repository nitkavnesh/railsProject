# app/indices/product_index.rb
ThinkingSphinx::Index.define :product, :with => :active_record do
 indexes name
 # has category(:name), :as => :category_name
end
