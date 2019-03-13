class CreateTictactoes < ActiveRecord::Migration[5.2]
  def change
    create_table :tictactoes do |t|
    	t.integer :status
      t.timestamps
    end
  end
end
