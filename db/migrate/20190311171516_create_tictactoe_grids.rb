class CreateTictactoeGrids < ActiveRecord::Migration[5.2]
  def change
    create_table :tictactoe_grids do |t|

      t.timestamps
    end
  end
end
