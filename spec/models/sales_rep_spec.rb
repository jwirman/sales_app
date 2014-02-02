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

require 'spec_helper'

describe SalesRep do

  it { should belong_to :sales_group }
  it { should have_one :location }

end
