module OfrendadiaHelper
def semanal(cont)
		link = totalofrendasemanal_path(:valor => Ofrendadium.sum(:valor))
		if cont >=5
			"<div class='alert alert-dismissable alert-danger'>
			  QUieres pasar a la ofrenda semanal? <br><a href='#{link}' class='alert-link'>Aceptar</a>.
			</div>".html_safe
		end
	end
end
