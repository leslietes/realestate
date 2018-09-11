# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.create!([{area: 'I.T. Park'}, { area: 'Cebu Business Park'}, {area: 'Downtown'}, {area: 'Capitol'}, {area: 'Mango Avenue'}, {area: 'Talamban'}, {area: 'Lahug'}, {area: 'Mabolo'}, {area: 'North Reclamation Area'}, {area: 'SRP'}, {area: 'Gorordo'} ])

Article.create!(title: 'Manhattan Real Estate Feels Summer Slump',
  permalink: 'manhattan-real-estate',
  teaser: 'Manhattan’s real estate market is feeling the lazy days of summer as buyers and sellers head out of town for vacation, leading transactions to fall in the city, according to the weekly Olshan Report on Monday.',
  body: 'Manhattan’s real estate market is feeling the lazy days of summer as buyers and sellers head out of town for vacation, leading transactions to fall in the city, according to the weekly Olshan Report on Monday.',
  published_date: 'July 16, 2018',
  published_at: 'www.mansionglobal.com')

Setting.create!(agency_name: "Cebu Condo",
  agent_name: 'Mickey Mouse',
  production_email: 'inquiries@cebucondo.ph',
  sales_email: 'sales@cebucondo.ph',
  office_no: '032-123-4567',
  mobile_no: '0917-123-4567',
  office_address: 'Cebu City',
  facebook: 'www.facebook.com/cebucondo.ph',
  twitter: 'www.twitter.com/cebucondo.ph',
  instagram: 'www.instagram.com/cebucondo.ph',
  about_us: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu rutrum mi, et tempor lorem. Mauris sed efficitur nisi, sit amet vulputate enim. Morbi vel velit id risus accumsan tempus a commodo tortor. Mauris a placerat felis. Aliquam et turpis tincidunt, auctor dolor ut, fringilla erat. Morbi hendrerit mauris urna, et luctus est lacinia et. In hac habitasse platea dictumst. Suspendisse magna turpis, luctus ultricies auctor id, commodo a nunc. Donec augue dolor, posuere sed vestibulum ut, venenatis eget dolor. Praesent vehicula mauris eros, at dictum felis vehicula eu. Sed velit mi, lobortis quis vehicula placerat, cursus pellentesque ligula. Suspendisse ut odio odio. Aliquam in erat non nibh convallis euismod. Duis convallis, dui in imperdiet viverra, nunc tortor iaculis ante, id accumsan mauris nibh ut nisl. Aenean elit ligula, sollicitudin id est eu, lacinia convallis mauris.',
  topic1: 'Why Us',
  topic2: 'Services',
  topic3: 'Inclusions',
  topic4: 'Fees',
  topic5: 'Questions',
  answer1:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu rutrum mi, et tempor lorem. Mauris sed efficitur nisi, sit amet vulputate enim. Morbi vel velit id risus accumsan tempus a commodo tortor. Mauris a placerat felis. Aliquam et turpis tincidunt, auctor dolor ut, fringilla erat. Morbi hendrerit mauris urna, et luctus est lacinia et. In hac habitasse platea dictumst. Suspendisse magna turpis, luctus ultricies auctor id, commodo a nunc. Donec augue dolor, posuere sed',
  answer2:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu rutrum mi, et tempor lorem. Mauris sed efficitur nisi, sit amet vulputate enim. Morbi vel velit id risus accumsan tempus a commodo tortor. Mauris a placerat felis. Aliquam et turpis tincidunt, auctor dolor ut, fringilla erat. Morbi hendrerit mauris urna, et luctus est lacinia et. In hac habitasse platea dictumst. Suspendisse magna turpis, luctus ultricies auctor id, commodo a nunc. Donec augue dolor, posuere sed',
  answer3:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu rutrum mi, et tempor lorem. Mauris sed efficitur nisi, sit amet vulputate enim. Morbi vel velit id risus accumsan tempus a commodo tortor. Mauris a placerat felis. Aliquam et turpis tincidunt, auctor dolor ut, fringilla erat. Morbi hendrerit mauris urna, et luctus est lacinia et. In hac habitasse platea dictumst. Suspendisse magna turpis, luctus ultricies auctor id, commodo a nunc. Donec augue dolor, posuere sed',
  answer4:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu rutrum mi, et tempor lorem. Mauris sed efficitur nisi, sit amet vulputate enim. Morbi vel velit id risus accumsan tempus a commodo tortor. Mauris a placerat felis. Aliquam et turpis tincidunt, auctor dolor ut, fringilla erat. Morbi hendrerit mauris urna, et luctus est lacinia et. In hac habitasse platea dictumst. Suspendisse magna turpis, luctus ultricies auctor id, commodo a nunc. Donec augue dolor, posuere sed',
  management_text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu rutrum mi, et tempor lorem. Mauris sed efficitur nisi, sit amet vulputate enim. Morbi vel velit id risus accumsan tempus a commodo tortor. Mauris a placerat felis. Aliquam et turpis tincidunt, auctor dolor ut, fringilla erat. Morbi hendrerit mauris urna, et luctus est lacinia et. In hac habitasse platea dictumst. Suspendisse magna turpis, luctus ultricies auctor id, commodo a nunc. Donec augue dolor, posuere sed',
  featured1: File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg")),
  featured2: File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg")),
  featured3: File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg")),
  featured4: File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg")),
  featured5: File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg"))
)

Agent.create!(agent_name: 'Mickey Mouse',
  mobile_no: '0917-123-4567',
  email_address: 'mickeymouse@cebucondo.ph',
  position: 'Manager',
  avatar: File.new(Rails.root.join('db', 'data', 'avatar', '1.jpeg'))
)

Developer.create!(developer: 'Ayala Land', permalink: 'ayala-land', image: File.new(Rails.root.join('db', 'data', 'developer', '1.png')))
Developer.create!(developer: 'Cebu Landmasters', permalink: 'cebu-landmasters', image: File.new(Rails.root.join('db', 'data', 'developer', '2.jpeg')))
Developer.create!(developer: 'Primary Properties', permalink: 'primary-properties', image: File.new(Rails.root.join('db', 'data', 'developer', '3.png')))

ApartmentType.create(title: 'Studio', short_title: 'Studio')
ApartmentType.create(title: '1 Bedroom', short_title: '1Br')
ApartmentType.create(title: '2 Bedroom', short_title: '2Br')
ApartmentType.create(title: '3 Bedroom', short_title: '3Br')
ApartmentType.create(title: 'Penthouse', short_title: 'Penthouse')
ApartmentType.create(title: 'Loft', short_title: 'Loft')

statuses = ['Completed','Preselling']
titles_1 = [
  'Capitol',
  'Mabolo',
  'Talamban',
  'Gorordo'
]

titles_2 = [
  'Real Estate',
  'Properties',
  'Home Services',
  'Landmark',
  'Reserve',
  'Estates',
  'Homes'
]

prices_from = [
  200000,
  500000,
  700000,
  900000,
  1200000,
  1100000
]

prices_to = [
  2000000,
  3000000,
  4000000,
  5000000,
  5500000,
  7500000
]

# create test locations
counter = 1
30.times do
  title = titles_1.sample + " " + titles_2.sample
  from = rand(12..25)
  to = rand(40..130)
  property = Property.new(
    developer_id: Developer.order('RANDOM()').first.id,
    name: title,
    price_from: prices_from.sample,
    price_to: prices_to.sample,
    location: titles_1.sample,
    status: statuses.sample,
    permalink: title.parameterize+"-"+counter.to_s,
    latitude: rand(10.24546...10.447344),
    longitude: rand(123.754043...124.003295),
    address: 'I.T. Park, Lahug, Cebu City',
    featured: rand(1..4) == 4 ? true : false,
    unit_sizes: "#{from}…#{to}m²",
    photo: File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg")),
    logo: File.new(Rails.root.join('db', 'data', 'logo', rand(1..6).to_s+".png")),
    location_map: File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg"))
  )
  property.save
  ApartmentType.limit(rand(1..4)).each do |at|
    Apartment.create(
      property_id: property.id,
      apartment_type_id: at.id,
      layout_image: File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg")),
      layout_text: "Text description",
      size: rand(20..300),
      price: rand(800000..6000000),
      price_monthly: rand(1300..6000)
    )
  end

  counter = counter + 1
end



# Property.create!(developer_id: 1, name: 'Avida Land', permalink: 'avida-land', address: 'I.T. Park, Lahug, Cebu City',
#   location: 'Lahug', status: 'Completed',
#   unit_types: 'Studio, 1-br, 2-br',
#   unit_sizes: '16-30 sq. m.',
#   price_range: 'P1.5 - 4.5 M')
# Property.create!(developer_id: 3, name: 'La Guardia Flats 2', permalink: 'la-guardia-2', address: 'I.T. Park, Lahug, Cebu City',
#     location: 'Lahug', status: 'Completed',
#     unit_types: 'Studio',
#     unit_sizes: '18 sq. m.',
#     price_range: 'P1.5 - 2.8 M')
