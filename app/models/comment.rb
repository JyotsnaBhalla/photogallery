class Comment < ApplicationRecord
  belongs_to :picture , -> { includes :album }
  belongs_to :user
  validates :body, presence: true
end
