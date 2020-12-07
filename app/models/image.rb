class Image < ApplicationRecord
  belongs_to :user

  mount_uploader :picture, PictureUploader

  validate :picture_size
  
  private

  def picture_size
    if picture.size > 1.megabytes
      errors.add(:picture, "should be less than 1MB")
    end
  end

end
