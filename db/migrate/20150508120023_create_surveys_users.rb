class CreateSurveysUsers < ActiveRecord::Migration
  def change
    create_table :surveys_users do |t|
      t.integer :user_id, null: false
      t.integer :survey_id, null: false
      t.index [:user_id, :survey_id], :unique => true
      t.text :comment

      t.timestamps
    end
  end
end
