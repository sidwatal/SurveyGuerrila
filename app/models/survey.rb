class Survey < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :questions, dependent: :destroy
  has_many :surveys_users, dependent: :destroy

  has_many :choices, through: :questions
  has_many :responses, through: :choices
end
