class Album < ApplicationRecord
	belongs_to :user
	has_many :pictures ,dependent: :destroy
	validates :title, presence: true,
                    length: { minimum: 5 }
    has_attached_file :album_cover, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :album_cover, content_type: /\Aimage\/.*\z/
end
