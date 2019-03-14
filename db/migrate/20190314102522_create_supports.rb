class CreateSupports < ActiveRecord::Migration[5.2]
  def change
    create_table :supports do |t|
      t.string :email
      t.string :title
      t.text :description
      t.string :last_name

      t.timestamps
    end
  end
end
