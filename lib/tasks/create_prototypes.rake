namespace :vannia do
  
  desc 'create prototypes for products'
  
  task :create_prototypes => :environment do
  
    puts "Clean spree_prototypes"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_prototypes"

    puts ">>> Creating prototypes"
    properties = Spree::Prototype.create!([
      {name: "Joyería"}
    ])
    puts ">>>Done!"
  
  end

end
