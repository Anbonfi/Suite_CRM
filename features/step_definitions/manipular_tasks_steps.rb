Dado("que eu esteja na home do site") do
  	Login.new.load
 	Login.new.log_in("will","will")
  	Login.new.valida_log_in()
end

Quando("criar uma nova task com {string}, {string} e {string}") do |subject,status,priority|
  	Home.new.acessa_tela_create_task()
	Create.new.create_task(subject,status,priority)
end

Entao("apresentara a {string} cadastrada no sistema") do |nova_task|
	Task.new.valida_task(nova_task)
end

Quando("alterar a task {string} cadastrada alterando o {string}") do |task_alterada,status_novo|
 	Home.new.acessa_tela_pesquisa_task()
 	Search.new.altera_task(task_alterada,status_novo)
end

Entao("apresentara a task {string} com a alteracao no status") do |task_alterada|
 	Task.new.valida_task(task_alterada)
end

Quando("deletar a task {string} cadastrada no sistema") do |task_a_deletar|
	Home.new.acessa_tela_pesquisa_task()
   	Search.new.deleta_task(task_a_deletar)
end

Entao("exibira mensagem informando que a task não existe no sistema") do
	Task.new.valida_task_deletada()  
end