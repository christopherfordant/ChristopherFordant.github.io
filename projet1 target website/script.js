

var score= document.getElementById("score"); 
var boutonRed = document.querySelector(".Btn-red");
var boutonBlue= document.querySelector(".Btn-blue");
//je sélectionne et je stocke  le cercle rouge 

boutonRed.addEventListener( "click", function (){
     boutonRed.classList.toggle("Btn-blue");
    compteur = compteur +1 ;
    console.log(compteur,"compteur après incrémentation");
    score.innerText = compteur;
    });
    
    boutonBlue.addEventListener( "click", function (){
     boutonBlue.classList.toggle("Btn-pink");
    
});
//je soumets le cercle rouge au click et retour de click
//  
                                          





