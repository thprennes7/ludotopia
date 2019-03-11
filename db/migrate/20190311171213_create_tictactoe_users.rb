class CreateTictactoeUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :tictactoe_users do |t|

      t.timestamps
    end
  end
end
