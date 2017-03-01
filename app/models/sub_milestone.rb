class SubMilestone < ApplicationRecord
  belongs_to :milestone
  belongs_to :project
  has_many :comments, dependent: :destroy
  mount_uploader :file, FileUploader
end
