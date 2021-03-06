class Place < ActiveRecord::Base
  searchkick

  belongs_to :user
  has_many :reviews

  has_attached_file :image,
    styles: {
      small: "400x300#", thumb: "100x100>"
    },
    default_url: "http://telclarity.com/wp/wp-content/themes/pantherhead/assets/images/carousel-no-image-cropped-400x300.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
