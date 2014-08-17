require 'test_helper'

class FileUploadAttachmentsControllerTest < ActionController::TestCase
  setup do
    @file_upload_attachment = file_upload_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:file_upload_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create file_upload_attachment" do
    assert_difference('FileUploadAttachment.count') do
      post :create, file_upload_attachment: { file_upload_id: @file_upload_attachment.file_upload_id, scenario: @file_upload_attachment.scenario }
    end

    assert_redirected_to file_upload_attachment_path(assigns(:file_upload_attachment))
  end

  test "should show file_upload_attachment" do
    get :show, id: @file_upload_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @file_upload_attachment
    assert_response :success
  end

  test "should update file_upload_attachment" do
    patch :update, id: @file_upload_attachment, file_upload_attachment: { file_upload_id: @file_upload_attachment.file_upload_id, scenario: @file_upload_attachment.scenario }
    assert_redirected_to file_upload_attachment_path(assigns(:file_upload_attachment))
  end

  test "should destroy file_upload_attachment" do
    assert_difference('FileUploadAttachment.count', -1) do
      delete :destroy, id: @file_upload_attachment
    end

    assert_redirected_to file_upload_attachments_path
  end
end
