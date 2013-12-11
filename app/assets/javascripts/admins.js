 $(document).ready(function()
 { 
 		$("#products_show").show();
 		$("#users_show").hide();
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
       		$("#users_show").hide();
 		    $("#orders_show").hide();
        }); 
       $("#users").click(function(){
       $(remove).removeClass('active');
                    remove = this;
                    $(this).addClass('active');
                    id = this.value;
       	$("#products_show").hide();
 		$("#users_show").show();
 		$("#orders_show").hide();
       		
    	}); 
        $("#orders").click(function(){
        	$(remove).removeClass('active');
                    remove = this;
                    $(this).addClass('active');
                    id = this.value;
          $("#products_show").hide();
 		$("#users_show").hide();
 		$("#orders_show").show();
       		
    	}); 
    	 
    
     

  });
  