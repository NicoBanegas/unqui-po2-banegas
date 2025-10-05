package ar.edu.unq.po2.tpTDTDD;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class PokerStatusTest {
	PokerStatus pokerStatus;
	
	String asDeCorazones;
	String reinaDePicas;
	String diezDeTrebol;
	
	@BeforeEach
	void setUp() throws Exception {
		//Set Up
		pokerStatus = new PokerStatus();
		asDeCorazones = "1C";
		reinaDePicas = "QP";
		diezDeTrebol = "10T";
	}

	@Test
	void testVerificarConPóquerDaVerdadero() {
		//Excercise
		boolean resultado = pokerStatus.verificar(asDeCorazones, reinaDePicas, asDeCorazones, asDeCorazones, asDeCorazones);
		
		//Verify
		assertTrue(resultado);
	}

	@Test
	void testVerificarSinPóquerDaFalsoBorde() {
		//Excercise
		boolean resultado = pokerStatus.verificar(reinaDePicas, reinaDePicas, asDeCorazones, asDeCorazones, asDeCorazones);
				
		//Verify
		assertFalse(resultado);
	}
	
	@Test
	void testVerificarSinPóquerDaFalso() {
		//Excercise
		boolean resultado = pokerStatus.verificar(reinaDePicas, reinaDePicas, diezDeTrebol, asDeCorazones, asDeCorazones);
				
		//Verify
		assertFalse(resultado);
	}
}
