# This migration comes from rich (originally 20170212124600)
class AddParentColumnToRich < ActiveRecord::Migration[6.0]
  def change
		add_column :rich_rich_files, :parent_id, :integer, :default => 0
  end
end
