module UsersHelper

	def rolA(admin)
	    if admin
	     	"<span class='label label-success'>Administrador</span>".html_safe 
	    else

	 	end
	end
	def rolU(usuario)
		if usuario
			"<span class='label label-info'>Usuario</span>".html_safe
		else
			
		end
	end
end

