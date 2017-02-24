class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:google_oauth2]
  has_many :user_projects
  has_many :projects, through: :user_projects
  has_many :comments, dependent: :destroy
  validates :photo, presence: true


  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(:email => data["email"]).first
    if user
      user.update(first_name: data["name"].split(" ").first)
    else
      user = User.create!(first_name: data["name"].split(" ").first,
       email: data["email"],
       remote_photo_url: data["image"],
       password: Devise.friendly_token[0,20]
      )
     end
  end



end

#     user
# end
