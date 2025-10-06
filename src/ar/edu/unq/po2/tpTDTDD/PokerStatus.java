package ar.edu.unq.po2.tpTDTDD;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import ar.edu.unq.po2.tpTDTDD.MultiSet;

public class PokerStatus {
	ValorDeCarta valor;
	String palo;
	MultiSet multisetDeValores = new MultiSet();
	MultiSet multisetDePalos = new MultiSet();
	Carta carta;
	List<Carta> cartasEnMano;
	String estadoDeLaJugada;
	
	public String verificar(Carta carta1, Carta carta2, Carta carta3, Carta carta4, Carta carta5) {
		cartasEnMano = new ArrayList<Carta>(Arrays.asList(carta1, carta2, carta3, carta4, carta5));
		
		while (!cartasEnMano.isEmpty()){
			carta = cartasEnMano.removeFirst();
			valor = carta.getValor();
			palo = carta.getPalo();
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
