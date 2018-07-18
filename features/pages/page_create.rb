class Create <SitePrism::Page

	element :txt_nome, "input[id='name']"
	element :enum_estado, "select[id='status']"
	element :enum_prioridade, "select[id='priority']"
	element :btn_salvar, "td.buttons > div.buttons > input#SAVE.button.primary"

	def create_task(subject,status,priority)
		txt_nome.set(subject)
		enum_estado.select(status)
		enum_prioridade.select(priority)
		btn_salvar.click

	end

end