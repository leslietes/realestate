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
  unit_types = {
    :studio => [true, false].sample,
    :one_bedroom => [true, false].sample,
    :two_bedroom => [true, false].sample,
    :three_bedroom => [true, false].sample,
    :penthouse => [true, false].sample,
    :loft => [true, false].sample
  }
  uts = []
  if unit_types[:studio]
    uts.push 'Studio'
  end
  if unit_types[:one_bedroom]
    uts.push '1Br'
  end
  if unit_types[:two_bedroom]
    uts.push '2Br'
  end
  if unit_types[:three_bedroom]
    uts.push '3Br'
  end
  if unit_types[:penthouse]
    uts.push 'Penthouse'
  end
  if unit_types[:loft]
    uts.push 'Loft'
  end
  if uts.length == 0
    uts.push 'Studio'
  end
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
    unit_types: uts.join(','),
    unit_sizes: "#{from}…#{to}m²",
    studio: unit_types[:studio],
    one_bedroom: unit_types[:one_bedroom],
    two_bedroom: unit_types[:two_bedroom],
    three_bedroom: unit_types[:three_bedroom],
    penthouse: unit_types[:penthouse],
    loft: unit_types[:loft],
    studio_size: unit_types[:studio] ? rand(20..300) : nil,
    one_bedroom_size: unit_types[:one_bedroom] ? rand(20..300) : nil,
    two_bedroom_size: unit_types[:two_bedroom] ? rand(20..300) : nil,
    three_bedroom_size: unit_types[:three_bedroom] ? rand(20..300) : nil,
    penthouse_size: unit_types[:penthouse] ? rand(20..300) : nil,
    loft_size: unit_types[:loft] ? rand(20..300) : nil,
    studio_price: unit_types[:studio] ? rand(800000..6000000) : 0,
    one_bedroom_price: unit_types[:one_bedroom] ? rand(800000..6000000) : 0,
    two_bedroom_price: unit_types[:two_bedroom] ? rand(800000..6000000) : 0,
    three_bedroom_price: unit_types[:three_bedroom] ? rand(800000..6000000) : 0,
    penthouse_price: unit_types[:penthouse] ? rand(800000..6000000) : 0,
    loft_price: unit_types[:loft] ? rand(800000..6000000) : 0,
    studio_monthly: unit_types[:studio] ? rand(1300..6000) : 0,
    one_bedroom_monthly: unit_types[:one_bedroom] ? rand(1300..6000) : 0,
    two_bedroom_monthly: unit_types[:two_bedroom] ? rand(1300..6000) : 0,
    three_bedroom_monthly: unit_types[:three_bedroom] ? rand(1300..6000) : 0,
    penthouse_monthly: unit_types[:penthouse] ? rand(1300..6000) : 0,
    loft_monthly: unit_types[:loft] ? rand(1300..6000) : 0,
    studio_layout: unit_types[:studio] ? File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg")) : nil,
    one_bedroom_layout: unit_types[:one_bedroom] ? File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg")) : nil,
    two_bedroom_layout: unit_types[:two_bedroom] ? File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg")) : nil,
    three_bedroom_layout: unit_types[:three_bedroom] ? File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg")) : nil,
    penthouse_layout: unit_types[:penthouse] ? File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg")) : nil,
    loft_layout: unit_types[:loft] ? File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg")) : nil,
    photo: File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg")),
    logo: File.new(Rails.root.join('db', 'data', 'logo', rand(1..6).to_s+".png")),
    location_map: File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg"))
  )
  property.save!
  counter = counter + 1
end


# create preowned locations
counter = 1
30.times do
  title = titles_1.sample + " " + titles_2.sample
  from = rand(12..25)
  to = rand(40..130)

  unit_type = ['Studio', '1 Bedroom', '2 Bedroom', '3 Bedroom', 'Penthouse', 'Loft'].sample
  
  property = PreownedProperty.new(
    name: title = titles_1.sample + " " + titles_2.sample,
    permalink: title.parameterize+"-"+counter.to_s,
    address: 'I.T. Park, Lahug, Cebu City',
    location: titles_1.sample,
    project_name: titles_1.sample,
    developer_id: Developer.order('RANDOM()').first.id,
    view: ["Mountain","Sea","City"].sample,
    orientation: ["East Facing","West Facing","South Facing","North Facing"].sample,
    unit_type: ['Studio', '1Br', '2Br', '3Br', 'Penthouse', 'Loft'].sample,
    unit_size: 23,
    bedrooms: 2,
    bathrooms: 1,
    parking_slot: 1,
    furnished: [true, false].sample,
    monthly_dues: prices_from.sample,
    price: prices_to.sample,
    latitude: rand(10.24546...10.447344),
    longitude: rand(123.754043...124.003295),
    elevators: [true, false].sample,
    swimming_pool: [true, false].sample,
    fitness_gym: [true, false].sample,
    parking: [true, false].sample,
    function_room: [true, false].sample,
    retail_area: [true, false].sample,
    childrens_play_area: [true, false].sample,
    garden: [true, false].sample,
    shooting_court: [true, false].sample,
    laundry_room: [true, false].sample,
    mail_room: [true, false].sample,
    security: [true, false].sample,
    lobby: [true, false].sample,
    property_management_services: [true, false].sample,
    clubhouse: [true, false].sample,
    back_up_power: [true, false].sample,
    status: ["Sold","New"].sample,
    hidden: false,
    rent_or_sale: ["Rent","Sale"].sample,
    photo: File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg")),
    logo: File.new(Rails.root.join('db', 'data', 'logo', rand(1..6).to_s+".png")),
    location_map: File.new(Rails.root.join('db', 'data', 'apartments', rand(1..18).to_s+".jpg"))
  )
  property.save!
  counter = counter + 1
end

