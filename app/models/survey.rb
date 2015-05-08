class Survey < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :questions
  has_many :surveys_users

  has_many :choices, through: :questions
  has_many :responses, through: :choices
end
