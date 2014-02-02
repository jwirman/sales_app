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

class SalesRep < ActiveRecord::Base

  belongs_to :sales_group
  has_one :location

  def to_s
    "#{fname} #{lname}"
  end

end
