class CreateTictactoeUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :tictactoe_users do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :tictactoe, index: true
      t.timestamps
    end
  end
end
