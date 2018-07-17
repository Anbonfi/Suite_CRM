#language: pt
#utf-8

@ManipularTasks
Funcionalidade: Manipular tasks
	Eu como usuario do sistema desejo manipular 
	as tasks podendo cadastrar, alterar e deleta-las.

	Contexto: Usuario acessa a home do site
		Dado que eu esteja na home do site

	@CadastrarTask
	Esquema do Cenario: Cadastrar nova task
		Quando criar uma nova task com "<subject>", "<status>" e "<priority>"
		Entao apresentara a "<nova_task>" cadastrada no sistema

		Exemplos:
		| subject	  | status 		| priority | nova_task |
		| tarefa01	  | In Progress |  Medium  | tarefa01  |
		| tarefa02	  | Not Started |  High	   | tarefa02  |
		

	@AlterarTask
	Esquema do Cenario: Alterar task
		Quando alterar a task "<task_alterada>" cadastrada alterando o "<status_novo>"
		Entao apresentara a task "<task_alterada>" com a alteracao no status

		Exemplos:
		| task_alterada    | status_novo	   	 |
		| tarefa01 		   | Pending Input 	 	 |
		| tarefa02 		   | Deferred	 		 |
	

	@DeletarTask
	Esquema do Cenario: Deletar task
		Quando deletar a task "<task_a_deletar>" cadastrada no sistema
		Entao exibira mensagem informando que a task não existe no sistema

		Exemplos:
		| task_a_deletar |
		| tarefa01		 |
		| tarefa02		 |
