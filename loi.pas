PROGRAM jeu_De_Loi;

USES crt;

VAR
	place, nbre : INTEGER; //Nombre désigne ce qui est affiché par le dé.
	//Place désigne la case sur laquelle se situe le joueur.

BEGIN

	clrscr;

	place:=0;

	REPEAT
		BEGIN
		writeln('Veuillez jeter deux des, et ecrire le resultat. Vous etes a la case :',place);
		readln (nbre);

		IF (nbre>=2) AND (nbre<=12) THEN
		BEGIN 
		 		place:=place+nbre;
		 	
					IF (place MOD 9=0) AND (place <> 0) AND (place <> 63) THEN
						BEGIN
							place:=place+nbre*2;
						END
		END				
		ELSE
			BEGIN
				writeln('Les valeurs sont incorrectes');
			END;
			
		IF place>66 THEN
			place:=66-(place-66);

		IF place=58 THEN
			place:=0;	

	END
	UNTIL place=66;	
	
END.




