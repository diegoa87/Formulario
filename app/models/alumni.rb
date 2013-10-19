class Alumni < ActiveRecord::Base
  
  attr_accessible :description, :firstname, :lastname, :image, :image2
  has_attached_file :image, styles: { medium: "320x240>"}
	has_attached_file :image2, styles: { medium: "320x240>"}
  validates :description, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true

    validates_attachment :image, presence: true,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }

end
