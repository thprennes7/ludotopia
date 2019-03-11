class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.belongs_to :game, index: true
      t.belongs_to :user, index: true
      t.boolean :victory
      t.timestamps
    end
  end
end
