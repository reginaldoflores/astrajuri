$(function (){
    $("#cpf_cnpf").on("change", function(){
        var pessoa = $("#cpf_cnpf").val();
        
        $.ajax({
            url:'http://localhost/astrajuri/ajax',
            type: 'POST',
            data:{pessoa:pessoa},
            dataType: 'json',
            success:function(json){
                $('#cpf_cnpf').val(json.cpf);
                $('#nome').val(json.nome);
                $('#email').val(json.email);
                $('#email2').val(json.email);
                $('#tel').val(json.residencial);
                $('#rg').val(json.rg);
                $('#data_nasc').val(json.data_nasc);
                $('#cep').val(json.cep);
                $('#logradouro').val(json.logradouro);
                $('#numero').val(json.numero);
                $('#bairro').val(json.bairro);
                $('#complemento').val(json.complemento);
                $('#cidade').val(json.cidade);
                $('#estado').val(json.uf);
                $('#situacao').val("update");
            }
        });
    });
});