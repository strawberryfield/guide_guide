.. _github-site:

*******************
Pubblicare la guida
*******************

Github permette di gestire delle pagine web dove includere la documentazione del progetto.
Per la verità è presente un sito globale legato al proprietario dei repository ed un sito per ogni progetto: 
noi utilizzeremo quest'ultimo per riversarci dentro le pagine HTML della nostra guida in modo 
che possa essere letta comodamente online. 

.. _github-site-create:

Il sito per la documentazione del progetto
==========================================

Il sito di documentazione è ospitato all'interno del nostro repository nella cartella ``docs`` che quindi dovremo creare nella 
nostra cartella di lavoro. Dalla console scrivete::

    mkdir docs 

poi rigeneriamo la guida in HTML::

    make clean 
    make html 
	
quindi copiamo il sito generato nella cartella ``docs``::

    xcopy _build\html docs  /S /Y 
	
infine aggiungiamo i files al repository locale e sincronizziamo con GitHub::

    git add . 
    git commit -m "Importazione iniziale sito"
    git push guide_guide master 
	
Fatte queste operazioni nel repository su GitHub sarà presente la nostra guida compilata in HTML all'interno 
della cartella docs

.. image:: images/github/docs.jpg

Possiamo quindi procedere all'abilitazione del sito. 

Andiamo quindi nella sezione ``Settings`` del nostro repository su GitHub ed in fondo alla pagina delle ``Options`` 
troveremo la voce per abilitare le ``GitHub Pages``:

.. image:: images/github/pages.jpg

Scegliamo l'opzione ``master branch /docs folder`` e salviamo. 

Il sistema ci comunica dove troveremo le nostre pagine pubblicate

.. image:: images/github/pages-url.jpg

Nel caso di questa guida l'URL è https://strawberryfield.github.io/guide_guide/

.. _github-site-binaries:

Aggiungere i download di altre versioni
=======================================

Poichè il sistema ci permette di avere differenti tipi di output è buona cosa rendere disponibili 
all'utente finale (che non è in grado di ricompilarsi la guida) almeno il PDF. Io pubblico anche l'ebook in formato .epub,
ma ognuno è libero di scegliere i formati che ritiene più utili.

Per fare ciò creiamo una cartella ``bin`` all'interno di ``docs`` nella quale andremo a copiare i file .pdf e .epub 
che abbiamo preventivamente compilato.

E' anche utile aggiungere un capitolo (o sezione) nel quale linkare tutti possibili file da scaricare come ad esempio questo:

.. literalinclude:: download.rst
    :language: rest
    :caption: download.rst
    :name: github-site-code-download-rst

che è quello di questa guida (non dimenticate di inserirlo nel file ``index.rst``).

.. _github-site-automate:

Automatizzare il processo
=========================

Ripetere tutte le volte la procedura di ricompilazione, copia e commit del sito è cosa piuttosto noiosa 
e fonte di errori. Ho perciò predisposto un piccolo batch che automatizza il processo.

.. literalinclude:: makesite.bat
    :language: bat
    :caption: makesite.bat
    :name: github-site-code-makesite-bat

Prima di lanciare questo batch è oppurtuno fare il commit dei sorgenti in modo da tenere separato l'aggiornamento del sito 
dalle modifiche alla guida. Non è una cosa obbligatoria, ma aiuta a tenere le cose in ordine.