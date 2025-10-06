package ar.edu.unq.po2.tpTDTDD;

import static org.junit.jupiter.api.Assertions.*;
//import ar.edu.unq.po2.tpTDTDD.ValorDeCarta;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class PokerStatusTest {
	PokerStatus pokerStatus;
	
	Carta asDeCorazones;
	Carta sieteDeCorazones;
	Carta nueveDeCorazones;
	
	Carta reinaDePicas;
	Carta diezDePicas;
	
	Carta diezDeTrebol;
	
	Carta reyDeDiamantes;
	
	
	
	@BeforeEach
	void setUp() throws Exception {
		//Set Up
		pokerStatus = new PokerStatus();
		
		asDeCorazones = new Carta(ValorDeCarta.UNO, "C");
		sieteDeCorazones = new Carta(ValorDeCarta.SIETE, "C");
		nueveDeCorazones = new Carta(ValorDeCarta.NUEVE, "C");
		
		reinaDePicas = new Carta(ValorDeCarta.Q, "P");
		diezDePicas = new Carta(ValorDeCarta.DIEZ, "P");
		
		diezDeTrebol = new Carta(ValorDeCarta.DIEZ, "T");
		
		reyDeDiamantes = new Carta(ValorDeCarta.K, "D");
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
	
	
	@Test
	void testEsMayorQue_UnaCartaMayorAOtraDevuelveTrue() {
		//Excercise
		boolean resultado = reyDeDiamantes.esMayorQue(asDeCorazones);
				
		//Verify
		assertTrue(resultado);
	}
	
	@Test
	void testEsMayorQue_UnaCartaMenorAOtraDevuelveFalse() {
		//Excercise
		boolean resultado = asDeCorazones.esMayorQue(reyDeDiamantes);
				
		//Verify
		assertFalse(resultado);
	}
	
	@Test
	void testTieneMismoPalo_UnaCartaConElMismoPaloQueOtraDevuelveTrue() {
		//Excercise
		boolean resultado = asDeCorazones.tieneMismoPalo(sieteDeCorazones);
				
		//Verify
		assertTrue(resultado);
	}
	
	@Test
	void testTieneMismoPalo_UnaCartaConDistintoPaloQueOtraDevuelveFalse() {
		//Excercise
		boolean resultado = asDeCorazones.tieneMismoPalo(diezDePicas);
				
		//Verify
		assertFalse(resultado);
	}
}
