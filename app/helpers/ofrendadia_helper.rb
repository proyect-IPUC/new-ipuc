module OfrendadiaHelper
def semanal(cont)
		if cont >=5
			"<div class='alert alert-dismissable alert-success'>
			  QUieres pasar a la ofrenda semanal? <br><a href='ofrendasems' class='alert-link'>Aceptar</a>.
			</div>".html_safe
		end
	end
end
