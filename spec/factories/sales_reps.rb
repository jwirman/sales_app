# == Schema Information
#
# Table name: sales_reps
#
#  id             :integer          not null, primary key
#  sales_group_id :integer
#  fname          :string(255)
#  lname          :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#
# Indexes
#
#  index_sales_reps_on_sales_group_id  (sales_group_id)
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sales_rep do
    sales_group
    fname "MyString"
    lname "MyString"
  end
end
