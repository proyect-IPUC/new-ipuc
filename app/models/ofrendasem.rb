class Ofrendasem < ActiveRecord::Base
   def self.search(search, page)
    where(['upper(valor) like ?',
    "%#{search}%".upcase]).paginate(page: page, per_page: 3).order("valor")
   end


   def cargar_ofrendasem(valor)
       ofrendasems = Ofrendasem.new
       ofrendasems.valor = valor.to_i
       ofrendasems.dia = Time.now.to_s
       ofrendasems.save
   end

end
