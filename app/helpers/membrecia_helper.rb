module MembreciaHelper
	def activo(activo)
     if activo 
     	"<span class='label label-success'>Activo</span>".html_safe 
     else
     	"<span class='label label-danger'>Inactivo</span>".html_safe
     end

	end

	def espiritu(espiritu)
     if espiritu 
     	"<span class='label label-primary'>Si</span>".html_safe 
     else
     	"<span class='label label-warning'>No</span>".html_safe
     end

	end
end

