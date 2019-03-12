class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.references :me, index: true
      t.references :friend, index: true 

      t.timestamps
    end
  end
end
