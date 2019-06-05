public class Compra {
	
	private int quantidadeItem;
	private Double valorTotal;
	
	
	public Compra(int quantidadeItem, Double valorTotal) 
	{
		this.quantidadeItem = quantidadeItem;
		this.valorTotal = valorTotal;
	}
	
	public int getQuantidadeItem() {return quantidadeItem;}
	public void setQuantidadeItem(int quantidadeItem) {this.quantidadeItem = quantidadeItem;}
	
	public Double getValorTotal() {return valorTotal;}
	public void setValorTotal(Double valorTotal) {this.valorTotal = valorTotal;}	
}
