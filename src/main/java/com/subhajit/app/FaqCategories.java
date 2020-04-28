package ch01;
import java.util.Iterator;
import java.util.Vector;

public class FaqCategories
{
	private Vector categories = new Vector();
	public FaqCategories()
	{
		categories.add("Date & Time");
		categories.add("String & StringBuffers");
		categories.add("Threading");
	}
	public Iterator getAllCategories()
	{
		return categories.iterator();
	}
}