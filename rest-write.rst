.. _rest-write:

*****************
Scrivere il testo
*****************

No, non voglio dirvi che cosa dovete scrivere, ma affronteremo il modo di *marcare* 
il testo in modo che, una volta elaborato, appaia come desideriamo.

Dovendo il nostro testo essere disponibile in differenti formati occorre un sistema *neutro* 
per indicare ad esempio che una parola deve essere sottolineata oppure in corsivo. In questo capitolo 
vedremo proprio questo aspetto.

Corsivo, Grassetto e Sottolineato
=================================

Immagini
========

Capitoli e Sezioni
================== 

Link
====

Blocchi di codice
=================

Compilare la guida
==================

Nella directory principale del progetto apriamo il prompt comandi e scriviamo::

    make html
	
verrà generato il sito web nella cartella ``_build\html`` (avviare ``index.html`` per consultarlo)

Con il comando::

    make latexpdf
	
verrà generato il file PDF nella cartella ``_build\latex``

Con il comando:: 

    make epub
	
verrà generato un ebook in formato epub nella cartella ``_build\epub``

Infine il comando::

    make clean
	
pulirà completamente la cartella ``_build``
(utile in caso di modifiche per evitare che restino vecchi files inutili)

