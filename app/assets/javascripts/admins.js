 $(document).ready(function()
 { 
 		$("#products_show").show();
 		$("#customers_show").hide();
 		$("#orders_show").hide();
 		$("#selections").hide();
 		var remove;
        
        $("#addproduct").click(function(){
          $("#selections").show();
        });

       $("#products").click(function(){
       	$(remove).removeClass('active');
         remove = this;
          $(this).addClass('active');
           id = this.value;
       		$("#products_show").show();
       		$("#customers_show").hide();
 		    $("#orders_show").hide();
        }); 
       $("#customers").click(function(){
       $(remove).removeClass('active');
                    remove = this;
                    $(this).addClass('active');
                    id = this.value;
       	$("#products_show").hide();
 		$("#customers_show").show();
 		$("#orders_show").hide();
       		
    	}); 
        $("#orders").click(function(){
        	$(remove).removeClass('active');
                    remove = this;
                    $(this).addClass('active');
                    id = this.value;
          $("#products_show").hide();
 		$("#customers_show").hide();
 		$("#orders_show").show();
       		
    	}); 
    	 $('#popuplink').click(function(){
        
        
        $('#popup').show("slow");
    
    });
    
     $('#popupclose').click(function(){
        
        var text=$('#popuptext').val();
        alert(text);
        $('#popup').hide("slow");
    
    });


  });
  