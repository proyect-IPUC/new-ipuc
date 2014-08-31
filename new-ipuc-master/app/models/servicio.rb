class Servicio < ActiveRecord::Base
 def self.search(search, page)
		where(['upper(tipo) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("tipo")
   end
end
