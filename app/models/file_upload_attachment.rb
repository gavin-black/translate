class FileUploadAttachment < ActiveRecord::Base
    mount_uploader :scenario, ScenarioUploader
    belongs_to :file_upload
    attr_accessible :scenario
end
