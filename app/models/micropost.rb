class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :professor, presence: true, length: { maximum: 20 }
  validates :subject, presence: true, length: { maximum: 20 }
  validates :university, presence: true, length: { maximum: 20 }
  validates :faculty, presence: true, length: { maximum: 20 }
  validates :department, presence: true, length: { maximum: 20 }
  validate  :picture_size

  private

    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end

