class Diezanu < ActiveRecord::Base
  def self.search(search, page)
		where(['upper(valor) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("valor")
   end
end
