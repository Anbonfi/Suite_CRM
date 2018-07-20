class Search <SitePrism::Page

	element :txt_assunto, "input[id='name_basic']"
	element :btn_procurar, "input[id='search_form_submit']"
	element :btn_editar, "a[class='edit-link']"
	element :btn_filtro1, "ul.clickMenu.selectmenu.searchLink.SugarActionMenu.listViewLinkButton.listViewLinkButton_"
	element :btn_filtro2, "ul.clickMenu.selectmenu.searchLink.SugarActionMenu.listViewLinkButton.listViewLinkButton_top"
	element :btn_seleciona_tarefa, "div.list-view-rounded-corners > table.list.view.table-responsive > tbody > tr.oddListRowS1 > td.inlineEdit > b > a[href*='?action']"
	
	def altera_task(task_alterada,status_novo)
		Search.new.filtro()
		txt_assunto.set(task_alterada)
		btn_procurar.click
		assert_text(task_alterada)
		btn_editar.click
		EditView.new.altera_status(status_novo)

	end

	def deleta_task(task_a_deletar)
		Search.new.filtro()
		txt_assunto.set(task_a_deletar)
		btn_procurar.click
		assert_text(task_a_deletar)
		btn_seleciona_tarefa.click
		EditView.new.deleta_task()

	end

	def filtro()

		if has_text?('No results found')
			btn_filtro1.click
		else
			btn_filtro2.click
		end	
	end
end