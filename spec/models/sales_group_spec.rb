# == Schema Information
#
# Table name: sales_groups
#
#  id         :integer          not null, primary key
#  desc       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe SalesGroup do

  it { should have_many :sales_reps }

end
