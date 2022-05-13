<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<title>Materiais Didáticos</title>

<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
	rel="stylesheet">
</head>
<body>
	<header>
		<h1 class="img-cabecalho">
			<img class="img-logo" src="images/logo.png"
				alt="Logo Estante de Lidos">
		</h1>
		<nav>
			<c:url value="/main?action=Anunciar" var="anunciar" />
            <a class="anunciar" href="${anunciar}">ANUNCIAR</a>
		</nav>
	</header>
	<main>
		<c:if test="${not empty materiais}">
			<ul class="lista-itens">
				<c:forEach items="${materiais}" var="material">
					<li class="item-material">
						<div>
							<img class="logo-livros" src="images/livros.png"
								alt="Pilha de livros">
							<h3 class="nome-livro">${material.nomeProduto}</h3>
							<section class="preco">
								<svg class="svg-porquinho" width="50" height="50"
									viewBox="0 0 50 50" fill="none"
									xmlns="http://www.w3.org/2000/svg">
	                             <path
										d="M21.1523 0.595707C17.3828 1.14258 14.1894 3.85743 13.0566 7.47071C12.1777 10.2832 12.6367 13.5156 14.2675 15.9277C14.7949 16.709 15.8886 17.8711 16.6406 18.418C16.9726 18.6719 17.1582 18.8672 17.08 18.8867C17.0019 18.916 16.6992 19.0039 16.4062 19.0918C15.5371 19.3652 15.2441 19.7852 15.5371 20.3223C15.7226 20.6836 16.0351 20.7129 16.9335 20.4492C20.5664 19.3945 24.3847 19.3848 27.9101 20.4004C28.4667 20.5566 28.9941 20.6641 29.082 20.6348C29.4238 20.5078 29.5898 20.2832 29.5898 19.9121C29.5898 19.4629 29.3945 19.2969 28.6132 19.082C28.3203 19.0039 28.0175 18.916 27.9394 18.8867C27.8417 18.8574 27.9296 18.7598 28.1835 18.584C28.8964 18.1055 29.7656 17.2852 30.2832 16.6016C30.8593 15.8398 30.8203 15.8496 31.8457 16.1231L32.1875 16.2109L32.0507 16.9629C31.9726 17.4512 31.9335 18.1348 31.9628 18.8477C32.0312 20.7031 32.5683 21.9531 33.7695 23.0664C34.8437 24.0527 36.1816 24.5508 37.7929 24.541C39.1601 24.5313 39.9121 24.2676 40.625 23.5547C40.9863 23.1836 41.2695 22.7734 41.455 22.3438C41.621 21.9824 41.7773 21.6797 41.8164 21.6797C41.9531 21.6797 42.9589 23.1934 43.3496 23.9746C43.5644 24.4043 43.8476 25.0488 43.9746 25.4199C44.2578 26.2109 44.5507 26.6504 44.9707 26.9434C45.1464 27.0606 45.8789 27.3535 46.6015 27.5977C47.5976 27.9297 47.9882 28.1055 48.2031 28.3301L48.4863 28.6231V30.8594V33.0957L48.1933 33.3984C47.9589 33.6426 47.5683 33.8086 45.9667 34.3262C44.7949 34.707 43.8867 35.0586 43.6914 35.2051C43.5156 35.3418 43.0761 35.8887 42.7343 36.416C41.621 38.1055 40.039 39.5996 38.2031 40.6934C36.9238 41.4551 36.621 41.6797 36.5234 41.9336C36.4746 42.0703 36.1914 43.457 35.8984 45.0195C35.6054 46.582 35.332 47.9004 35.3027 47.9492C35.2636 48.0078 34.4726 48.0469 33.3398 48.0469C31.4648 48.0469 31.4355 48.0469 31.3476 47.8223C31.2988 47.7051 31.123 46.9043 30.957 46.0449C30.5468 43.8281 30.371 43.6523 28.8671 43.8379C27.041 44.0723 24.9121 44.1406 22.9785 44.0332C20.4199 43.877 20.4687 43.8379 20.0195 46.2402C19.8535 47.0898 19.6777 47.8418 19.6191 47.9199C19.4628 48.0957 15.8886 48.1055 15.7519 47.9297C15.6933 47.8613 15.4199 46.5918 15.1367 45.1172C14.8535 43.6426 14.5605 42.3047 14.4824 42.1582C14.4042 42.002 14.2089 41.8066 14.0429 41.7188C11.5429 40.3418 9.45307 38.252 8.3105 35.957C7.87104 35.0879 7.36323 33.5156 7.16792 32.4219C6.95307 31.2793 6.92378 28.3398 7.11909 27.2461C7.79292 23.3301 9.58979 20.5176 12.7734 18.4277C13.7304 17.8027 13.8769 17.5879 13.7109 17.0996C13.6621 16.9629 13.4863 16.7871 13.33 16.709C13.0664 16.582 13.0078 16.5918 12.5488 16.8359C11.1035 17.6367 9.39448 19.1406 8.36909 20.5176C7.01167 22.334 6.24995 24.1406 5.70307 26.8262C5.62495 27.207 5.49799 27.0703 5.4394 26.5527C5.22456 24.7754 3.62299 23.3594 2.25581 23.7305C1.41596 23.9551 0.585885 25.0195 0.585885 25.8691C0.585885 26.8848 1.54292 27.7344 3.15424 28.1348L3.63276 28.252L3.15424 28.7305C2.56831 29.3359 1.93354 29.6582 1.04487 29.834C0.0390098 30.0293 -0.263725 30.4883 0.214791 31.1035C0.410104 31.3574 0.449166 31.3672 1.17182 31.3281C1.79682 31.3086 2.0312 31.2402 2.66596 30.9277C3.49604 30.5176 4.58003 29.5313 4.93159 28.877C5.05854 28.6426 5.19526 28.5156 5.32221 28.5156C5.50776 28.5156 5.51753 28.5645 5.48823 29.2285C5.4394 30.0977 5.61518 32.0801 5.82026 33.0957C6.18159 34.8535 6.95307 36.709 7.98823 38.2813C8.96479 39.7559 11.0156 41.6309 12.8027 42.6856L13.2324 42.9395L13.7011 45.4199C13.9648 46.7871 14.2382 48.0859 14.3164 48.3106C14.4921 48.7988 14.9902 49.2676 15.498 49.4141C15.7421 49.4922 16.5917 49.5117 17.9199 49.4922C19.8632 49.4629 19.9902 49.4531 20.332 49.2383C20.8886 48.8965 21.0546 48.5254 21.3671 46.9238L21.6503 45.459L22.08 45.4688C24.9316 45.5566 27.6855 45.4785 29.1992 45.2832C29.3066 45.2637 29.3847 45.4981 29.5117 46.1914C29.8828 48.1738 29.9902 48.5352 30.2832 48.877C30.8007 49.4629 31.1328 49.5313 33.5058 49.4922L35.6152 49.4629L36.0253 49.1895C36.2988 49.0137 36.5039 48.7695 36.621 48.5059C36.7187 48.2813 37.0312 46.8652 37.3144 45.3516L37.832 42.6074L38.3203 42.334C40.664 41.0352 42.8125 39.0332 44.1601 36.9043C44.5507 36.2891 44.4335 36.3477 46.7773 35.5957C48.9355 34.9023 49.3945 34.5801 49.8046 33.5156C49.9804 33.0566 50 32.7734 50 30.8594C50 28.9453 49.9804 28.6621 49.8046 28.2031C49.4238 27.2168 48.8964 26.8164 47.2167 26.2695C46.4941 26.0352 45.8593 25.7715 45.7421 25.6445C45.625 25.5371 45.371 25.0195 45.1855 24.5117C44.6289 23.0664 43.8769 21.8457 42.5781 20.293L42.2851 19.9414L42.4414 19.0723C42.6464 17.9688 42.7343 15.1856 42.5878 14.4043C42.4316 13.5645 42.0214 12.793 41.6015 12.5488C40.6933 12.0313 38.4277 12.5391 34.8242 14.0723C34.0722 14.3945 33.3496 14.7266 33.2421 14.7949C33.0859 14.8926 32.9394 14.9121 32.705 14.8438C32.5195 14.7949 32.1875 14.707 31.9726 14.6582L31.5625 14.5508L31.8066 13.9453C32.1093 13.2031 32.4218 11.7481 32.4218 11.0547C32.4218 10.4395 32.1972 10.1563 31.7089 10.1563C31.2207 10.1563 31.0449 10.4102 30.957 11.2598C30.625 14.1895 28.9062 16.6895 26.3378 17.9785L25.5859 18.3594L24.0234 18.2422C22.8125 18.1543 22.1386 18.1543 20.996 18.252C19.5214 18.3691 19.5214 18.3691 19.0039 18.1348C16.7675 17.1094 15.039 15.0684 14.3359 12.6465C14.1503 11.9824 14.1113 11.6504 14.121 10.4004C14.1308 9.10157 14.1601 8.83789 14.3847 8.07618C14.8339 6.61133 15.5078 5.48829 16.5722 4.42383C20.4296 0.556644 26.9824 1.38672 29.7851 6.08399C30.3515 7.04102 30.6933 7.2168 31.1914 6.82618C31.5917 6.51368 31.5332 6.13282 30.9375 5.17579C29.9609 3.58399 28.164 2.03125 26.4355 1.3086C24.7656 0.605473 22.8613 0.351566 21.1523 0.595707ZM41.0351 14.1309C41.123 14.3945 41.1621 15.0488 41.1523 16.3574C41.1523 17.8809 41.1132 18.3887 40.9375 19.2188C40.664 20.4883 40.205 21.7578 39.8339 22.2656C39.2968 22.9981 38.1445 23.291 36.8554 23.0176C35.1171 22.6465 33.9746 21.5918 33.5449 19.9707C33.2617 18.8672 33.4277 16.6699 33.8281 16.2207C34.0136 16.0156 35.9863 15.127 37.4609 14.5898C38.6621 14.1504 40.0683 13.7793 40.5468 13.7695C40.8691 13.7695 40.9179 13.7988 41.0351 14.1309ZM3.18354 25.293C3.50581 25.4981 4.00385 26.3379 4.00385 26.6699C4.00385 26.8359 3.97456 26.8359 3.37885 26.6699C2.5976 26.4551 2.10932 26.1719 2.07026 25.9082C2.0312 25.6738 2.49018 25.0977 2.70503 25.0977C2.79292 25.0977 2.99799 25.1856 3.18354 25.293Z"
										fill="white" />
	                             <path
										d="M22.5783 5.29296C22.5099 5.36132 22.4611 5.50781 22.4611 5.625C22.4611 5.79101 22.383 5.84961 22.0998 5.9082C21.0841 6.08398 20.3126 6.76757 20.1076 7.65625C19.8341 8.90625 20.4396 9.93164 21.7873 10.4687L22.4123 10.7227L22.4415 12.2461L22.4708 13.7793L22.1974 13.7109C21.7287 13.5937 21.3478 13.418 20.9572 13.0957C20.508 12.7344 20.1857 12.7051 19.9806 13.0078C19.4533 13.75 20.4689 14.7559 21.924 14.9316C22.3634 14.9805 22.4123 15.0195 22.4415 15.2637C22.5099 15.8301 23.2423 15.8105 23.2423 15.2441C23.2423 15 23.2912 14.9512 23.6623 14.8633C25.0392 14.5117 25.8009 13.1934 25.4982 11.6992C25.4298 11.4062 25.2736 11.0156 25.1466 10.8398C24.8439 10.4297 24.1505 9.9414 23.6427 9.76562L23.2423 9.63867V8.33007C23.2423 6.8457 23.2228 6.875 24.1212 7.22656C24.3947 7.33398 24.6974 7.42187 24.7951 7.42187C25.0783 7.42187 25.3126 7.08984 25.2736 6.72851C25.254 6.45507 25.1759 6.35742 24.8244 6.17187C24.5802 6.03515 24.1701 5.91796 23.8283 5.88867C23.3107 5.83984 23.2423 5.81054 23.2423 5.625C23.2423 5.37109 23.0665 5.17578 22.8517 5.17578C22.7638 5.17578 22.6466 5.22461 22.5783 5.29296ZM22.5587 8.20312V9.375L22.0705 9.13086C21.5236 8.85742 21.3673 8.62304 21.3478 8.0957C21.338 7.68554 21.5626 7.37304 22.0216 7.16796C22.5587 6.93359 22.5587 6.93359 22.5587 8.20312ZM23.6232 11.2695C24.1408 11.6016 24.3947 12.2363 24.2287 12.793C24.1115 13.2031 23.633 13.6719 23.3302 13.6719C23.1544 13.6719 23.1447 13.5937 23.1447 12.3535C23.1447 11.6309 23.1642 11.0352 23.1935 11.0352C23.2228 11.0352 23.4181 11.1426 23.6232 11.2695Z"
										fill="white" />
	                             <path
										d="M37.4021 26.7285C36.8845 27.3926 37.6267 28.8965 38.6912 29.3359C39.1892 29.5508 40.0877 29.5313 40.5759 29.3067C41.6404 28.8281 42.324 27.3926 41.7966 26.7285C41.3865 26.2109 40.5271 26.5234 40.5271 27.207C40.5271 27.3242 40.4099 27.5586 40.2732 27.7246C40.0681 27.9785 39.9509 28.0274 39.5994 28.0274C39.2478 28.0274 39.1306 27.9785 38.9256 27.7246C38.7791 27.5488 38.6716 27.3047 38.6716 27.1387C38.6716 26.4844 37.8123 26.2109 37.4021 26.7285Z"
										fill="white" />
	                         </svg>
								<span class="span-preco">R$ ${material.valor}</span>
							</section>
							<section class="item-contato">
								<svg class="svg-whats" width="40" height="40" viewBox="0 0 40 40"
									fill="none" xmlns="http://www.w3.org/2000/svg">
	                             <path
										d="M13.9375 1.125C7.12496 3.5625 2.81246 8.125 0.812458 14.9375C-0.375042 19.0625 0.0624582 24.5625 1.81246 28.0625C3.06246 30.5 3.06246 30.5 1.87496 34.75C1.18746 37.125 0.624958 39.1875 0.624958 39.3125C0.624958 39.625 3.56246 39.0625 6.99996 38.125C9.62496 37.375 10.1875 37.375 12.5625 38.5C14.5 39.3125 16.6875 39.6875 20 39.6875C28.125 39.6875 34.625 35.5 38.0625 28.1875C41.4375 21 39.75 11.6875 34.0625 5.9375C28.9375 0.874996 20.375 -1.1875 13.9375 1.125ZM28.875 3.9375C31.9375 5.75 34.9375 8.875 36.6875 12.0625C38.25 14.9375 38.25 25.0625 36.6875 27.9375C34.9375 31.125 31.9375 34.25 28.875 36.0625C24.8125 38.5 17.25 38.875 12.625 36.875C9.56246 35.5625 9.31246 35.5 6.49996 36.5C4.87496 37.0625 3.31246 37.5 3.12496 37.5C2.87496 37.5 3.06246 36 3.62496 34.125C4.49996 30.875 4.49996 30.5625 3.18746 27.5625C1.62496 23.9375 1.43746 17.3125 2.74996 13.5625C4.43746 9 8.87496 4.5 13.5625 2.75C15.125 2.1875 17.75 1.9375 21 2.0625C25.125 2.25 26.5625 2.5625 28.875 3.9375Z"
										fill="white" />
	                             <path
										d="M9.87517 8.5625C5.81267 13.25 6.87517 19.1875 13.0002 25.8125C16.5627 29.5625 21.0627 31.875 25.1252 31.875C28.8127 31.875 30.7502 31 32.0627 28.75C33.8127 25.8125 33.4377 24.75 29.8752 22.8125L26.6877 21.0625L25.0002 23.125C23.5002 24.9375 23.1877 25.0625 21.8752 24.375C21.1252 23.9375 19.2502 22.5 17.7502 21.125C15.0627 18.625 14.3127 16.75 15.6877 15.875C16.6877 15.25 15.9377 11.5625 14.3752 9.375C12.8752 7.25 11.2502 7 9.87517 8.5625ZM14.0627 11.875C15.1252 14.3125 15.1252 14.4375 14.0002 15.6875C12.8752 16.9375 12.8752 17 14.0627 19.25C15.4377 21.75 19.8752 25.4375 22.2502 26C23.4377 26.3125 24.2502 26 25.5627 24.75L27.3127 23.0625L29.6252 24.375C30.8752 25.125 31.8752 26 31.8752 26.375C31.8752 26.6875 31.0002 27.8125 29.9377 28.875C28.1877 30.6875 27.8127 30.75 24.6252 30.4375C18.6877 29.8125 13.5002 25.6875 10.0627 18.9375C8.50017 15.8125 8.43767 14.4375 9.62517 11.5625C10.9377 8.5625 12.6252 8.6875 14.0627 11.875Z"
										fill="white" />
	                         </svg>
								<section class="telefone-nome">
									<p class="item-telefone">${material.telefone}</p>
									<p class="item-nome">${material.nomeVendedor}</p>
								</section>
							</section>
						</div>
					</li>
				</c:forEach>
			</ul>
		</c:if>
	</main>
	<footer>
		<svg viewBox="0 0 1366 52" fill="none"
			xmlns="http://www.w3.org/2000/svg">
                <path d="M1366 0L0 0L0 52C683 0 1366 52 1366 52V0Z"
				fill="#FAF4FF" />
            </svg>
		<div class="conteudo-footer">
			<h1 class="img-footer">
				<img class="img-logo" src="images/logo.png"
					alt="Logo Estante de Lidos">
			</h1>
			<svg class="linha-footer" viewBox="0 0 2 81" fill="none"
				xmlns="http://www.w3.org/2000/svg">
                    <line x1="1" x2="1" y2="81" stroke="white"
					stroke-width="2" />
                </svg>
			<section class="endereco-footer">
				<p class="conteudo-endereco">Av. João de Camargo, 510</p>
				<p class="conteudo-endereco">Centro, Santa Rita do Sapucaí, MG</p>
				<p class="conteudo-endereco">37540-000</p>
			</section>
		</div>
	</footer>
</body>
</html>
