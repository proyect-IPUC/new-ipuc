class Membrecium < ActiveRecord::Base
has_many :modulos
	

	def self.search(search, page)
		where(['upper(nombre) like ?',
			"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("nombre")
	end
has_attached_file :cover, :styles  =>  {  :medium  =>  "300x300>" ,  :thumb  =>  "100x100>"  },  :default_url  =>  "/images/:style/foto.png"
validates_attachment_content_type :cover, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
