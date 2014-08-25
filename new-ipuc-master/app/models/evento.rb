class Evento < ActiveRecord::Base
	def self.search(search, page)
		where(['upper(evento) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("evento")
   end
end
