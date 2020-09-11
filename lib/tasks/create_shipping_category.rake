namespace :vannia do
  
    desc 'create shipping category'
    
    task :create_shipping_category => :environment do
    
      puts "Cleaning spree_shipping_categories;"
      ActiveRecord::Base.connection.execute "TRUNCATE spree_shipping_categories"
  
      puts ">>> Creating shipping categories"
      properties = Spree::ShippingCategory.create!([
        {name: "default"}
      ])
      puts ">>>Done!"
    
    end
  
  end
  