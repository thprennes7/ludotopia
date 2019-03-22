class AddTitleToHomeTabs < ActiveRecord::Migration[5.2]
  def change
    add_column :home_tabs, :title, :string
  end
end
