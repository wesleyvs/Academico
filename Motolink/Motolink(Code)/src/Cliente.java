public class Cliente {
	
	private String endereco;
	private Compra compra;
	private String email;
	private String nome;
	private String telefone;
	private String usuario;
	private String senha;
	
	public Cliente(String endereco, Compra compra, String email, String nome, String telefone, String usuario, String senha) {
		this.endereco = endereco;
		this.compra = compra;
		this.email = email;
		this.nome = nome;
		this.telefone = telefone;
		this.usuario = usuario;
		this.senha = senha;
	}	
	public String getEndereco() {return endereco;}
	public void setEndereco(String endereco) {this.endereco = endereco;}
	
	public Compra getCompra() {return compra;}
	public void setCompra(Compra compra) {this.compra = compra;}
	
	public String getEmail() {return email;}
	public void setEmail(String email) {this.email = email;}
	
	public String getNome() {return nome;}
	public void setNome(String nome) {this.nome = nome;}
	
	public String getTelefone() {return telefone;}
	public void setTelefone(String telefone) {this.telefone = telefone;}
	
	public String getUsuario() {return usuario;}
	public void setUsuario(String usuario) {this.usuario = usuario;}
	
	public String getSenha() {return senha;}
	public void setSenha(String senha) {this.senha = senha;}
}
