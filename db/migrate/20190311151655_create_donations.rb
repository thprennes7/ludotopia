class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.belongs_to :game, index: true
      t.belongs_to :user, index: true
      t.string :stripe_customer_id
      t.decimal :amount
      t.timestamps
    end
  end
end
