class FileUploadAttachmentsController < ApplicationController
  before_action :set_file_upload_attachment, only: [:show, :edit, :update, :destroy]

  # GET /file_upload_attachments
  # GET /file_upload_attachments.json
  def index
    @file_upload_attachments = FileUploadAttachment.all
  end

  # GET /file_upload_attachments/1
  # GET /file_upload_attachments/1.json
  def show
  end

  # GET /file_upload_attachments/new
  def new
    @file_upload_attachment = FileUploadAttachment.new
  end

  # GET /file_upload_attachments/1/edit
  def edit
  end

  # POST /file_upload_attachments
  # POST /file_upload_attachments.json
  def create
    @file_upload_attachment = FileUploadAttachment.new(file_upload_attachment_params)

    respond_to do |format|
      if @file_upload_attachment.save
        format.html { redirect_to @file_upload_attachment, notice: 'File upload attachment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @file_upload_attachment }
      else
        format.html { render action: 'new' }
        format.json { render json: @file_upload_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_upload_attachments/1
  # PATCH/PUT /file_upload_attachments/1.json
  def update
    respond_to do |format|
      if @file_upload_attachment.update(file_upload_attachment_params)
        format.html { redirect_to @file_upload_attachment, notice: 'File upload attachment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @file_upload_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_upload_attachments/1
  # DELETE /file_upload_attachments/1.json
  def destroy
    @file_upload_attachment.destroy
    respond_to do |format|
      format.html { redirect_to file_upload_attachments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_upload_attachment
      @file_upload_attachment = FileUploadAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def file_upload_attachment_params
      params.require(:file_upload_attachment).permit(:file_upload_id, :scenario)
    end
end
