# == Schema Information
#
# Table name: sales_groups
#
#  id         :integer          not null, primary key
#  desc       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sales_group do
    desc "MyString"
  end
end
