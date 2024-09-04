class Attachment < ApplicationRecord
  belongs_to :product
  mount_uploader :image, AttachmentUploader
end
