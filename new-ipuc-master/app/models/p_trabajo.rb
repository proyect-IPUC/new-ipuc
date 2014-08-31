class PTrabajo < ActiveRecord::Base
  def self.search(search, page)
		where(['upper(NombrePlanTrabajo) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 3).order("NombrePlanTrabajo")
   end
end
