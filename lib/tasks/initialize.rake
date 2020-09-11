namespace :vannia do

	desc 'Initializer of store'
	task :initialize => :environment do
    
    puts "Invoking taks"
    Rake::Task["vannia:tropicalize_app"].invoke
    Rake::Task["vannia:clear_products"].invoke
    Rake::Task["vannia:create_store"].invoke
    Rake::Task["vannia:create_taxonomies"].invoke
    Rake::Task["vannia:create_option_types"].invoke
    Rake::Task["vannia:create_properties"].invoke
    Rake::Task["vannia:create_prototypes"].invoke
    Rake::Task["vannia:create_shipping_category"].invoke
    puts ">>>Done!"
  
  end

end