class AddPermissionsToLists < ActiveRecord::Migration
  def change
    add_column :lists, :permissions, :string, :default => "public"
  end
end
