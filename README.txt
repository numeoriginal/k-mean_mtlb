
					Carp Constantin, 312 CD						  
				Tema 1 - Metode numerice Clustering					  
					Algoritmul K-Means							  

																	  |
	Task 1. Citirea datelor de intrare							  
		Pentru acest task am utilizat functia load.	  
																	  |
	Task 2. Implementarea K-Means									  
		Pentru inceput calculez distanta minima pana la unul dintre centroizii alesi random. 	  
		Apoi retin intr-un vector pentru fiecare punct, centroidul fata 
		de care a fost mai aproape. Se verifica daca centroizii vechi  
		sunt egali cu cei noi. Iteratiile si calculele se opresc atunci cand		  
		centroizii vechi si centroizii sunt egali.					  
																	  |
	Task 3. Vizualizarea rezultatului K-Means						  
		Am refolosit secventa de cod pentru determinarea vectorului	  
		in care se pastreaza pentru fiecare punct, care centroid este 
		mai apropiat. Apoi, am parcurs centroizii, comparandu-i cu	  
		valorile din vector si cu functia scatter3 am atribuit astfel 
		cate o culoare fiecarui cluster.							  
																	  |
	Task 4. Functie de cost											  
		Refolosesc algoritmul din task-ul 3, iar in loc de functia	  
		scatter3, calculez suma pentru fiecare cluster si o introduc  
		intr-un vector. Apoi cu un for, calculez suma dintre elemen-  
		tele acestui vector, adica cost.							  
																	  |
	Task5. Determinarea numarului de grupuri						  
		Am citit punctele in variabila points cu functia load	  
		intr-un for de la  1 la 10, am apelat functia pentru aflarea centroizilor, apoi  
		cea pentru calcularea costului si am retinut costurile in	  
		vector. Cu functia plot, am reprezentat pe grafic costurile, 
		in raport cu cele 10 numere.								  
																	  |
	Feedback si probleme intalnite :
	1.)Suportul informativ despre algoritm in sine descris foarte abstract
	2.)In suportul de pe moodle nu am putut gasi functiile propuse la task-uri ca hinturi
	3.)Putin suport de sintaxa .