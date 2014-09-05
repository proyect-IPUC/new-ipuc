class Cancion < ActiveRecord::Base
	def self.search(search, page)
		where(['upper(Cancion) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("Cancion")
   end
   

     validates :cancion, uniqueness: { message: "cancion ingresada ya existe" }
     validates :letra, uniqueness: { message: "letra ingresada ya existe" }


end
