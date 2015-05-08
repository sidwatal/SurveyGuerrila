class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title, null: false
      t.integer :creator_id, null: false

      t.timestamps
    end
  end
end
