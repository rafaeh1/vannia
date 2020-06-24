namespace :vannia do
  
  desc 'create taxonomies for products'
  
  task :create_taxonomies => :environment do
  
    puts "Clean spree_taxonomies"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_taxonomies"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_taxons"

    puts ">>> Creating Taxonoy 'Mujer' and its taxons"
    taxonomy = Spree::Taxonomy.create!(name: "Mujer");
    parent = Spree::Taxon.find_by(taxonomy_id: taxonomy.id)
    taxons = Spree::Taxon.create!([
      {parent_id: parent.id, taxonomy_id: taxonomy.id, name: "Anillos", permalink: "#{taxonomy.name}/anillos"},
      {parent_id: parent.id, taxonomy_id: taxonomy.id, name: "Collares", permalink: "#{taxonomy.name}/collares"},
      {parent_id: parent.id, taxonomy_id: taxonomy.id, name: "Aretes", permalink: "#{taxonomy.name}/aretes"},
      {parent_id: parent.id, taxonomy_id: taxonomy.id, name: "Pulseras", permalink: "#{taxonomy.name}/pulseras"},
      {parent_id: parent.id, taxonomy_id: taxonomy.id, name: "Sets", permalink: "#{taxonomy.name}/sets"},
      {parent_id: parent.id, taxonomy_id: taxonomy.id, name: "Tobilleras", permalink: "#{taxonomy.name}/tobilleras"}
    ])

    puts ">>> Creating Taxonoy 'Accesorios' and its taxons"
    taxonomy = Spree::Taxonomy.create!(name: "Accesorios");
    parent = Spree::Taxon.find_by(taxonomy_id: taxonomy.id)
    taxons = Spree::Taxon.create!([
      {parent_id: parent.id, taxonomy_id: taxonomy.id, name: "Anillos", permalink: "#{taxonomy.name}/anillos"},
      {parent_id: parent.id, taxonomy_id: taxonomy.id, name: "Collares", permalink: "#{taxonomy.name}/collares"},
      {parent_id: parent.id, taxonomy_id: taxonomy.id, name: "Aretes", permalink: "#{taxonomy.name}/aretes"},
      {parent_id: parent.id, taxonomy_id: taxonomy.id, name: "Pulseras", permalink: "#{taxonomy.name}/pulseras"},
      {parent_id: parent.id, taxonomy_id: taxonomy.id, name: "Sets", permalink: "#{taxonomy.name}/sets"},
      {parent_id: parent.id, taxonomy_id: taxonomy.id, name: "Tobilleras", permalink: "#{taxonomy.name}/tobilleras"}
    ])
    
    puts ">>>Done!"
  
  end

end
