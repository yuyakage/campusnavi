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

  def self.search(search)
    if search && search != ""
      words = search.to_s.split(" ")
      columns = ["university", "faculty", "department", "professor", "subject"]
      query = []
      result = []
 
      columns.each do |column|
        query << ["#{column} LIKE ?"]
      end
 
      words.each_with_index do |w, index|
        if index == 0
          result[index] = where([query.join(" OR "), "%#{w}%", "%#{w}%", "%#{w}%", "%#{w}%", "%#{w}%"])
        else
          result[index] = result[index-1].where([query.join(" OR "), "%#{w}%", "%#{w}%", "%#{w}%", "%#{w}%", "%#{w}%"])
        end
      end
      return result[words.length-1]
    else
      all
    end
  end

  private

    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
