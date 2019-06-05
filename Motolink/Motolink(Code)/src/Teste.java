import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;

class Teste {
	@Test
	void test() {
		Aplicacao aplicacao = new Aplicacao();
	
		//Teste de cadastro de clientes:
		aplicacao.cadastrarCliente(new Cliente("Rua A", new Compra(0, 0.0), "cliente1@123.com",
											   "Cliente1", "12995533685", "cliente1x", "123456"));
		assertEquals(aplicacao.getClientes().size(), 1);
		
		//Teste de cadastro de colaboradores:
		aplicacao.cadastrarColaborador(new Colaborador("Rua C", 0.0, "Colab1", "45320789763",
									   				   "12995533779", "colab1x", "123456", 
									   				   new Entrega("Pizza", 22.50, 3.50,"Wesley", "Rua X")));
		assertEquals(aplicacao.getColaboradores().size(), 1);
		
		//Teste de cadastro de fornecedores:
		aplicacao.cadastrarFornecedor(new Fornecedor("Rua F", new ProdutosFornecidos("Pizza", 22.50), "45246714000112",
													 "Pizzaria1", "pizzaria1@123.com", "12399788844", "123456", "pizzaria"));
		aplicacao.cadastrarFornecedor(new Fornecedor("Rua G", new ProdutosFornecidos("Pizza", 20.50), "45154874000112",
													 "Pizzaria2", "pizzaria2@123.com", "12395556844", "123476", "pizzaria"));
		assertEquals(aplicacao.getFornecedores().size(), 2);
		
		//Teste de busca de fornecedor por Nome:
		Fornecedor fornecedorEncontradoNome = aplicacao.buscarFornecedorNome("Pizzaria1");
		assertEquals(fornecedorEncontradoNome.getTipo(), "pizzaria");
		
		//Teste de busca de fornecedor por Tipo:
		List<Fornecedor> fornecedorEncontradoTipo = aplicacao.buscarFornecedorTipo("pizzaria");
		assertEquals(fornecedorEncontradoTipo.get(0).getTelefone(), "12399788844");
		assertEquals(fornecedorEncontradoTipo.get(1).getTelefone(), "12395556844");
		assertEquals(fornecedorEncontradoTipo.size(), 2);
	}
}
