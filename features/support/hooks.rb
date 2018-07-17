After('@CadastrarTask') do |scenario|

	Capybara::Screenshot.screenshot_and_save_page
	
end

After('@AlterarTask') do |scenario|

	Capybara::Screenshot.screenshot_and_save_page
	
end

After('@DeletarTask') do |scenario|

	Capybara::Screenshot.screenshot_and_save_page
	
end