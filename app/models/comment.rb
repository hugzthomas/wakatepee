 class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :sub_milestone
  validates :content, presence: true
end
