class SurveysUser < ActiveRecord::Base
  belongs_to :users
  belongs_to :surveys

  validates :survey_id, :uniqueness => {:scope => :user_id}

end
