class AddNameToTool < ActiveRecord::Migration[5.2]
  def change
    add_column :tools, :name, :string
  end
end
