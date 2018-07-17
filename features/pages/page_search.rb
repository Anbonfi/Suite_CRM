class Search <SitePrism::Page

	element :txt_assunto, "input[id='name_basic']"
	element :btn_procurar, "input[id='search_form_submit']"
	
	def altera_task(task_alterada,status_novo)
		Search.new.filtro()
		txt_assunto.set(task_alterada)
		btn_procurar.click
		assert_text(task_alterada)
		find(:xpath, "//span[@class='suitepicon suitepicon-action-edit']").click
		Task.new.altera_status(status_novo)

	end

	def deleta_task(task_a_deletar)
		Search.new.filtro()
		txt_assunto.set(task_a_deletar)
		btn_procurar.click
		assert_text(task_a_deletar)
		find(:xpath, "//*[@type='name']/b/a").click
		Task.new.deleta_task()

	end

	def filtro()

		if has_text?('No results found')
			find(:xpath,"//*[@class='clickMenu selectmenu searchLink SugarActionMenu listViewLinkButton listViewLinkButton_']/li/a").click	
		else
			find(:xpath,"//*[@class='clickMenu selectmenu searchLink SugarActionMenu listViewLinkButton listViewLinkButton_top']/li/a").click
		end	
	end
end