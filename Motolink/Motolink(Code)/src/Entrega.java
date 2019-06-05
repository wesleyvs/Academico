public class Entrega {
	
	private String item;
	private Double valorItem;
	private Double valorEntrega;
	private String usuarioCliente;
	private String enderecoCliente;
	
	public Entrega(String item, Double valorItem, Double valorEntrega, String usuarioCliente, String enderecoCliente) {
		super();
		this.item = item;
		this.valorItem = valorItem;
		this.valorEntrega = valorEntrega;
		this.usuarioCliente = usuarioCliente;
		this.enderecoCliente = enderecoCliente;
	}
	
	public String getItem() {return item;}
	public void setItem(String item) {this.item = item;}

	public Double getValorItem() {return valorItem;}
	public void setValorItem(Double valorItem) {this.valorItem = valorItem;}

	public Double getValorEntrega() {return valorEntrega;}
	public void setValorEntrega(Double valorEntrega) {this.valorEntrega = valorEntrega;}

	public String getUsuarioCliente() {return usuarioCliente;}
	public void setUsuarioCliente(String usuarioCliente) {this.usuarioCliente = usuarioCliente;}

	public String getEnderecoCliente() {return enderecoCliente;}
	public void setEnderecoCliente(String enderecoCliente) {this.enderecoCliente = enderecoCliente;}	
}
