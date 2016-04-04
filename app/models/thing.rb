class Thing < ActiveRecord::Base
  # Associations

  belongs_to :creator, class_name: User

  ###################################

  validates :title, presence: true
  validates :description, presence: true, length: {maximum: 255}
  validates :location, presence: true, length: {maximum: 30}
  validates :price, presence: true

  default_scope -> {order('title desc')}

  end
