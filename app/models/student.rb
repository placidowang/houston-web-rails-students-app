class Student < ApplicationRecord
  belongs_to :instructor
  validates :name, presence: true
  validates :age, numericality: { greater_than: 18 }
  # validates :age, numericality: { only_integer: true, greater_than: 19 }
end
