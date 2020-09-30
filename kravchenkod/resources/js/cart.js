const { default: Axios } = require("axios");

const formAddToCartAll= document.querySelectorAll('.add-to-cart');


if(formAddToCartAll){
    for(let formAddToCart of formAddToCartAll){
    formAddToCart.addEventListener('submit', function(e){
        e.preventDefault();
        const data = new FormData(formAddToCart);  //{qty: 2; product_id:14}


        axios.post('/cart/add',data)
            .then(function(response){
                changeCart(response.data);
            });
        });
    }
}


 function changeCart(data){
    document.querySelector('.modal-body').innerHTML = data;
    const cartCount= document.querySelector('.cart-count');
    const count= document.querySelector('.count');

    if(cartCount){
        count.innerHTML = cartCount.innerHTML;
    }
    else
        count.innerHTML = '';
  
     
}



document.querySelector('.clear-cart').addEventListener('click', function(e){
    e.preventDefault();
    axios.post('/cart/clear')
        .then(function(response){
        changeCart(response.data);
        
      });

});



document.querySelector('body').addEventListener('submit', function(e){
    
    if(e.target.classList.contains('product-delete')){
        e.preventDefault();
        const data = new FormData(e.target);  //{qty: 2; product_id:14}

        axios.post('/cart/remove',data)
            .then(function(response){
                changeCart(response.data);
              });  
    }
   
})














    
    document.querySelector('.letter-form').addEventListener('submit', function(e){
    e.preventDefault();
    const data = new FormData(document.querySelector('.letter-form'));  //{qty: 2; product_id:14}
    axios.post('/letter', data)
        .then(function(response){ 
            let letr = document.getElementsByName('letr');
        if(response.data == 'ok')
        {
            $('.letter-form').hide();
            $('.letr').hide();
            $('.cmc').show();
           
        }
        else{
            result = response;
        }


      });

});










(function() {
    'use strict';
    window.addEventListener('load', function() {
      // Fetch all the forms we want to apply custom Bootstrap validation styles to
      let forms = document.getElementsByClassName('letter-form');
      // Loop over them and prevent submission
      var validation = Array.prototype.filter.call(forms, function(form) {
        form.addEventListener('submit', function(event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }
          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  })();