import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class JUnitSetupTest {

    private int value;

    @BeforeEach
    public void setUp() {
        value = 5;
    }

    @Test
    public void testValue() {
        assertEquals(5, value);
    }
}