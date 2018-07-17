class Login <SitePrism::Page

	set_url "https://demo.suiteondemand.com/"

	element :txt_usuario, "input[id='user_name']"
	element :txt_senha, "input[id='username_password']"
	element :btn_login, "input[name='Login']"

	def log_in(usuario,senha)
		txt_usuario.set(usuario)
		txt_senha.set(senha)
		btn_login.click
	end

	def valida_log_in()
		has_link?("https://demo.suiteondemand.com/index.php?module=Home&action=index")
	end	

end