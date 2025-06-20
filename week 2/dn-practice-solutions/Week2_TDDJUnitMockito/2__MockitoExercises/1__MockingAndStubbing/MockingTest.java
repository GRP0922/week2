package week2.tddjunitmockito;

import static org.mockito.Mockito.*;
import org.junit.jupiter.api.Test;
import java.util.List;

class MockingTest {
    @Test
    void testMockCreation() {
        List<String> mockedList = mock(List.class);
        mockedList.add("one");
        verify(mockedList).add("one");
    }
}