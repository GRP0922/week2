import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class AAAPatternTest {

    @Test
    public void testAddition() {
        // Arrange
        int a = 5;
        int b = 10;
        int expectedSum = 15;

        // Act
        int actualSum = add(a, b);

        // Assert
        assertEquals(expectedSum, actualSum);
    }

    private int add(int x, int y) {
        return x + y;
    }
}