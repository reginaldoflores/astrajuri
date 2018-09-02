<!doctype html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--<link rel="icon" href="<?= HOME; ?>/assets/images/favicon.ico">-->
    
    <div data-spy="scroll" id="item1"></div>
    <title>Astrajuri</title>

    <!-- Principal CSS do Bootstrap -->
    <link href="<?= HOME; ?>/assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Estilos customizados para esse template -->
    <link href="<?= HOME; ?>/assets/css/carousel.css" rel="stylesheet">
  </head>
  <body>

    <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
          
        <div class="navbar nav_title" style="border: 0;">
            <h4><a href="" class="site_title"><i class="fa fa-paw"></i> Astrajuri!</a></h4>
        </div>
        <!-- 
        <a class="navbar-brand" href="#">Inicio</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        -->
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#item1">Incio <span class="sr-only">(atual)</span></a>
            </li>
            
            <li class="nav-item active">
              <a class="nav-link" href="#item4">Sobre</a> 
            </li>
            
            <li class="nav-item active">
              <a class="nav-link" href="#item5">Contato</a>
            </li>

            <li class="nav-item">
              <a class="nav-link disabled" href="#">Manual</a>
            </li>
            
          </ul>
            
          <form method="post" class="form-inline mt-2 mt-md-0"> 
            <div class="col">
                <input type="text" class="form-control" placeholder="Usuário" name="login">
            </div>
            <div class="col">
                <input type="password" class="form-control" placeholder="Senha" name="senha">
            </div>
            <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Entrar</button>
          </form>
        </div>
      </nav>
    </header>

    
    <main role="main">

      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide" src="<?= HOME; ?>/assets/images/agilidade.jpeg" alt="First slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>Agilidade</h1>
                <p>Agilize os seus processos internos. Organize sua agenda, clientes e despesas em um sistema Web.</p>
                <!--<p><a class="btn btn-lg btn-primary" href="#" role="button">Saiba Mais...</a></p>-->
              </div>
            </div>
          </div>
            
          <div class="carousel-item">
            <img class="second-slide" src="<?= HOME; ?>/assets/images/produtividade.jpeg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption">
                <h1>Produtividade<h1>
                <p>Eleve sua produtividade com o Astrajuri, o melhor software jurídico online do mercado </p>
                <!--<p><a class="btn btn-lg btn-primary" href="#" role="button">Saiba Mais...</a></p>-->
              </div>
            </div>
          </div>
            
          <div class="carousel-item">
            <img class="third-slide" src="<?= HOME; ?>/assets/images/facilidade.jpeg" alt="Third slide">
            <div class="container">
              <div class="carousel-caption text-right">
                <h1>Facilidades</h1> 
                <p>O Astrajuri facilida a gestão dos seus processos jurídicos e garante a organização do seu escritório</p>
                <!--<p><a class="btn btn-lg btn-primary" href="#" role="button">Saiba Mais...</a></p>-->
              </div>
            </div>
          </div>
            
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Voltar</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Avançar</span>
        </a>
      </div>


      <!-- Mensagens de marketing e outras featurezinhas
      ================================================== -->
      <!-- Envolve o resto da página em outro container, para centralizar todo o conteúdo. -->
      
      <div data-spy="scroll" id="item4"></div>
      <div class="container marketing">

       <div class="row">
          <div class="text-center">
            <h5 class="featurette-heading">O software jurídico online ideal para escritórios de advocacia 
            e advogados autônomos </h5>
              <br>
            <p class="lead">O Astrajuri é desenvolvido para que a sua rotina jurídica seja organizada e prática de verdade! 
                Completo e fácil de usar, o software jurídico web moderniza a gestão do seu escritório e torna seu 
                controle de processos muito mais tranquilo e eficiente. Construído com as melhores tecnologias 
                do mercado, o Astrea acompanha seu ritmo de trabalho 
                dentro e fora do escritório. Basta computador conectado à internet!</p>
          </div>
        </div>


        <!-- COMEÇAM AS MENCIONADAS FEATUREZINHAS xD -->
		
        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h4>Gestão de Processos...</h4>
            <p class="lead">Armazene, gerencie e acesse todas as informações sobre seus processos jurídicos em um único 
                lugar! E o melhor, de forma prática e organizada de verdade. Com o Astrajuri você substitui as anotações da agenda, 
                os registros nas planilhas e as pastas no computador por uma ferramenta digital completa, criada exclusivamente 
                para atender as demandas da sua rotina jurídica. Garanta a segurança dos seus dados e comece a gerenciar seus 
                processos e casos de forma inteligente!</p>
          </div>
          <div class="col-md-5">
            <img src="<?= HOME; ?>/assets/images/freature3.jpg" class="img-fluid" alt="Imagem responsiva">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-6 order-md-2">
              <h4>Esteja sempre por dentro do que acontece no escritório e tenha certeza de que todos os prazos serão 
                cumpridos!</h4>
            <p class="lead">Com o controle avançado do Astrajuri você gerencia os prazos do seu escritório do início ao fim, delega 
                tarefas com facilidade e garante que todos os envolvidos cumpram suas atividades a tempo. É a tranquilidade que 
                a sua gestão precisava! Afinal, você pode controlar quem acessa as informações críticas dos prazos e assegurar 
                que, mesmo trabalhando de forma colaborativa, seu escritório jamais perca uma informação importante!</p>
          </div>
          <div class="col-md-5 order-md-1">
            <img src="<?= HOME; ?>/assets/images/escritorio2.jpg" class="img-fluid" alt="Imagem responsiva">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
               <h4>Relátorios com Gráficos...</h4>
            <p class="lead">
            Gera relatórios com gráficos para a tomada de decisão baseado no lucro mensal e anual, causas ganhas e 
            perdidas do escritório por advogado e despesas fixas do escritório.

            </p>
          </div>
          <div class="col-md-5">
            <img src="<?= HOME; ?>/assets/images/escritorio3.jpg" class="img-fluid" alt="Imagem responsiva"> 
          </div>
        </div>

        <div data-spy="scroll" id="item5"></div>
        <hr class="featurette-divider">

	<div class="row featurette">
           		
		<div class="col-md-6 order-md-2">	
                    
                    <div class="title">
			<h3>Fale conosco...</h3>
                    </div>		
					
                    <form method="post">
			<div class="form-row">
                            <div class="form-group col-md-12">
                                <input type="name" class="form-control col-md-12" id="inputEmail4" placeholder="Nome">
                            </div>
			</div>
						
			<div class="form-row">
                            <div class="form-group col-md-12">
                                <input type="mail" class="form-control" id="inputAddress" placeholder="exemplo@mail.com">
                            </div>
			</div>
							
			<div class="form-row">    
                            <div class="form-group col-md-12">
                                <input type="text" class="form-control" id="inputAddress2" placeholder="Assunto">
                                <br/>
                                <textarea class="form-control" rows="3" id="inputAddress2" placeholder="Digite o texto..."></textarea>
                            </div>
			</div>
						
			<button type="submit" class="btn btn-primary">Enviar</button>
                    </form>
                </div>
            
                <div class="col-md-6">
                    <img src="<?= HOME; ?>/assets/images/fale.jpg" class="img-fluid" alt="Imagem responsiva"> 
                </div>
        </div>
        <!-- /FIM DAS FEATUREZINHAS *-* -->
		
	  
        <br/> <br/> <br/>

      <!-- FOOTER -->
      <footer class="container">
        <p class="float-right"><a href="#">Voltar ao topo</a></p>
        <p>&copy; Astrajuri, 2018 &middot; <a href="#">Privacidade</a> &middot; <a href="#">Termos</a></p>
      </footer>
	  
    </main>

    <!-- Principal JavaScript do Bootstrap
    ================================================== -->
    <!-- Foi colocado no final para a página carregar mais rápido -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="<?= HOME; ?>/assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="<?= HOME; ?>/assets/js/popper.min.js"></script>
    <script src="<?= HOME; ?>/assets/js/bootstrap.min.js"></script>
    <!-- Só faz o nossos placeholders de imagens funcionarem. Não precisar copiar a próxima linha! -->
    <script src="<?= HOME; ?>/assets/js/holder.min.js"></script>
  </body>
</html>
