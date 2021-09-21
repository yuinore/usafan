# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user = User.create!(name: "hato", email: "hato@example.com", password: "password", password_confirmation: "password")
# UserIdentity.create!(user_id: user.id, stamina: 0, stamina_updated_at: Time.current)

Card.create!(name: "チノ", graffiti_id: 1)

Trade.create(dst_entity_type: 3, dst_entity_id: 1, dst_amount: 1, src_1_entity_type: 1, src_1_entity_id: 1, src_1_amount: 100)
