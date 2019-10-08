
public abstract class Shape {
	private String color;
	abstract double getArea();
	
	public Shape(String color) {
		super();
		this.color = color;
	}

	public String getColor() {return color;}
	public void setColor(String color) {this.color = color;}	
		
	public String toString() {
		return this.color;
	}
}
