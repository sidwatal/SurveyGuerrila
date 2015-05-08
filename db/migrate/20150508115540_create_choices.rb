class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :question_id, null: false
      t.string :choice_text, null: false

      t.timestamps
    end
  end
end
