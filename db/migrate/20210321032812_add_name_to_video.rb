class AddNameToVideo < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :name, :string
  end
end
