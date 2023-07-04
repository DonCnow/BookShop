
/**
 *  Commander
 */
function buy(bid){
	$.get("books_buy.action", {bid:bid}, function(data){
		if(data=="ok")
		{
			layer.msg(" Commandation réussie!", {time:800}, function(){
               location.reload();
            });
		}
		else if(data=="fail")
		{
            layer.msg("Il n'y a plus de place!", {time:800}, function(){

            });
		}


	});
}

function lessen(bid){
    $.post("books_lessen.action", {bid:bid}, function(data){
        if(data=="ok"){
            layer.msg("L'opération a réussi!", {time:800}, function(){
                location.reload();
            });
        }

    });
}
/**
 * Supprimer au panier
 */
function deletes(bid){
    $.post("books_delete.action", {bid:bid}, function(data){
        if(data=="ok"){
            layer.msg("La suppression a réussi!", {time:800}, function(){
                location.reload();
            });
        }
    });
}