class Home <SitePrism::Page

	element :btn_create, 'li.quickcreatetop'
	element :btn_create_task, "a[href='index.php?module=Tasks&action=EditView&return_module=Tasks&return_action=DetailView']"

	def acessa_tela_create_task()

		btn_create.click
		btn_create_task.click

	end

	element :btn_all, "a[id='grouptab_5']"
	element :btn_tasks, "a[href='?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DTasks%26action%3Dindex%26parentTab%3DAll']"

	def acessa_tela_pesquisa_task()

		btn_all.click
		btn_tasks.click

	end

	

end