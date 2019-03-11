class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :article, index: true
      t.belongs_to :user, index: true
      t.text :description
      t.timestamps
    end
  end
end
