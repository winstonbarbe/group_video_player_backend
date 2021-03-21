class AddLengthToVideo < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :length, :string
  end
end
