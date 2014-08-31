class Otrosing < ActiveRecord::Base
   def self.search(search, page)
		where(['upper(actividad) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("actividad")
   end
end
