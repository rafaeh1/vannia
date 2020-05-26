Vannia online store
===================================================


## :star: What is Vannia?
Vannia is a custom spree store for [accesorios-vannia](https://www.instagram.com/accesorios.vannia/)


## :gear: Required Tools
* [ruby 2.6.3](https://gorails.com/setup/ubuntu/16.04#ruby-rbenv)
* [rails 6.0.2](https://gorails.com/setup/ubuntu/16.04#ruby-rbenv)



## :bulb: Installation

```
bundle exec rails db:migrate
bundle exec rails db:seed
bundle exec rake spree_sample:load
bundle exec rails g spree:frontend:copy_storefront
```

## :gear:  Setup

```
bundle exec rake vannia:create_store
bundle exec rake vannia:tropicalize_app
bundle exec rake vannia:create_taxonomies
```


##  :rocket: Example
```
# Enter into project folder
rails s
```

##  :question: Get help
Please email to [rafah.larios@gmail.com](mailto:rafah.larios@gmail.com)






