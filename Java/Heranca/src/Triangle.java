
public class Triangle extends Shape{
	private int base;
	private int height;
	
	public Triangle(int base, int height, String color) {
		super(color);
		this.base = base;
		this.height = height;
	}

	public int getBase() {return base;}
	public void setBase(int base) {this.base = base;}

	public int getHeight() {return height;}
	public void setHeight(int height) {this.height = height;}
	
	public String toString() {
		StringBuilder shapeDesc = new StringBuilder();
		shapeDesc.append(getBase());shapeDesc.append(" por ");
		shapeDesc.append(getHeight());shapeDesc.append(" - ");
		shapeDesc.append(getColor());
		return shapeDesc.toString();
	}

	@Override
	double getArea() {
		// TODO Auto-generated method stub
		return (this.base*this.height)/2;
	}
}