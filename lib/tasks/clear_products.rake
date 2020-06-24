namespace :vannia do
  
  desc 'Clear products'
  
  task :clear_products => :environment do
  
    puts "Cleaning products list"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_products"
    puts "Cleaning variants"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_variants"
    puts "Cleaning product properties"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_product_properties"
    puts "Cleaning product option types"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_product_option_types"

    puts ">>>Done!"
  
  end

end
