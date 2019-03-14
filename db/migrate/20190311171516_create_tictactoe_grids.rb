class CreateTictactoeGrids < ActiveRecord::Migration[5.2]
  def change
    create_table :tictactoe_grids do |t|
    	t.belongs_to :tictactoe, index: true
    	t.string :a1
    	t.string :a2
    	t.string :a3
    	t.string :b1
    	t.string :b2
    	t.string :b3
    	t.string :c1
    	t.string :c2
    	t.string :c3
    	t.integer :player
      t.timestamps
    end
  end
end
