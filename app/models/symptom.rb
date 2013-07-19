class Symptom < ActiveRecord::Base
  attr_accessible :content, :title, :order
  validates :title, :order, uniqueness: true

  before_create :set_order
  def set_order
    self.order = (Symptom.maximum(:order) || 0) + 1 unless self.order.present?
  end
end
