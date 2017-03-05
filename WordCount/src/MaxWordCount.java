import java.io.DataInputStream;
import java.io.IOException;

public class MaxWordCount {
	public static void main(String[] args) throws IOException {
		int max = 0;
		String maxstr = null;

		DataInputStream dis = new DataInputStream(System.in);

		System.out.println("Enter your sentences");
		String str = dis.readLine();

		// System.out.println(str.length());

		String arr[] = str.split("[(\\.)|(\\?)]"); //Splitting the sentences by finding . and ?

		for (String s : arr) //Copying the array of splitted words into String s using for each
		{
			String arr1[] = s.split("\\ +"); // finding the spaces in each sentence
			if (arr1.length > max) // finding the sentence with max words 
			{ 
				max = arr1.length;
				maxstr = s;
			}

		}
		System.out.println();
		System.out.println(maxstr);//printing the max sentence
		System.out.println(max);  // printing its length.

	}

}