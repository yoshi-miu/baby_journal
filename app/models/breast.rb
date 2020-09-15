class Breast < ApplicationRecord
  belongs_to :child
  before_save :breast_time_save
  default_scope -> { order(start_time: :asc) }

  with_options presence: true do
    validates :side
    validates :start_time
    validates :end_time, numericality: { greater_than: :start_time, message: "must be greater than start time."}
  end

  def breast_time_save
    start_time = read_attribute(:start_time)
    end_time = read_attribute(:end_time)
    breast_time = end_time - start_time
    write_attribute(:breast_time, breast_time)
  end
end
