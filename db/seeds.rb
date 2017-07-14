class Seed

Product.destroy_all

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop)
    end
  end
end

admin_list = [
  [ "Admin", "admin@admin.com", "password123456"],
]

admin_list.each do |name, email, password|
  User.create( name: name, email: email, password: password, admin: true )
end

Seed.begin
p "Created #{Product.count} products"
p "Created #{User.count} admin"
