# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Board.destroy_all

test = ["rocket1", "sugahnugget", "missMonae", "moneyman360"]

3.times do
    User.create(username: test.sample)
end

b1 = Board.create(theme: "Rick and Morty", difficulty: "Easy", score: 0, user_id: 1)

# VECTOR_ICONS = []
# RM_ICONS = []

# content = File.open("rickandmorty.txt")
# ram_data = JSON.parse(content.read)

# ram_data["results"].each do |result|
#     RM_ICONS << result["image"]
# end

# card_1 = RM_ICONS.sample
# sample_game1 = []