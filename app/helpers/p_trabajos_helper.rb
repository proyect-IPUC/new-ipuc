module PTrabajosHelper

def aprobado(aprobado)
     if aprobado 
     	"<span class='label label-success'>Aprobado</span>".html_safe 
     else
     	"<span class='label label-danger'>NO Aprobado</span>".html_safe
     end

	end
end
