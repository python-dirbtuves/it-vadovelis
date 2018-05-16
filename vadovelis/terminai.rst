Terminų žodynas
===============


.. glossary::

   ASCII
      *(angl. American Standard Code for  Information Interchange)* - tai yra
      sutartinis simbolių rinkinys naudojamas informacijos apsikeitimui.

      ASCII simbolių rinkinys yra sudarytas iš 128 simbolių iš kurių 95 yra
      skirti atvaizdavimui ir 33 skirti ekrano valdymui.

      Matomi simboliai yra visa raidžių abėcėlė didžiosiomis ir mažosiomis
      raidėmis, skaičiai ir skyrybos ženklai ir specialieji ženklai.

      Ekrano valdymo simboliai yra tokie kaip naujos eilutės, tabuliacijos,
      eilutės išvalymo, simbolio tryinimas ir pan.

      128 simboliai užima 7 bitus atminties :math:`2^7 = 128`.

      Visą ASCII simbolių eilutė galima gauti taip:

      .. code-block:: python

         >>> ''.join(chr(i) for i in range(128))
         '\x00\x01\x02\x03\x04\x05\x06\x07\x08\t\n\x0b\x0c\r\x0e\x0f'
         '\x10\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1a\x1b\x1c\x1d'
         '\x1e\x1f !"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOP'
         'QRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\x7f'

      Visus atvaizdavimui skirtus simbolius galima gauti taip:

      .. code-block:: python

         >>> import string
         >>> string.printable[:95]
         '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUV'
         'WXYZ!"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~ '

   išvestis
      Išvestis yra tekstas kurį išveda programa jos vykdymo metu. Tai ką
      programa išveda vadinama išvestimi.

   failų sistema
      TODO

   grafinė naudotojo sąsaja
      (*angle Graphical User Interface (GUI)*) - priešingai nei :term:`tekstinė
      naudotojo sąsaja`, grafinėje naudotojo sąsajoje naudojame ne
      :term:`ASCII` simboliai, o pikseliai (ekrano taškai), kurių pagalba
      galima atvaizduoti žymiai daugiau, nei naudojant vien tik :term:`ASCII`
      simbolius.

      Pavyzdžui lentelė grafinėje aplinkoje gali būti atvaizduota taip:

      +---+---+
      | A | B |
      +---+---+
      | 1 | 2 |
      +---+---+

      O :term:`Python` logotipas taip:

      .. image:: ../static/python.png

   komandų eilutė
      Komandų eilutė *(angl. shell* arba *command line)* yra programa, kuri
      leidžia vykdyti kitas programas, kurios pateikiamos komandų pavidalu.

      Pavyzdžiui::

        $ which python
        /usr/bin/python

      Čia simbolis `$` rodo, kad komandų eilutės programa yra pasiruošusi
      priimti naują komandą *(angl. prompt)*. `which` yra komandos pavadinimas,
      o `python` yra tos komandos argumentas. `which` komanda yra programa,
      kuri parodo argumente pateiktos komandos :term:`vykdomojo failo
      <vykdomasis failas>` vietą :term:`failų sistemoje <failų sistema>`.

      Šiuo atveju, argumentas `python` yra kita komandų eilutės komanda, kurios
      :term:`vykdomasis failas` yra `/usr/bin/python`.

      Lygiai taip pat galime sužinoti kur yra `which` komandos
      :term:`vykdomasis failas`::

        $ which which
        which: shell built-in command

      Šiuo atveju sužinome, kad `which` komanda neturi :term:`vykdomojo failo
      <vykdomasis failas>`, kadangi ši komanda yra pačios komandų eilutės
      programos dalis.

   programavimo kalbos sintaksė
      Programavimo kalbą sudaro įvairių raktinių žodžių ir simbolių rinkinys.
      Visa raktinių žodžių ir simbolių visuma vadinama programavimo kalbos
      sintakse.

   Python
      *Python* yra programavimo kalbos pavadinimas, kurios autorius *Guido van
      Rossum*. Pavadinimas yra kilęs iš *„Monty Python's Flying Circus“* humoro
      grupės, kurią buvo pamėgęs *Guido*.

      .. figure:: ../static/guido.png

         *Guido van Rossum* - *Python* programavimo kalbos kūrėjas

   tekstinė naudotojo sąsaja
      Tekstinė naudotojo sąsaja *(angl. Text User Interface (TUI))* yra
      sudaryta iš :term:`ASCII` simbolių. Pavyzdžiui tekstinėje naudotojo
      sąsajoje lentelė gali būti atvaizduojama taip::

        +---+---+
        | A | B |
        +---+---+
        | 1 | 2 |
        +---+---+

      Kaip matome, visa lentelė atvaizduota panaudojant vient tik :term:`ASCII`
      simbolius.

      Analogiškai galima :term:`Python` logotipą, pasitelkiant vien tik
      :term:`ASCII` simbolius::

                  .?77777777777777$.            
                  777..777777777777$+           
                 .77    7777777777$$$           
                 .777 .7777777777$$$$           
                 .7777777777777$$$$$$           
                 ..........:77$$$$$$$           
          .77777777777777777$$$$$$$$$.=======.  
         777777777777777777$$$$$$$$$$.========  
        7777777777777777$$$$$$$$$$$$$.========= 
        77777777777777$$$$$$$$$$$$$$$.========= 
        777777777777$$$$$$$$$$$$$$$$ :========+.
        77777777777$$$$$$$$$$$$$$+..=========++~
        777777777$$..~=====================+++++
        77777777$~.~~~~=~=================+++++.
        777777$$$.~~~===================+++++++.
        77777$$$$.~~==================++++++++: 
         7$$$$$$$.==================++++++++++. 
         .,$$$$$$.================++++++++++~.  
                 .=========~.........           
                 .=============++++++           
                 .===========+++..+++           
                 .==========+++.  .++           
                  ,=======++++++,,++,           
                   ..=====+++++++++=.            
                         ..~+=... 

      Alternatyviai tekstinei naudotojo sąsajai yra :term:`grafinė naudotojo
      sąsaja`.

   terminalas
      Terminalas yra :term:`tekstinė naudotojo sąsaja`, kurioje kompiuteris valdomas
      :term:`komandų eilutės <komandų eilutė>` pagalba. Dažniausiai kompiuterį
      valdome naudodami grafinę naudotojo sąsają. Grafinei sąsajai yra sukurtos
      programos vadinamos :term:`terminalo emuliatoriais`, kurios leidžia
      pasiekti terminalą iš grafinės sąsajos.

   terminalo emuliatorius
      Terminalo emuliatorius yra programa skirta :term:`grafinei naudotojo
      sąsajai <grafinė naudotojo sąsaja>`, kurios pagalba suteikiama galimybė
      pasiekti :term:`terminalą <terminalas>` iš grafinė sąsajos.

   vykdomasis failas
      Kiekvienas failas turi tris esminius leidimus, leidimą skaityti, rašyti
      ir vykdyti. Leidimas, skaityti reiškia, kad yra suteikta teisė skaityti
      failo turinį, leidimas rašyti reiškia, kad yra suteikta tiesė keisti
      failo turinį, leidimas vykdyti, reiškia kad failas gali būti įvykdytas
      kaip programa.

      Failo teises galima sužinoti `ls` komandos pagalba, pavyzdžiui::

        $ ls -l
        -rwxr-xr-x 6 user users 526 2018-05-16 17:09 programa.py
           ^  ^  ^

      Iš šios komandos :term:`išvesties <išvestis>` matome, kad failas
      pavadinimu `programa` yra vykdomasis, kadangi jis turi žymę `x`, kuri
      reiškia, kad failas turi vykdymo teisę *(angl. executable)*.
