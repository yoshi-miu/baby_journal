class Child < ApplicationRecord
  belongs_to :user
  has_many :breasts, dependent: :destroy
  has_many :bottles, dependent: :destroy
  has_many :pees, dependent: :destroy
  has_many :poops, dependent: :destroy
end
