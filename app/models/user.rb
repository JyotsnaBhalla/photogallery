class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :albums
  has_many :comments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_attached_file :profile_picture, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :profile_picture, content_type: /\Aimage\/.*\z/
end
