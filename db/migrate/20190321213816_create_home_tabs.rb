class CreateHomeTabs < ActiveRecord::Migration[5.2]
  def change
    create_table :home_tabs do |t|
      t.timestamps
    end
  end
end
