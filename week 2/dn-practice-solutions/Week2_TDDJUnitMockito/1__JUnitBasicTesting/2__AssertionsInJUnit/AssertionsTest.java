import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class AssertionsTest {

    @Test
    public void testEquality() {
        assertEquals(5, 2 + 3, "2 + 3 should equal 5");
    }

    @Test
    public void testNotNull() {
        String str = "JUnit";
        assertNotNull(str, "String should not be null");
    }

    @Test
    public void testTrue() {
        assertTrue(3 > 2, "3 should be greater than 2");
    }

    @Test
    public void testFalse() {
        assertFalse(1 > 2, "1 should not be greater than 2");
    }

    @Test
    public void testArrayEquals() {
        int[] expected = {1, 2, 3};
        int[] actual = {1, 2, 3};
        assertArrayEquals(expected, actual, "Arrays should be equal");
    }
}