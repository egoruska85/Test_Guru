class User < ApplicationRecord
  has_many :tests_users
  has_many :tests, through: :tests_users
  belongs_to :test

  def finding(level:)
    tests.where(level: level)
  end
end
