import java.util.LinkedList;
import java.util.List;

public class Aplicacao {

	private List<Cliente> clientes = new LinkedList<Cliente>();
	private List<Colaborador> colaboradores = new LinkedList<Colaborador>();
	private List<Fornecedor> fornecedores = new LinkedList<Fornecedor>();
	
	public void cadastrarCliente(Cliente cliente) {clientes.add(cliente);}
	public void cadastrarColaborador(Colaborador colaborador) {colaboradores.add(colaborador);}
	public void cadastrarFornecedor(Fornecedor fornecedor) {fornecedores.add(fornecedor);}
	
	//Parametros para buscas de fornecedores
	public Fornecedor buscarFornecedorNome (String razaoSocial) {
		for(Fornecedor fornec: fornecedores) {
			if(fornec.getRazaoSocial().equals(razaoSocial)) return fornec;
		}
		return null;
	}
	public List<Fornecedor> buscarFornecedorTipo (String tipo) {
		List<Fornecedor> fornecedoresEncontrados = new LinkedList<Fornecedor>();
		for(Fornecedor fornec: fornecedores) {
			if(fornec.getTipo().equals(tipo)) fornecedoresEncontrados.add(fornec);
		}
		return fornecedoresEncontrados;
	}
	
	//Para testes
	public List<Cliente> getClientes(){return this.clientes;}
	public List<Colaborador> getColaboradores(){return this.colaboradores;}
	public List<Fornecedor> getFornecedores(){return this.fornecedores;}
}
