Primeiramente, criar um banco e rodar o script Dump20121126.sql que está na pasta 'Utils', no mysql.

Passos para criação e carga do DW:

1. Criar um banco no PostgreSQL 'dw'
2. Rodar o script sql 'dw-sql.sql' no banco criado
3. Verificar as conexões no pdi (se conectar no banco do vestibular do mysql, e no dw do postgresql)
4. Executar o Job 'JOB_CARGAS.ktr' (deve demorar uns 45 min tudo)


Se quiser apenas ver como ficou o dw:

1. Criar um banco no PostgreSQL 'dw'
2. Fazer restore com o dump:

-Por linha de comando:

Entrar na pasta onde esta o dw_dump e rodar:

psql -U postgres dw < dw_dump

-Pelo pgAdmin:

Clicar em cima do banco criado com o botão direito, ir em 'restore' e escolher o dump (dw_dump.backup ou dw_dump)
