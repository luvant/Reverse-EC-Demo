<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
    $( document ).ready(function(){
        swal("Multumesc pentru comanda", "Comanda dvs a fost record. Va contactam in curand!", "success")
            .then((value) => {
                $( location ).attr("href", "MyAccount/Orders");
            });

    });


</script>