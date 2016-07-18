class Place < ActiveRecord::Base

  belongs_to :user

  has_attached_file :image,
    styles: {
      medium: "400x300#", thumb: "100x100>"
    },
    default_url: "http://davidlinzey.info/wp-content/themes/bh_courage/assets/images/placeholder_featured_image_:style.svg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
