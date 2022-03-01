console.log("connecté");

const switchBox = document.querySelector('.switch');
console.log(switchBox);

const btn = document.querySelector('.btn');
console.log(btn);

const icone = document.querySelector('i');
console.log(icone);

const container = document.querySelector('.container');
console.log(container);

const titre = document.querySelector('h1');
console.log(titre);

switchBox.addEventListener('click',function(){
    
    console.log("Div cliquée");


        btn.classList.toggle('btn-change');

        icone.classList.toggle('icone-change');

        icone.classList.toggle('fa-sun');

        switchBox.classList.toggle('switch-change');

        container.classList.toggle('container-change');
    

        

        if(titre.innerText === 'DARK MODE'){
        titre.innerText = 'LIGHT MODE';
            }
        else if(titre.innerText === 'LIGHT MODE'){
            titre.innerText ='DARK MODE'; 
            };
       
//    
});











