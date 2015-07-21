# destroy and rebuild rails db
rnuke () {
  rake db:drop
  rake db:create
  rake db:schema:load
  rake db:migrate
  RAILS_ENV=test rake db:schema:load
  RAILS_ENV=test rake db:migrate
}

# precompile assets for production
rpc () {
  RAILS_ENV=production rake assets:precompile --trace
}
