class AddFabToPerson < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :fab, :string
  end
end
