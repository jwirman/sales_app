# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

grp_one   = SalesGroup.create(desc: 'group one')
grp_two   = SalesGroup.create(desc: 'group two')
grp_three = SalesGroup.create(desc: 'group three')

rep_one   = SalesRep.create(sales_group: grp_one, fname: 'rep', lname: 'one')
rep_two   = SalesRep.create(sales_group: grp_two, fname: 'rep', lname: 'two')
rep_three = SalesRep.create(sales_group: grp_three, fname: 'rep', lname: 'three')

loc_one   = Location.create(sales_rep: rep_one,
                            name: 'location_one',
                            line1: '123 Main St.',
                            line2: '',
                            city:  'Reston',
                            state: 'VA',
                            zip: '20190')
loc_two   = Location.create(sales_rep: rep_two,
                            name: 'location_two',
                            line1: '3 Russell Wilson Dr.',
                            line2: '',
                            city:  'Seattle',
                            state: 'WA',
                            zip: '98101')
loc_three = Location.create(sales_rep: rep_three,
                            name: 'location_three',
                            line1: '18 Payton Manning Rd.',
                            line2: '',
                            city:  'Denver',
                            state: 'CO',
                            zip: '80012')
