class Quote < ActiveRecord::Base
  scope :get_items, ->(index) {
    where('id > ?', index)
  }
  validates :image, presence: true
  validates :type_quote, presence: true
end
