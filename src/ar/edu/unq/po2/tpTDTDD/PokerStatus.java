package ar.edu.unq.po2.tpTDTDD;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import ar.edu.unq.po2.tpTDTDD.MultiSet;

public class PokerStatus {
	
	public boolean verificar(String carta1, String carta2, String carta3, String carta4, String carta5) {
		String valor = "3";
		MultiSet multisetDeValores = new MultiSet();
		String carta;
		List<String> cartasEnMano = new ArrayList<String>(
													Arrays.asList(carta1, carta2, carta3, carta4, carta5));
		
		while ((!cartasEnMano.isEmpty()) && (multisetDeValores.size() <= 2)){
			carta = cartasEnMano.removeFirst();
			valor = carta.substring(0, carta.length() - 1);
			multisetDeValores.add(valor);
		}
		return ((multisetDeValores.size() <= 2) && (multisetDeValores.count(valor) >= 4 || multisetDeValores.count(valor) <= 1) );
	}
}
