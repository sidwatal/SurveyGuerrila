class SurveysUser < ActiveRecord::Base
  belongs_to :users
  belongs_to :surveys

  #ZM: :+1:
  validates :survey_id, :uniqueness => {:scope => :user_id}

end
