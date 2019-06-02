Modelo Canônico de Trabalho Acadêmico em LaTeX.
===============================================

Este repositório contém um documento que tem por objetivo servir de modelo para a elaboração de trabalhos acadêmicos, como monografias, TCC, teses de mestrado etc. A estutura texto segue o modelo indicado para a elaboração de trabalhos de conclusão para o curso de Ciência da Computação da PUC-SP,  entretanto, você *deve* modificá-lo para adaptar à sua pesquisa acadêmica |rocket|.

O modelo não foi criado do zero. Ele foi modificado a partir do abnTeX2_, que mantém uma comunidade ativa para elaboração de trabalhos acadênicos seguindo normas ABNT. Portanto, apesar de ser adaptado, este modelo segue as normas ABNT vigentes para elaboração de trabalhos acadêmicos.

Se você for novo no LaTeX, essa **ótima** apostila_ elaborada por Gustavo Valente deve te ajudar.

Estrutura do Projeto
--------------------

Entender a estrutura do projeto pode servir de auxílio para realizar as modificações necessárias.

.. code-block:: bash

    tcc-latex
    ├── main.tex
    ├── capitulos
    │   ├── conclusao.tex
    │   ├── desenvolvimento.tex
    │   ├── introducao.tex
    │   └── revisao-bibliografica.tex
    ├── main
    │   ├── cronograma.tex
    │   ├── ficha-catalografica.tex
    │   ├── pos-texto.tex
    │   ├── pre-texto.tex
    │   └── referencias.bib
    ├── tabelas          
    │   
    ├── imagens          
    │   
    ├── abnt-alf.bst          
    ├── abntcite.sty
    ├── abtex-abrev-pt_BR.def          
    ├── abntex-abrev.sty
    ├── abntpuc.cls
    ├── cvs-id.def
    ├── nbr10520-2002.def
    └── nbr10522-1988.def

Adaptando para seu trabalho
---------------------------

O arquivo principal do projeto é o ``main.tex``, que pode ser divido entre elementos *pré-textuais, textuais e pós-textuais*

Os elementos pré-textuais -- que estão no arquivo ``pre-texto.tex`` -- descrevem, por exemplo o **título, autor, orientador e a universidade**. É nele também que você define o que deverá ser *impresso* ou não -- como a folha de aprovação, ficha catalográfica e a lista de figuras.

Os elementos textuais são os capítulos em si. Os capítulos foram divididos em arquivos que estão dentro da pasta ``capitulos``. Caso queira criar um novo capítulo, basta criar um novo arquivo e adicioná-lo no `main.tex` utilizando o comando ``\input{capitulo/nome-do-arquivo}`` ou ``\include{capitulo/nome-do-arquivo}``.

Por fim, os elementos pós-textuais estão no arquivo ``pos-texto.tex``. O mais importante, talvez, seja a invocação das referências bibliográficas. Glossário, anexo e apêndice podem ser opcioanis na maioria dos trabalhos acadêmicos.


Autor:
-------
João E. L. Fouyer <jfouyer@gmail.com>

.. |rocket| replace:: 🚀
.. _João E. L. Fouyer: http://lattes.cnpq.br/9901346603428982
.. _apostila: http://mtm.ufsc.br/~ebatista/Disciplinas_2012_2_arquivos/apostila.pdf
.. _abnTeX2: https://github.com/abntex/abntex2
