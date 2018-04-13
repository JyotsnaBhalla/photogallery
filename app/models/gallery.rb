class Gallery < ApplicationRecord
	has_attached_file :image, styles: { medium: "200x200>", thumb: "100x100>", large: "300x300" }

end
