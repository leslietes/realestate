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
  management_text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu rutrum mi, et tempor lorem. Mauris sed efficitur nisi, sit amet vulputate enim. Morbi vel velit id risus accumsan tempus a commodo tortor. Mauris a placerat felis. Aliquam et turpis tincidunt, auctor dolor ut, fringilla erat. Morbi hendrerit mauris urna, et luctus est lacinia et. In hac habitasse platea dictumst. Suspendisse magna turpis, luctus ultricies auctor id, commodo a nunc. Donec augue dolor, posuere sed'

)

Agent.create!(agent_name: 'Mickey Mouse',
  mobile_no: '0917-123-4567',
  email_address: 'mickeymouse@cebucondo.ph',
  position: 'Manager'
)

Developer.create!(developer: 'Ayala Land', permalink: 'ayala-land')
Developer.create!(developer: 'Cebu Landmasters', permalink: 'cebu-landmasters')
Developer.create!(developer: 'Primary Properties', permalink: 'primary-properties')

Property.create!(developer_id: 1, name: 'Avida Land', permalink: 'avida-land', address: 'I.T. Park, Lahug, Cebu City',
  location: 'Lahug', status: 'Completed',
  unit_types: 'Studio, 1-br, 2-br',
  unit_sizes: '16-30 sq. m.',
  price_range: 'P1.5 - 4.5 M')
Property.create!(developer_id: 3, name: 'La Guardia Flats 2', permalink: 'la-guardia-2', address: 'I.T. Park, Lahug, Cebu City',
    location: 'Lahug', status: 'Completed',
    unit_types: 'Studio',
    unit_sizes: '18 sq. m.',
    price_range: 'P1.5 - 2.8 M')
