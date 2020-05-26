namespace :vannia do

	desc 'Tropicalize the store to Mexico settings'
	task :tropicalize_app => :environment do
    
    puts "Clean countries & states"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_countries"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_states"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_zones"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_zone_members"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_tax_categories"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_tax_rates"

    puts "Country setup (only Mexico)"
    country = Spree::Country.create!({ 
      iso: 'MX',
      iso3: 'MEX',
      iso_name: 'MEXICO', 
      name: 'México', 
      states_required: true
    })
    #usa
    Spree::Country.create!({
      iso: 'US',
      iso3: 'USA',
      iso_name: 'UNITED STATES', 
      name: 'United States', 
      states_required: true
    })


    puts "Addding México States"
    states = Spree::State.create(
      [
        {name: 'Aguascalientes', abbr: 'AGS'},
        {name: 'Baja California', abbr: 'BCN'},
        {name: 'Baja California Sur', abbr: 'BCS'},
        {name: 'Campeche', abbr: 'CAM'},
        {name: 'Chiapas', abbr: 'CHP'},
        {name: 'Chihuahua', abbr: 'CHH'},
        {name: 'Coahuila', abbr: 'COA'},
        {name: 'Colima', abbr: 'COL'},
        {name: 'Ciudad de México', abbr: 'CDMX'},
        {name: 'Durango', abbr: 'DUR'},
        {name: 'Guanajuato', abbr: 'GUA'},
        {name: 'Guerrero', abbr: 'GRO'},
        {name: 'Hidalgo', abbr: 'HID'},
        {name: 'Jalisco', abbr: 'JAL'},
        {name: 'México', abbr: 'MEX'},
        {name: 'Michoacán', abbr: 'MIC'},
        {name: 'Morelos', abbr: 'MOR'},
        {name: 'Nayarit', abbr: 'NAY'},
        {name: 'Nuevo León', abbr: 'NLE'},
        {name: 'Oaxaca', abbr: 'OAX'},
        {name: 'Puebla', abbr: 'PUE'},
        {name: 'Querétaro', abbr: 'QUE'},
        {name: 'Quintana Roo', abbr: 'ROO'},
        {name: 'San Luis Potosí', abbr: 'SLP'},
        {name: 'Sinaloa', abbr: 'SIN'},
        {name: 'Sonora', abbr: 'SON'},
        {name: 'Tabasco', abbr: 'TAB'},
        {name: 'Tamaulipas', abbr: 'TAM'},
        {name: 'Tlaxcala', abbr: 'TLA'},
        {name: 'Veracruz', abbr: 'VER'},
        {name: 'Yucatán', abbr: 'YUC'},
        {name: 'Zacatecas', abbr: 'ZAC'}
      ]
    )
    # Assign states to México
    country.states = states
    country.save!

    puts "Zones setup"
    zone = Spree::Zone.create!({name: 'MEXICO', description: 'México', default_tax: 0})

    puts "Zone members"
    Spree::ZoneMember.create(zoneable_id: country.id, zoneable_type: "Spree::Country", zone_id: zone.id)


    puts "Tax category initialization"
    tax_category = Spree::TaxCategory.create!(name: "IVA", description: "IVA", is_default: true, tax_code: "IVA")

    puts "Tax rate initialization of IVA"
    Spree::TaxRate.create!(amount: 0.16, zone: zone, tax_category: tax_category,  name: "IVA", calculator: Spree::Calculator::DefaultTax.create!)

    puts "Do not forget to create Shipping method before load products" if Spree::ShippingMethod.count == 0

    puts ">>>Done"
  
  end

end
