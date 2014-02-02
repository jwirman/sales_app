# == Schema Information
#
# Table name: locations
#
#  id           :integer          not null, primary key
#  sales_rep_id :integer
#  name         :string(255)
#  line1        :string(255)
#  line2        :string(255)
#  city         :string(255)
#  state        :string(255)
#  zip          :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_locations_on_sales_rep_id  (sales_rep_id)
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    sales_rep
    name "MyString"
    line1 "MyString"
    line2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
  end
end
