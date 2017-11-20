PROGRAM Nombres ;
	// BUT : Demander un nombre compris entre 10 et 20 jusqu'a ce que la réponse convienne. 
	// entreES : Un Nombre.
	// SORTIE : Un nombre entre 10 et 20. 


VAR
	nb1 : REAL ;

BEGIN
	REPEAT 

		writeln ('Veuillez entrer un nombre compris entre 10 et 20.') ;
		readln (nb1) ;
			IF (nb1 > 10) THEN
				writeln ('Votre nombre est trop petit.');

			IF (nb1 > 20) THEN
				writeln ('Votre nombre est trop grand.');

	UNTIL (nb1 > 10) AND (nb1 < 20) ;

	writeln ('Votre nombre, bien compris entre 10 et 20 est : ', nb1) ;

END.

{

ALGORITHME : Nombres
	// BUT : Demander un nombre compris entre 10 et 20 jusqu'à ce que la réponse convienne. 
	// ENTRÉES : Un Nombre.
	// SORTIE : Un nombre entre 10 et 20. 


VAR
	nb1 : REEL

DEBUT
	REPETER 

		ECRIRE "Veuillez entrer un nombre compris entre 10 et 20."
		LIRE nb1
			SI (nb1 > 10) ALORS
				ECRIRE "Votre nombre est trop petit."
			FINSI

			SI (nb1 > 20) ALORS
				ECRIRE "Votre nombre est trop grand." 
			FINSI

	JUSQUA (nb1 > 10) et (nb1 < 20)

	ECRIRE "Votre nombre, bien compris entre 10 et 20 est : ", nb1
FIN.

}
