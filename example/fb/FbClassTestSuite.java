import FbClass.FbClass;

import junit.framework.TestCase;

public class FbClassTestSuite extends TestCase {

    public void test1() {
        assertEquals (FbClass.calculate_fb(0), 0);
    }
    public void test2() {
        assertEquals (FbClass.calculate_fb(1), 1);
    }
    public void test3() {
        assertEquals (FbClass.calculate_fb(2), 1);
    }
    public void test4() {
        assertEquals (FbClass.calculate_fb(3), 2);
    }
    public void test5() {
        assertEquals (FbClass.calculate_fb(4), 3);
    }
    public void test6() {
        assertEquals (FbClass.calculate_fb(5), 5);
    }
    public void test7() {
        assertEquals (FbClass.calculate_fb(6), 8);
    }
    public void test8() {
        assertEquals (FbClass.calculate_fb(7), 13);
    }
    public void test9() {
        assertEquals (FbClass.calculate_fb(8), 21);
    }
    public void test10() {
        assertEquals (FbClass.calculate_fb(9), 34);
    }
    public void test11() {
        assertEquals (FbClass.calculate_fb(10), 55);
    }
}
