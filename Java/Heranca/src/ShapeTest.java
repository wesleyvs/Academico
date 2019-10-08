import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class ShapeTest {

	Triangle triangulo;
	Rectangle retangulo;
	
	@Test
	void testTriangulo() {
		triangulo = new Triangle(2, 2, "red");
		assertEquals(triangulo.getArea(), 2);
		assertEquals(triangulo.getColor(), "red");	
	}

	@Test
	void testRetangulo() {
		retangulo = new Rectangle(2, 2, "blue");
		assertEquals(retangulo.getArea(), 4);
		assertEquals(retangulo.getColor(), "blue");
	}
	
	@Test
	void imprimirDados() {
		triangulo = new Triangle(2, 2, "red");
		retangulo = new Rectangle(2, 2, "blue");
		assertEquals(triangulo.toString(), "2 por 2 - red");
		assertEquals(retangulo.toString(), "2 por 2 - blue");
	}
}
