<!doctype html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="<?= HOME; ?>/assets/images/favicon.ico">

    <title>Astrajuri</title>

    <!-- Principal CSS do Bootstrap -->
    <link href="<?= HOME; ?>/assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Estilos customizados para esse template -->
    <link href="<?= HOME; ?>/assets/css/carousel.css" rel="stylesheet">
  </head>
  <body>

    <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">Inicio</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Sobre a Equipe <span class="sr-only">(atual)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">O Sistema</a>
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
            <img class="first-slide" src="<?= HOME; ?>/assets/images/carousel1.jpg" alt="First slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>AstraJuri</h1>
                <p>Agilize os seus processos internos. Organize sua agenda, clientes e despesas em um sistema Web.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Saiba Mais</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide" src="<?= HOME; ?>/assets/images/carousel2.jpg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption">
                <h1>Assinatura<h1>
                <p>Conheça um plano perfeito para você e adquira uma assinatura e use o AstraJuri por até dois meses grátis. </p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Assinar Agora</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide" src="<?= HOME; ?>/assets/images/carousel3.jpg" alt="Third slide">
            <div class="container">
              <div class="carousel-caption text-right">
                <h1>Facilidades</h1>
                <p>Conheça as facilidades e utilidades do AstraJuri.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Leia Mais</a></p>
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

      <div class="container marketing">

        <!-- Três colunas de texto, abaixo do carousel -->
        <div class="row">
          <div class="col-lg-4">
            <img class="rounded-circle" src="<?= HOME; ?>/assets/images/freature1.jpg" alt="Generic placeholder image" width="140" height="140">
            <h2>Clientes</h2>
            <p>Veja todos os escritórios que utilizam o sistema jurídico AstraJuri. </p>
            <p><a class="btn btn-secondary" href="#" role="button">Mais detalhes &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src="<?= HOME; ?>/assets/images/freature2.jpg" alt="Generic placeholder image" width="140" height="140">
            <h2>Flexivel e leve</h2>
            <p>Uma das principais vantagens do AstraJuri é ser um sistema Web e que pode ser acessado por qualquer computador com acesso a internet sem precisar fazer nenhum download.</p>
            <p><a class="btn btn-secondary" href="#" role="button">Mais detalhes &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src="<?= HOME; ?>/assets/images/freature3.jpg" alt="Generic placeholder image" width="140" height="140">
            <h2>Dúvidas</h2>
            <p>Entenda o por que o AstraJuri é essencial para o seu escritório de advocacia, e como ele irá ajudar no gerenciamento dos advogados de todo o Brasil.</p>
            <p><a class="btn btn-secondary" href="#" role="button">Mais detalhes &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->

        <!-- COMEÇAM AS MENCIONADAS FEATUREZINHAS xD -->

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">Tenha total controle do seu ambiente. <span class="text-muted">Supreendente, não?!</span></h2>
            <p class="lead">Organize a agenda, controle as despesas e controle os clientes do seu escritório.</p>
          </div>
          <div class="col-md-5">
		    <img src="<?= HOME; ?>/assets/images/escritorio1.jpg" class="img-fluid" alt="Imagem responsiva">
            <!--<img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image">-->
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">Perfeito para o seu escritório <span class="text-muted">Você escolhe!</span></h2>
            <p class="lead">Contrate as regiões que seu escritório irá cobrir, divido pelos estados, comarcas e foruns.</p>
          </div>
          <div class="col-md-5 order-md-1">
		   <img src="<?= HOME; ?>/assets/images/escritorio2.jpg" class="img-fluid" alt="Imagem responsiva">
           
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">Relátorios <span class="text-muted">Sem gráficos de pizzas!</span></h2>
            <p class="lead">Gere os relatórios de lucro anuais, mensais e semanais e o relatório de causas ganhas e perdidas</p>
          </div>
          <div class="col-md-5">
			<img src="<?= HOME; ?>/assets/images/escritorio3.jpg" class="img-fluid" alt="Imagem responsiva">
            <!--<img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image">-->
          </div>
        </div>

        <hr class="featurette-divider">

       
        
        
 
			<div class="row">

				<div class="col-md-3"></div>
				
				<div class="col-md-6">
				
					<div class="title">
						<h3>Fale conosco...</h3>
					</div>
					
					<hr>
					
                                        <form method="post">
					  <div class="form-row">
						<div class="form-group col-md-12">
						  <label for="inputEmail4">Nome</label>
						  <input type="name" class="form-control" id="inputEmail4" placeholder="Nome">
						</div>
					  </div>
						
						<div class="form-row">
						  <div class="form-group col-md-12">
							<label for="inputAddress">E-mail</label>
							<input type="mail" class="form-control" id="inputAddress" placeholder="exemplo@mail.com">
						  </div>
						</div>
							
						<div class="form-row">    
						  <div class="form-group col-md-12">
							<label for="inputAddress2">Assunto</label>
							<input type="text" class="form-control" id="inputAddress2" placeholder="">
							<br/>
							<textarea class="form-control" rows="3" id="inputAddress2" placeholder="Digite o texto..."></textarea>
						  </div>
						</div>
						
					  <button type="submit" class="btn btn-primary">Enviar</button>
					</form>
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
