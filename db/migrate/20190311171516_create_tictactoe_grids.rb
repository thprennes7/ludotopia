class CreateTictactoeGrids < ActiveRecord::Migration[5.2]
  def change
    create_table :tictactoe_grids do |t|
    	t.belongs_to :tictactoe, index: true
    	t.string :a1
    	t.string :a2
    	t.string :a3
    	t.string :a4
    	t.string :a5
    	t.string :a6
    	t.string :a7
    	t.string :a8
    	t.string :a9
    	t.integer :player
      t.timestamps
    end
  end
end
