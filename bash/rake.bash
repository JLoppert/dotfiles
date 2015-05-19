# destroy and rebuild rails db
rnuke () {
  rake db:drop
  rake db:create
  rake db:schema:load
  RAILS_ENV=test rake db:create
  RAILS_ENV=test rake db:schema:load
}