package ar.edu.unq.po2.tpTDTDD;

import java.util.Collection;
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
	
	public boolean existsMorequalThan(int x) {
		Collection<Integer> valores = multiset.values();
		return valores.stream().anyMatch(v -> v >= x);
		
		/*
		int i = 0;
		while(i+1 < valores.length() && valores[i] < x) {
			i++;
		}
		return (valores[i] >= x);
		*/
	}

	public boolean existsEqualTo(int x) {
		Collection<Integer> valores = multiset.values();
		return valores.stream().anyMatch(v -> v == x);
	}
}
