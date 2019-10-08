
public class Rectangle extends Shape {
	private int length;
	private int width;
	
	public Rectangle(int length, int width, String color) {
		super(color);
		this.length = length;
		this.width = width;
	}

	public int getLength() {return length;}
	public void setLength(int length) {this.length = length;}

	public int getWidth() {return width;}
	public void setWidth(int width) {this.width = width;}	

	public String toString() {
		StringBuilder shapeDesc = new StringBuilder();
		shapeDesc.append(getLength());shapeDesc.append(" por ");
		shapeDesc.append(getWidth());shapeDesc.append(" - ");
		shapeDesc.append(getColor());
		return shapeDesc.toString();
	}

	@Override
	double getArea() {
		// TODO Auto-generated method stub
		return (this.length*this.width);
	}
}