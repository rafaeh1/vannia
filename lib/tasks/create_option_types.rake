namespace :vannia do
  
  desc 'create option types for products'
  
  task :create_option_types => :environment do
  
    puts "Clean spree_option_types"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_option_types"
    puts "Clean spree_option_values"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_option_values"

    puts "Creating colors"
    #Color.  #HEX COLOR IN OPTION VALUE PRESENTATION
    option_type = Spree::OptionType.create!(name: "Color", presentation: "Color")
    option_value_1 = Spree::OptionValue.create!(name: "Plata", presentation: "Plata", option_type_id: option_type.id) 
    option_value_2 = Spree::OptionValue.create!(name: "Oro", presentation: "Oro", option_type_id: option_type.id)
    option_value_3 = Spree::OptionValue.create!(name: "Rosa", presentation: "Rosa", option_type_id: option_type.id)

    puts "Creating Tamaño"
    option_type = Spree::OptionType.create!(name: "Tamaño", presentation: "Tamaño")
    option_value_1 = Spree::OptionValue.create!(name: "5", presentation: "5", option_type_id: option_type.id) 
    option_value_2 = Spree::OptionValue.create!(name: "6", presentation: "6", option_type_id: option_type.id)
    option_value_3 = Spree::OptionValue.create!(name: "7", presentation: "7", option_type_id: option_type.id)

    puts "Creating Piedra"
    option_type = Spree::OptionType.create!(name: "Piedra", presentation: "Piedra")
    option_value_1 = Spree::OptionValue.create!(name: "Cristal", presentation: "Cristal", option_type_id: option_type.id) 
    option_value_2 = Spree::OptionValue.create!(name: "Esmeralda", presentation: "Esmeralda", option_type_id: option_type.id)
    option_value_3 = Spree::OptionValue.create!(name: "Rubí", presentation: "Rubí", option_type_id: option_type.id)
    option_value_3 = Spree::OptionValue.create!(name: "Topacio", presentation: "Topacio", option_type_id: option_type.id)
    option_value_3 = Spree::OptionValue.create!(name: "Tanzanita", presentation: "Tanzanita", option_type_id: option_type.id)
    option_value_3 = Spree::OptionValue.create!(name: "Zultanita", presentation: "Zultanita", option_type_id: option_type.id)
  
    puts "Creating Material"
    option_type = Spree::OptionType.create!(name: "Material", presentation: "Material")
    option_value_1 = Spree::OptionValue.create!(name: "Plata", presentation: "Plata", option_type_id: option_type.id) 

    puts ">>>Done!"
  
  end

end
