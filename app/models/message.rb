class Message < ActiveRecord::Base
    validates :name, length: { maximum: 20 }, presence: true
  validates :age, numericality: { only_integer: true , greater_than_or_equal_to: 0}
  def age=(value)
    value.tr!('０-９', '0-9') if value.is_a?(String)
    super(value)
  end
    validates :body, length: { minmum: 2, maximum: 30 }, presence: true
end