class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id, null: false
      t.string :question_text, null: false

      t.timestamps
    end
  end
end
