# == Schema Information
#
# Table name: sales_groups
#
#  id         :integer          not null, primary key
#  desc       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class SalesGroup < ActiveRecord::Base

  has_many :sales_reps

  def to_s
    desc
  end

end
