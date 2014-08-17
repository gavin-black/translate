class FileUpload < ActiveRecord::Base
   has_many :file_upload_attachments
   accepts_nested_attributes_for :file_upload_attachments

   attr_accessible :title
end
