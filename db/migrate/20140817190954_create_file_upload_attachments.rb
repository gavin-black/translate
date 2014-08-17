class CreateFileUploadAttachments < ActiveRecord::Migration
  def change
    create_table :file_upload_attachments do |t|
      t.integer :file_upload_id
      t.string :scenario

      t.timestamps
    end
  end
end
