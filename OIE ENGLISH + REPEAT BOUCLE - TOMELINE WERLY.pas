
PROGRAM Jeu_de_l_Oie ;

	// BUT : Réaliser un Jeu de l Oie.
	// PRINCIPE : Faire boucle pour jet de dés. Calculer place du joueur suite au jet. Prendre en compte cases bonus ou case malus. Calculer de combien reculer si le joueur dépasse case arrivée. 
	// ENTRÉES : Le lancer de dés.
	// SORTIE : La place du joueur sur la case 66. 

	uses crt ;

CONST 
	mort = 58 ;
	depart = 0 ;
	arrivee = 66 ;
	casenm = 63 ;	// Constantes à utiliser. 

	
	

VAR
	play : STRING ;
	again : BOOLEAN ; 	// Variables pour relancer le programme. 
	place, des, trop, oie : INTEGER ;	 // Initialisation des variables.

	
	

BEGIN

	clrscr ;

	place:= 0 ;
	oie:=(place MOD 9) ;

	WRITELN ('Jeu de l`Oie') ;
	WRITELN ;
	WRITELN ;
	WRITELN ('You have 66 boxes to travel. If you manage to end to the 66 box, the game is won.') ;
	WRITELN ('If you go further than the 66 box, you have to go back from the excess numbers. There will be a Goose (une oie), every 9th boxes, that whill double your dices, except on the 63th box.') ;
	WRITELN ('If you fall on the 58th box, you have to go back to the beginning.') ;
	WRITELN ;
	WRITELN ('Press Enter to Start the game') ;

		// Explication des règles à l'user. 

	READLN ;


REPEAT
	
	
	REPEAT
		WRITELN ('Press Enter to throw your dices.') ;
		READLN ;

		randomize;
		des:= RANDOM (10)+2 ;    // Initialisation des dés. 

		WRITELN ('You made a ', des) ;
		READLN ;
		place:= (place + des);
		WRITELN ('You now are on the ', place, 'th box') ;
		
		IF (place = oie) AND (place <> casenm) THEN
			BEGIN
				place:= (place+des) ; 	// Calcul de la place si l'user tombe sur une case de l'Oie. 
				WRITELN ('You are on a Goose box ! Your dices are doubled. You are now one the ', place, 'th box') ; 
			END ;


		IF (place = mort) THEN
			BEGIN
				place:= 0 ;		// Réinitialisation de la place si l'user tombe sur la case Tête de mort. 
				WRITELN ('You are not lucky, you fell on the deathly box. You go back to the start.') ;
			END ;

		IF (place > arrivee) THEN 
			BEGIN 
				trop:=(place-66+des) ;		// Calcul du nombre à reculer si l'user dépasse l'arrivée. 
				WRITELN ('You went too far. You have to go back from ', trop, ' boxes') ;
				place:= (place - trop) ; 
			END ;

	UNTIL (place = arrivee) ; // Fin de boucle


	WRITELN ('You won the game. Thanks for playing.') ;

	WRITELN ('Type "Play" to restart the game. Or Type "Exit" to leave the game.') ; // Boucle de relance.
	READLN (play) ;


	IF (play<>('exit')) OR (play<>('EXIT')) OR (play<>('Exit')) OR (play<>('play')) OR (play<>'PLAY') OR (play<>'Play') THEN
		REPEAT
			WRITELN ('Please enter a valid answer.') ;
			READLN (play) ;
		UNTIL (play=('play')) OR (play='PLAY') OR (play='Play') OR (play=('exit')) OR (play=('EXIT')) OR (play=('Exit')) ;

	IF (play=('play')) OR (play='PLAY') OR (play='Play') THEN
		again:=TRUE ;
		place:=0 ;

	IF (play=('exit')) OR (play=('EXIT')) OR (play=('Exit')) THEN
		again:=FALSE ;
		

UNTIL (again=FALSE) ;


END.