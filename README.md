# :clapper: spacex-streaming-database
<p>Este projeto (<strong><em>SpaceX Streaming Database</em></strong>) tem o objetivo de desenvolver um banco de dados completo para empresas de video streaming. O projeto faz parte do Labs da DIO, baseado no “banco de controle de séries assistidas-Nathally Souza”, com uma tabela. Porém, a versão 1.0 do SpaceX Streaming Database é formada por 11 tabelas e um arquivo para dump de dados. Além disso, exemplificação de consultas SQL para implementação do back e front-end.
Portanto, as entidades obtidas na análise de requisitos, modelo conceitual, lógico até chegar no modelo físico atual são:</p> 
<ol>
<li><p><strong>user</strong> (Usuários de gestão do sistema);</p></li>
<li><p><strong>client</strong> (Clientes do sistema);</p></li>
<li><p><strong>address</strong> (Endereços de clientes);</p></li>
<li><p><strong>genre</strong> (Gênero de filmes e séries);</p></li>
<li><p><strong>movie</strong> (Filmes ou Séries);</p></li>
<li><p><strong>payment</strong> (Pagamentos);</p></li>
<li><p><strong>plans</strong> (Planos);</p></li>
<li><p><strong>signed</strong> (Assinados);</p></li>
<li><p><strong>views</strong> (Assistidos);</p></li>
<li><p><strong>logs_user</strong> (Entrada e saída de usuários do sistema);</p></li>
<li><p><strong>logs_cli</strong> (Entrada e saída de clientes do sistema).</p></li>
</ol>

# :snowflake: Scripts SQL for Databases
<ul>
<li><p>FireBird</p></li>
<li><p>Oracle</p></li>
<li><p>PostgreSQL</p></li>
<li><p>SQLite</p></li>
<li><p>SQL Server</p></li>
</ul>

<p>OBS: Teste os scripts nesses databases, caso você tenha algum problema reporte o erro para obter feedback: dalmosilvamendes@gmail.com.</p>

# Testado no :dolphin: MYSQL/MariaDB
<p>MariaDB</p>
<p>Versão do servidor: 10.4.11-MariaDB - mariadb.org</p>

# :trophy: Como usar? 
<ol>
<li><p>Instalar ou ter um SGBD MySQL/MariaDB</p></li>
<li><p>Criar um banco de dados: spacex_streaming_database</p></li>
<li><p>Criar um diretório no seu PC, abrir o mesmo</p></li>
<li><p>Iniciar o Git e clonar o repositório:</p></li>
<li><p>git clone https://github.com/DalmoMendes/spacex-database.git</p></li>
<li><p>Importar (dump de dados sql) para o banco de dados</p></li>
<li><p>Conectar via terminal ou interface gráfica no banco de dados</p></li>
<li><p>Abrir o banco e realizar os testes com os exemplos de consultas.</p></li>
</ol>

## Uso dos JOINs

<p>Um INNER JOIN produz um conjunto de resultados contendo apenas linhas que têm uma correspondência, em ambas as tabelas (t1 e t2), para as condições de junção especificadas.</p>

<p>Já um CROSS JOIN produz um conjunto de resultados no qual todas as linhas de cada tabela são unidas a todas as linhas da outra tabela; isso também é chamado de produto cartesiano . Em MariaDB, a palavra-chave CROSS pode ser omitida, pois não faz nada. Qualquer JOIN sem uma cláusula ON é um CROSS JOIN.</p>

<p>Com tudo, o LEFT JOIN é uma junção externa , que produz um conjunto de resultados com todas as linhas da tabela à "esquerda" (t1); os valores para as colunas na outra tabela (t2) dependem se uma correspondência foi encontrada ou não. Se nenhuma correspondência for encontrada, todas as colunas dessa tabela serão definidas como NULL para essa linha.</p>

<p>Além disso, podemos verificar que o RIGHT JOIN é semelhante ao LEFT JOIN, embora seu conjunto de resultados contenha todas as linhas da tabela da direita, e as colunas da tabela da esquerda serão preenchidas com NULLs quando necessário.</p>

<p>Portanto, os JOINs podem ser concatenados para ler os resultados de três ou mais tabelas. Todavia, fique atento ao usar, por exemplo, no MariaDB, CROSS JOIN é um equivalente sintático a INNER JOIN(eles podem substituir um ao outro). Porém, no SQL padrão, eles não são equivalentes. INNER JOINé usado com uma ON cláusula, CROSS JOIN é usado de outra forma.</p>

<p>Para finalizar, fique atendo ao uso de parênteses podem ser ignorados em expressões de junção contendo apenas operações de junção interna. MariaDB também oferece suporte a junções aninhadas, consulte em:
[Sintaxe_Basica_Markdown](http://dev.mysql.com/doc/refman/5.1/en/nested-join-optimization.html).</p>

## Links Útils:

Database MariaDB
[Sintaxe_Basica_Markdown](https://mariadb.org/)

Downalod MariaDB:
[Sintaxe_Basica_Markdown](https://mariadb.org/download/?t=mariadb&p=mariadb&r=10.6.5&os=windows&cpu=x86_64&pkg=msi&m=fder)

Xampp:
[Sintaxe_Basica_Markdown](https://www.apachefriends.org/pt_br/index.html)

DBDesignerFork:
[Sintaxe_Basica_Markdown](https://sourceforge.net/projects/dbdesigner-fork/)

JOIN Syntax:
[Sintaxe_Basica_Markdown](https://mariadb.com/kb/en/join-syntax/)

Juntando tabelas com JOIN
[Sintaxe_Basica_Markdown](https://mariadb.com/kb/en/joining-tables-with-join-clauses/)

# :rocket: ceproirr 
<p>by Dalmo Mendes - dalmosilvamendens@gmail.com</p>
<p>Oferecimento: <a href="https://ceproirr.com.br" target="_blank">ceproirr.com.br</a></p>
<h3>:muscle: Contatos:</h3>

<p><a href="https://www.ceproirr.com.br/webagency/" target="_blank">Web Agency</a></p>
<p><a href="https://facebook.com/ceproir/" target="_blank">Facebook</a></p>
<p><a href="https://instagram.com/ceproirr/" target="_blank">Instagram</a></p>
<p><a href="https://twitter.com/ceproirr/" target="_blank">Twitter</a></p>
<p><a href="https://www.youtube.com/channel/UC9egIn_Xkg2KFD_55mi_r8w" target="_blank">YouTube</a></p>
