$(function (){
    $("#cpf_cnpf").on("change", function(){
        var pessoa = $("#cpf_cnpf").val();
        
        $.ajax({
            url:'http://localhost/astrajuri/ajax',
            type: 'POST',
            data:{pessoa:pessoa},
            dataType: 'json',
            success:function(json){
                
                if (json.erro === false) {
                    if (pessoa.length > 11) {
                        $('#pessoaJuridica').css('display', 'block');
                        $('#cpf_cnpf').val(json.cnpj);
                        $('#nome').val(json.nome_fantasia);
                        $('#insc_estadual').val(json.insc_estadual);
                        $('#insc_municipal').val(json.insc_municipal);
                        $('#email').val(json.email);
                        $('#tel').val(json.residencial);
                        $('#celular').val(json.celular);
                        $('#cep').val(json.cep);
                        $('#logradouro').val(json.logradouro);
                        $('#numero').val(json.numero);
                        $('#bairro').val(json.bairro);
                        $('#complemento').val(json.complemento);
                        $('#cidade').val(json.cidade);
                        $('#estado').val(json.uf);
                        $('#situacao').val("update");
                    }else{
                        $('#pessoaFisica').css('display', 'block');
                        $('#rg').val(json.rg);
                        $('#cnh').val(json.cnh);
                        $('#titulo_de_eleitor').val(json.titulo_de_eleitor);
                        $('#cpf_cnpf').val(json.cpf);
                        $('#nome').val(json.nome);
                        $('#email').val(json.email);
                        $('#tel').val(json.residencial);
                        $('#celular').val(json.celular);
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
                }else{
                    $(".erro").css('display', 'block');
                }
                
            }
        });
    });
});

$(function (){
    $("#cpf_cnpf").on("change", function(){
        var pessoa = $("#cpf_cnpf").val();
        
        
        if (pessoa.length == 11) {
            $('#pessoaFisica').css('display', 'block');
        }else if(pessoa.length == 14){
            $('#pessoaJuridica').css('display', 'block');
        }else{
            $(".erro").css('display', 'block');
        }
        
    });
});
