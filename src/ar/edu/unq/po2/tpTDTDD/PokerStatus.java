package ar.edu.unq.po2.tpTDTDD;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import ar.edu.unq.po2.tpTDTDD.MultiSet;

public class PokerStatus {
	String valor;
	String palo;
	MultiSet multisetDeValores = new MultiSet();
	MultiSet multisetDePalos = new MultiSet();
	String carta;
	List<String> cartasEnMano;
	String estadoDeLaJugada;
	
	public String verificar(String carta1, String carta2, String carta3, String carta4, String carta5) {
		cartasEnMano = new ArrayList<String>(Arrays.asList(carta1, carta2, carta3, carta4, carta5));
		
		while (!cartasEnMano.isEmpty()){
			carta = cartasEnMano.removeFirst();
			valor = carta.substring(0, carta.length() - 1);
			palo = carta.substring(carta.length()-1);
			multisetDeValores.add(valor);
			multisetDePalos.add(palo);
		}
		estadoDeLaJugada = "Nada";
		
		//Checkear trio
		if (multisetDeValores.existsEqualTo(3)) {
			estadoDeLaJugada = "Trio";
		}
		//Checkear color
		if (multisetDePalos.existsEqualTo(5)) {
			estadoDeLaJugada = "Color";
		}
		//Checkear Poker
		if (multisetDeValores.existsMorequalThan(4)) {
			estadoDeLaJugada = "Poker";
		}
		return estadoDeLaJugada;
	}
}
