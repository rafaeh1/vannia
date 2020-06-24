namespace :vannia do
  
  desc 'create properties for products'
  
  task :create_properties => :environment do
  
    puts "Clean spree_properties"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_properties"

    puts ">>> Creating properties"
    properties = Spree::Property.create!([
      {name: "marca", presentation: "Marca"},
      {name: "tipo", presentation: "Tipo"},
      {name: "genero", presentation: "Género"},
      {name: "modelo", presentation: "Modelo"},
      {name: "material", presentation: "Material"},
      {name: "collecion", presentation: "Colleción"},
      {name: "ajuste", presentation: "Ajuste"}
    ])
    
    puts ">>>Done!"
  
  end

end
