https://gist.github.com/poritsky/4246924 : Press ~ to strikethrough (surround with <del> tags) selected text in MarkdownEditing

apagar tag e todas dentro
apagar tag e manter as de dentro

comandos iguais com nomes diferentes em cada IDE
	* aplicar técnica de DM
	* equiparar um a um
	registrar comando e atalho facilmente
melhor mapeamento para memorizar o maior número possível de teclas
	* excel resolve

move statement up/down
move caret...
next highlighter error

cyclic expand word


intelij
	mover abas 
	show execution point
		ir para onde o debug tá 

	o que sao frames no debug
	reload changed classes
	update application

	Smart step into 

	https://confluence.jetbrains.com/display/IntelliJIDEA/14.+Depurador



processo
	escolher um keymap de referência e não ficar pensando na melhor tecla
		sublime text 3 https://shortcutworld.com/Sublime-Text/win/Sublime-Text_Shortcuts
	usar keymap padrão da ferramenta
	salvar referências de atalhos da ferramenta
	atribuir atalhos básicos navegação
	sentiu falta de um atalho? olhe na tabela a atribua

tentar atribuir tecla somente nos que já usa

alt: navegação
shif: reversão/sentido mais amplo


	cas


C,	conf
Sesc mostrar apenas editor
quick documentation



# Comandos

copiar caminho
~~next method~~~ // outline já resolve

atalhos: copiar referencia de algo

navegar ocorrência / highlighted elemente usage
navegar move caret to block
navegar move caret matching brace
navegar bookmark

safe delete //exceção de alt (padraõ: alt+delete, tirei pq nem uso)

extract method???
cyclic completion???
complete currente statement
extract all forms name 

go to implementação???
go to definição
quick documentation
parameter info
surround with live template -- raramente uso
insert live template

intellj limpar ctr+z
undo cursor

dttagrip expand column list

## Modelo
:
c+:
	cs+:
	ca+:
	csa+:
s+:
	sa+:
a+:

## Up/Down
c+up_down: parágrafo
	cs+up_down:  parágrafo
	ca+up_down: seleção vertical / clone caret / adicionar cursor
	csa+up_down: seleção inteligente --cas é bem sugestivo por contado shift, mas é melhor assim pra aproveitar o padrao pra home/pgmatching brace / duplicate line --highligth element usage
s+up_down: --- selecionar
	sa+up_down: mover linha
a+up_down: go to definição / uso

## Left/Right
c+left_right: ---
	cs+left_right: ---
	ca+left_right: camel case
	csa+left_right: camel case
s+left_right: ---
	sa+left_right: mover linha
a+left_right: ir/voltar

## PgDown/PgUp
c+: --- navegar entre guias
	cs+: -- mover guia
s+: --- selecionar
	sa+: seleção vertical
a+: dobrar/desdobrar --próximo das setas
ca+: dobrar/desdobrar recursivamente
csa+: dobrar/desdobrar tudo

## Home/End
c+: --- navegar início e fim do arquivo
	cs+: -- selecionar
s+: --- selecionar
	sa+: seleção vertical
a+: 
ca+: 
csa+: 

## Insert
c+: --- copiar
s+: --- colar

ca+:
cs+:
csa+:

a+: navegar mudança / next change
sa+: navegar erro

## Delete
c+delete: --- apagar até o final da palavra
s+delete: apagar linha // as vezes o "delay" do shift atrapalha
ca+delete: --- gerenciador de tarefas
	cs+delete: unwrap/remove //apagar apenas a estrutura
	csa+delete: //apagar em camelcase // o padrão era CA, mas o windwos usa pra gerenciador de tarefas

a+delete: navegar mudança / previus change
	as+delete: navegar erro

## Backspace
c+: -- apagar palavra
s+: juntar linhas

cs+:
ca+: 
csa+: -- apagar por camelcase //acompanhar padrão do del

a+: navegar últimas edições
	sa+: navegar últimas edições

## Enter
c+enter: quick evaluate expression
	cs+enter: evaluate expression
	ca+enter: execute line debug console
	csa+enter: execute file debug console
s+enter: -- duplicate line (semelhante apagar linha) 
	sa+enter: surround with... / envolver
a+enter: context actions //exceção de alt

## Espaço
sa+space: --- menu de contexto da janela
a+space: --- menu de contexto da janela
c+space: auto complete
	cs+space: 
	ca+space: 
	csa+space:
s+space: 


## Esc
c+: --- abrir menu inicial
	cs+: --- abrir gerenciador de tarefas
	ca+: --- alterna janelas
	csa+: --- alterna janelas
s+: alterna apenas editor
	sa+: --- alterna janelas
a+: --- alterna janelas

## Fx
### F1
-- ajuda

### F2
-- renomear
### F3
: --- ocorrência de busca, próxima
s+: --- ocorrência de busca, anterior
c+: ocorrência de busca palavra no cursor, próxima

cs+:
ca+:
csa+:
sa+:
a+:

### F5
: debugar
c+: executar
	cs+: reiniciar debug/execuçao
	ca+: debugar arquivo atual
	csa+: executar arquivo atual
s+: parar debug/execuçao
	sa+: run to cursor (mouse: AS + rolar pra baixo)
a+: show execution point (mouse: A + rolar pra cima)

### F9
restaurar breakpoint
alternar breakpoint de método

f9: adicionar breakpoint de linha
c+: toggle enable breakpoint
s+: breakpoint temporário
a+: ver breakpoints
	cs+: mute breakpoints / desativar todos
	ca+: remover todos os breakpoints do arquivo
	csa+: apagar todos breakpoints
	sa+:

### F10
: step over (mouse: A + rolar pra baixo)

c+:
	cs+:
	ca+:
	csa+:
s+:
	sa+:
a+:

### F11
: tela cheia

c+:
	cs+:
	ca+:
	csa+:
s+:
	sa+:
a+:

### F12
: 

c+:
	cs+:
	ca+:
	csa+:
s+:
	sa+:
a+:

## 1-9
c+: abas
	cs+:
	ca+:
	csa+:
s+:
	sa+1-5: toggle bookmark
a+1-5: go to bookmark

## /
c+/: comentar linha
	cs+/: comentar bloco
	ca+/:
	csa+/:
s+/: hide all windows
	sa+/:
a+/: reverse lines

## \
c+/: comentar linha
	cs+/: comentar bloco
	ca+/:
	csa+/:
s+/: --- 
	sa+/:
a+/:


## ;
: ---
c+:
	cs+:
	ca+:
	csa+:
s+:
	sa+:
a+:

## A
c+: próxima ocorrência
cs+: selecionar todas ocorrências
ca+:

sa+:
csa+:


## D
: ---
c+: próxima ocorrência
	cs+: selecionar todas ocorrências
	ca+:
	csa+:
s+:
	sa+:
a+:

## E
: ---
c+: próxima ocorrência
	cs+: selecionar todas ocorrências
	ca+:
	csa+:
s+: --
	sa+:
a+: abrir no explorador de arquivos do sistema

## I
: ---
c+: organizar imports
	cs+: 
	ca+:
	csa+:
s+: --
	sa+:
a+: ---

## K
: ---
c+c: console
c+g: git
c+h: file history
c+p: project (explorador de arquivos interno)
c+s: structure
c+t: terminal
c+: TODO
	cs+:
	ca+:
	csa+:
s+:
	sa+:
a+: ir para correspondência


## O
: ---
c+: 
	cs+: 
	ca+:
	csa+:
s+: --
	sa+:
a+: ---

## T e W
c+w: --- fechar aba
	cs+: fechar janela
	ca+: --- sai o caractere "?"
	csa+:
s+: fechar todos
	sa+:
a+: fechar outros

c+t: --- nova aba
	cs+: reabrir aba
	ca+: --- sai o caractere "?"
	csa+:
s+: fechar todos
	sa+:
a+: fechar outros

# IntelliJ
https://shortcutworld.com/IntelliJ-IDEA/win/IntelliJ_Shortcuts
https://resources.jetbrains.com/storage/products/intellij-idea/docs/IntelliJIDEA_ReferenceCard.pdf
https://www.jetbrains.com/help/rider/Reference_Keymap_Rider.html
https://www.shortcutfoo.com/app/dojos/intellij-idea-win/cheatsheet
https://www.jetbrains.com/help/rider/Keymaps_Comparison_Windows.html

## Navigation
Go to class Ctrl + N
Go to file Ctrl + Shift + N
Go to symbol Ctrl + Alt + Shift + N
Go to next /previous editor tab Alt + Right/Left

# testando
abrir git f7
navegar diferenças git f6 f8
go to source (quando ver diff no git) : shift f7