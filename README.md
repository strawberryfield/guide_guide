# guide_guide
## Guida per scrivere una guida

Come redigere della documentazione producendo output in diversi formati (HTML, PDF, epub...),
gestire le versioni dei file sorgente, condividerli e creare un sito web per pubblicarli.

La guida è distribuita in formato sorgente *ReStructuredText*, 
ma nella directory `docs` è presente il sito html compilato
e nella cartella `docs\bin` le versioni in PDF ed EPUB.

## Compilazione dei sorgenti

Per chi volesse compilare da se i sorgenti riporto alcune note desunte da questa stessa guida consultabile qui: https://strawberryfield.github.io/guide_guide/index.html

### Installare *Sphinx* e *MikTex*

Per compilare correttamente i sorgenti è necessario disporre di **Python** (https://www.python.org/)
e **Sphinx-Build** (http://www.sphinx-doc.org/en/stable/install.html)

Per ottenere il file PDF è necessario anche un interprete LaTeX; in Windows si può utilizzare **MikTex** (https://miktex.org/howto/install-miktex) 

L'installazione dell'ambiente software necessario è descritta in https://strawberryfield.github.io/guide_guide/rest.html#installare-il-software-necessario

### Compilare la guida

Nella directory principale del progetto aprire il prompt comandi e scrivere

    make html
	
verrà generato il sito web nella cartella `_build\html` (avviare `index.html`)

Con il comando

    make latexpdf
	
verrà generato il file PDF nella cartella `_build\latex`

Con il comando 

    make epub
	
verrà generato un ebook in formato epub nella cartella `_build\epub`

Infine il comando

    make clean
	
pulirà completamente la cartella `_build` 
(utile in caso di modifiche per evitare che restino vecchi files inutili)

## Licenza

copyright (c) 2017 Roberto Ceccarelli - The Strawberry Field.

Quest'opera è stata rilasciata con licenza Creative Commons Attribuzione - Non commerciale - Condividi allo stesso modo 4.0 Internazionale. 

Per leggere una copia della licenza visita il sito web http://creativecommons.org/licenses/by-nc-sa/4.0/ o spedisci una lettera a Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
