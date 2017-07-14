class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    Product.destroy_all
    User.destroy_all
    OrderItem.destroy_all
    Order.destroy_all
    10.times do |i|
      Product.create!(name: Faker::Lorem.word, image: File.open("#{Rails.root}/public/seed_images/#{i}.jpg"),price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop)
    end
  end
end

Seed.begin
