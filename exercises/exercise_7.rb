require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: { in: [40, 200] }
  validates :store_id, presence: true

end

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3, message: "Name Must be more than 3 characters" }
  validates :annual_revenue, presence: true
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :atleast_mens_womens

  def atleast_mens_womens
    if !mens_apparel.present? && !womens_apparel.present?
      puts "ERROR"
      errors.add(:apparel, "must carry at least one of the men's or women's apparel")
    end
  end
end

puts "What is the name of a new Store?"
new_store = gets.chomp
puts "What is the annual revenue?"
new_revenue = gets.chomp.to_i

@new_store = Store.create(name: new_store, annual_revenue: new_revenue, mens_apparel: true, womens_apparel: true)

@new_store.valid? ? (puts "Saving") : (puts @new_store.errors.messages)