class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users
  has_one :user

  def self.find_test_by_category(name)
    joins(:category).where(category: {title: name}).order(id: :desc)
  end
end
