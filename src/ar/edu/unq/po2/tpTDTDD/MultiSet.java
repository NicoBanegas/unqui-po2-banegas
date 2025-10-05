package ar.edu.unq.po2.tpTDTDD;

import java.util.HashMap;
import java.util.Map;

public class MultiSet {
	
	Map<String, Integer> multiset = new HashMap<>();
	
	public void add(String elem) {
	    multiset.put(elem, multiset.getOrDefault(elem, 0) + 1);
	}

	public int count(String elem) {
	    return multiset.getOrDefault(elem, 0);
	}
	
	public int size() {
		return multiset.size();
	}
}
