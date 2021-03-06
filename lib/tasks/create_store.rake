namespace :vannia do

	desc 'Create Vannia store in Settings'
	task :create_store => :environment do
    
    puts "Cleanning spree_stores"
    ActiveRecord::Base.connection.execute "TRUNCATE spree_stores"

    puts "Creating record"
    country = Spree::Store.create!({ 
      name: 'Vannia Online Store',
      url: 'https://www.instagram.com/accesorios.vannia/',
      seo_title: 'Vannia Online Store',
      meta_description: 'Vannia es una joyería ubicada en Cotija Mich', 
      meta_keywords: 'joyería, plata, plateria, regalos, anillos',
      mail_from_address: 'rafah.larios@gmail.com',
      default_currency: 'MXN', #update this
      facebook: 'accesorios.vannia',
      instagram: 'accesorios.vannia/', 
      twitter: 'rafah_larios'
    })

    puts ">>>Done!"
  
  end

end

#currency settings