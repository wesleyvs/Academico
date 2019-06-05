public class Fornecedor {

	private String endereco;
	private ProdutosFornecidos prodFornecidos;
	private String cnpj;
	private String razaoSocial;
	private String email;
	private String telefone;
	private String senha;
	private String tipo;
	
	public Fornecedor(String endereco, ProdutosFornecidos prodFornecidos, String cnpj, String razaoSocial, String email, String telefone, String senha, String tipo) {
		this.endereco = endereco;
		this.prodFornecidos = prodFornecidos;
		this.cnpj = cnpj;
		this.razaoSocial = razaoSocial;
		this.email = email;
		this.telefone = telefone;
		this.senha = senha;
		this.tipo = tipo;
	}

	public String getEndereco() {return endereco;}
	public void setEndereco(String endereco) {this.endereco = endereco;}
	
	public ProdutosFornecidos getProdFornecidos() {return prodFornecidos;}
	public void setProdFornecidos(ProdutosFornecidos prodFornecidos) {this.prodFornecidos = prodFornecidos;}
	
	public String getCnpj() {return cnpj;}
	public void setCnpj(String cnpj) {this.cnpj = cnpj;}
	
	public String getRazaoSocial() {return razaoSocial;}
	public void setRazaoSocial(String razaoSocial) {this.razaoSocial = razaoSocial;}
	
	public String getEmail() {return email;}
	public void setEmail(String email) {this.email = email;}
	
	public String getTelefone() {return telefone;}
	public void setTelefone(String telefone) {this.telefone = telefone;}
	
	public String getSenha() {return senha;}
	public void setSenha(String senha) {this.senha = senha;}
	
	public String getTipo() {return tipo;}
	public void setTipo(String tipo) {this.tipo = tipo;}
}
