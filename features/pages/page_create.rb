class Create <SitePrism::Page

	element :txt_nome, "input[id='name']"
	element :enum_estado, "select[id='status']"
	element :enum_prioridade, "select[id='priority']"
	#element :btn_salvar, "//*[@id='EditView']/table/tbody/tr/td[1]/div/input[@id='SAVE']"
						 #"//*[@id='EditView']/div[3]/input[@id='SAVE']"

	def create_task(subject,status,priority)
		txt_nome.set(subject)
		enum_estado.select(status)
		enum_prioridade.select(priority)
		find(:xpath, "//*[@id='EditView']/div[3]/input[@id='SAVE']").click

	end

end