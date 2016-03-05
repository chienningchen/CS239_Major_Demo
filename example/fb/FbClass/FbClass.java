package FbClass;

public class FbClass {
	public static int value;

	public FbClass() {
		value = 0;
	}

	public static int calculate_fb(int n) {
		if (n <= 0) 
			value += 0;
		else if (n <= 2)
			value += 1;
		else {
			calculate_fb(n - 1);
			calculate_fb(n - 2);
		}
		return value;
	}

	public static void print_fb() {
		System.out.println(value);
	}
};

/*
class myClass {
	public static void main(String[] args) {
		FbClass cls = new FbClass();
		cls.calc(4);
		cls.print();
	}
};
*/