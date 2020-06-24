class CreateActiveStorageFolderTables < ActiveRecord::Migration[5.2]
  def change
    create_table :active_storage_folders do |t|
      t.string :folder_name
      t.integer :parent_id
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end

    create_table :active_storage_folder_attachments do |t|
      t.integer :active_storage_folder_id
      t.integer :active_storage_attachment_id
      t.datetime :created_at, null: false
    end
  end
end
