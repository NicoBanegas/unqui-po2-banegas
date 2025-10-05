package ar.edu.unq.po2.tpTDTDD;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class PokerStatusTest {
	PokerStatus pokerStatus;
	
	String asDeCorazones;
	String sieteDeCorazones;
	String nueveDeCorazones;
	
	String reinaDePicas;
	String diezDePicas;
	
	String diezDeTrebol;
	
	String reyDeDiamantes;
	
	
	
	@BeforeEach
	void setUp() throws Exception {
		//Set Up
		pokerStatus = new PokerStatus();
		
		asDeCorazones = "1C";
		sieteDeCorazones = "7C";
		nueveDeCorazones = "9C";
		
		reinaDePicas = "QP";
		diezDePicas = "10P";
		
		diezDeTrebol = "10T";
		
		reyDeDiamantes = "KD";
	}

	@Test
	void testVerificarConPóquerDevuelvePoker() {
		//Excercise
		String resultado = pokerStatus.verificar(asDeCorazones, diezDePicas, asDeCorazones, asDeCorazones, asDeCorazones);
		
		//Verify
		assertEquals("Poker", resultado);
	}

	@Test
	void testVerificarConTrioDevuelveTrio() {
		//Excercise
		String resultado = pokerStatus.verificar(diezDePicas, diezDePicas, diezDeTrebol, asDeCorazones, asDeCorazones);
				
		//Verify
		assertEquals("Trio", resultado);
	}
	
	@Test
	void testVerificarConColorDevuelveColor() {
		//Excercise
		String resultado = pokerStatus.verificar(asDeCorazones, sieteDeCorazones, nueveDeCorazones, asDeCorazones, sieteDeCorazones);
				
		//Verify
		assertEquals("Color", resultado);
	}
	
	@Test
	void testVerificarSinJugadaDevuelveNada() {
		//Excercise
		String resultado = pokerStatus.verificar(asDeCorazones, reinaDePicas, diezDeTrebol, reyDeDiamantes, sieteDeCorazones);
				
		//Verify
		assertEquals("Nada", resultado);
	}
	
	@Test
	void testVerificarTodasLasJugadasDevuelveLaMásAlta() {
		//Excercise
		String resultado = pokerStatus.verificar(asDeCorazones, asDeCorazones, asDeCorazones, asDeCorazones, asDeCorazones);
				
		//Verify
		assertEquals("Poker", resultado);
	}
	
	/*
	@Test
	void testUnaCartaMayorAOtraDevuelveTrue() {
		//Excercise
		boolean resultado = pokerStatus.verificar(asDeCorazones, asDeCorazones, asDeCorazones, asDeCorazones, asDeCorazones);
				
		//Verify
		assertTrue(resultado);
	}
	*/
}
