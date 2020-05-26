namespace :vannia do
  
  desc 'create taxonomies for products'
  
  task :create_taxonomies => :environment do
  
    puts "Clean spree_taxonomies"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_taxonomies"

    puts "Creating"
    taxonomies = Spree::Taxonomy.create(
        [
            {name: "Anillos", position: 0},
            {name: "Collares", position: 0},
            {name: "Aretes", position: 0},
            {name: "Pulseras", position: 0},
            {name: "Sets", position: 0},
            {name: "Tobilleras", position: 0}
        ]
    )
    puts ">>>Done!"
  
  end

end
