#Trabalho de API

Repositório referente ao trabalho avaliativo da disciplina de Qualidade de Software no qual aborda Teste de API (Application
Programming Interface) com Karate.

Este projeto foi desenvolvido por Ana Luiza Taveira, Pedro Hugo Coura e Natacha Calixto com objetivo de testar a API Rick and Morty.


## Instalação dos ambientes de desenvolvimento:
1. IDE VSCode (code):
https://code.visualstudio.com/

2. JDK (java):
https://www.oracle.com/java/technologies/javase-downloads.html

3. Maeven:
https://maven.apache.org

4. Git Bash (Git for Windows - mais leve) 
https://gitforwindows.org/


## Configuração do Projeto

Utilizaremos o maven (mvn) para fazer a instalação do Karate via terminal. A seguinte linha de código cria esse arquivo seguindo os parâmetros necessários:

```
mvn archetype:generate \
-DarchetypeGroupId=com.intuit.karate \
-DarchetypeArtifactId=karate-archetype \
-DarchetypeVersion=1.0.1 \
-DgroupId=s206.trabalho \
-DartifactId=s206_trabalho
```

## Executando os Testes

Para executar os testes, basta rodar a seguinte linha no terminal:

```
mvn test -Dtest=RMRunner
```
O arquivo RM.feature contem todos os testes a serem realizados.

## Relatórios de Teste

Após a execução dos testes, você pode encontrar os relatórios de teste no diretório `\s206_trabalho\target\karate-reports\testesAPI.RM.html`. Basta abrir este arquivo no navegador para visualizar o resultado dos testes.

