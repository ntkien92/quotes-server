class Quote < ActiveRecord::Base
  scope :get_items, ->(index) {
    where('id > ?', index)
  }
end
