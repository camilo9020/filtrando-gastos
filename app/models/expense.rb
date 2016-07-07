# == Schema Information
#
# Table name: expenses
#
#  id          :integer          not null, primary key
#  category_id :integer
#  date        :date
#  concept     :string
#  amount      :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Expense < ActiveRecord::Base
  belongs_to :category
  scope :category_id, -> (category_id) { where category_id: category_id }
  scope :concept, -> (concept) { where("concept like ?", "%#{concept}%")}

end
