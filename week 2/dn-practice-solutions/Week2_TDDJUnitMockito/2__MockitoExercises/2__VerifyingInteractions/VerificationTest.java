import static org.mockito.Mockito.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import java.util.List;

public class VerificationTest {

    private List<String> mockedList;

    @BeforeEach
    public void setUp() {
        mockedList = mock(List.class);
    }

    @Test
    public void testVerifyInteraction() {
        mockedList.add("one");
        mockedList.add("two");

        verify(mockedList).add("one");
        verify(mockedList).add("two");
        verify(mockedList, times(1)).add("one");
        verify(mockedList, times(1)).add("two");
    }

    @Test
    public void testVerifyNoMoreInteractions() {
        mockedList.add("one");

        verify(mockedList).add("one");
        verifyNoMoreInteractions(mockedList);
    }
}