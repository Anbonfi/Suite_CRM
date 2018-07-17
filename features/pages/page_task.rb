class Task <SitePrism::Page

	element :enum_estado, "select[id='status']"
	element :btn_acao, "li[id='tab-actions']"
	element :btn_delete, "input[id='delete_button']"


	def valida_task(task)
		assert_text(task)
	end

	def altera_status(status_novo)
		enum_estado.select(status_novo)
		find(:xpath, "//*[@id='EditView']/div[3]/input[@id='SAVE']").click
	end

	def deleta_task()
		btn_acao.click
		btn_delete.click
		page.driver.browser.switch_to.alert.accept	
	end

	def valida_task_deletada()
		assert_text("No results found for")
	end	

end