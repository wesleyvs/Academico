public class Colaborador {
		
	private String enderecoAtual;
	private Double valorEntrega;
	private String nome;
	private String cpf;
	private String telefone;
	private String usuario;
	private String senha;
	private Entrega entrega;
	
	public Colaborador(String enderecoAtual, Double valorEntrega, String nome, String cpf, String telefone, String usuario, String senha, Entrega entrega) {
		this.enderecoAtual = enderecoAtual;
		this.valorEntrega = valorEntrega;
		this.nome = nome;
		this.cpf = cpf;
		this.telefone = telefone;
		this.usuario = usuario;
		this.senha = senha;
		this.entrega = entrega;
	}
	
	public String getEnderecoAtual() {return enderecoAtual;}
	public void setEnderecoAtual(String enderecoAtual) {this.enderecoAtual = enderecoAtual;}
	
	public Double getValorEntrega() {return valorEntrega;}
	public void setValorEntrega(Double valorEntrega) {this.valorEntrega = valorEntrega;}
	
	public String getNome() {return nome;}
	public void setNome(String nome) {this.nome = nome;}
	
	public String getCpf() {return cpf;}
	public void setCpf(String cpf) {this.cpf = cpf;}
	
	public String getTelefone() {return telefone;}
	public void setTelefone(String telefone) {this.telefone = telefone;}
	
	public String getUsuario() {return usuario;}
	public void setUsuario(String usuario) {this.usuario = usuario;}
	
	public String getSenha() {return senha;}
	public void setSenha(String senha) {this.senha = senha;}
	
	public Entrega getEntrega() {return entrega;}	
	public void setEntrega(Entrega entrega) {this.entrega = entrega;}
}