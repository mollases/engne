# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create([{title: 'Jewerly'},{title: 'Ceramic Work'},{title: 'Metal Working'},{title: 'Painting'}])

status = 0;
7.times do
Project.create([
    :title       => "The Cube#{status}", 
    :member_id   => 1, 
    :category_id => 1, 
    :funds_due_date               => Date.new(2013,1,20),
    :estimated_completion_date    => Date.new(2013,1,21), 
    :estimated_investment_needed => 100.00,
    :estimated_costs             => 75.00,
    :number_of_shares=> 10,
    :why_description => "because I can",
    :how_description => "because of you",
    :project_status => status
    ])
status += 10;
end