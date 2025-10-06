package ar.edu.unq.po2.tpTDTDD;

import static org.junit.jupiter.api.Assertions.*;
//import ar.edu.unq.po2.tpTDTDD.ValorDeCarta;

import static org.mockito.Mockito.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class PokerStatusTest {
	PokerStatus pokerStatus;
	
	Carta cartaMock;
	/*
	Carta asDeCorazones;
	Carta sieteDeCorazones;
	Carta nueveDeCorazones;
	
	Carta cartaDeCorazones;
	*/
	Carta reinaDePicas;
	Carta diezDePicas;/*
	
	Carta diezDeTrebol;
	*/
	Carta reyDeDiamantes;
	
	
	
	
	@BeforeEach
	void setUp() throws Exception {
		//Set Up
		pokerStatus = new PokerStatus();
		
		cartaMock = mock(Carta.class);
		/*
		asDeCorazones = mock(Carta.class);
		sieteDeCorazones = mock(Carta.class);
		nueveDeCorazones = mock(Carta.class);
		
		cartaDeCorazones = mock(Carta.class);
		*/
		reinaDePicas = new Carta(ValorDeCarta.Q, "P");
		diezDePicas = new Carta(ValorDeCarta.DIEZ, "P");/*
		
		diezDeTrebol = mock(Carta.class);
		*/
		reyDeDiamantes = new Carta(ValorDeCarta.K, "D");
		
	}
	
	//SUT es PokerStatus

	@Test
	void testVerificarConPóquerDevuelvePoker() {
		//Excercise
		when(cartaMock.getValor()).thenReturn(ValorDeCarta.UNO, ValorDeCarta.DIEZ, ValorDeCarta.UNO, ValorDeCarta.UNO, ValorDeCarta.UNO);
		String resultado = pokerStatus.verificar(cartaMock, cartaMock, cartaMock, cartaMock, cartaMock);
		
		//Verify
		assertEquals("Poker", resultado);
	}

	@Test
	void testVerificarConTrioDevuelveTrio() {
		/*
		when(asDeCorazones.getValor()).thenReturn(ValorDeCarta.UNO);
		when(diezDePicas.getValor()).thenReturn(ValorDeCarta.DIEZ);
		when(diezDeTrebol.getValor()).thenReturn(ValorDeCarta.DIEZ);
		
		when(asDeCorazones.getPalo()).thenReturn("C");
		when(diezDePicas.getPalo()).thenReturn("P");
		when(diezDeTrebol.getPalo()).thenReturn("T");
		*/
		when(cartaMock.getValor()).thenReturn(ValorDeCarta.UNO, ValorDeCarta.DIEZ, ValorDeCarta.DIEZ, ValorDeCarta.UNO, ValorDeCarta.DIEZ);
		when(cartaMock.getPalo()).thenReturn("C", "T", "P", "C", "TS");
		//Excercise
		String resultado = pokerStatus.verificar(cartaMock, cartaMock, cartaMock, cartaMock, cartaMock);
				
		//Verify
		assertEquals("Trio", resultado);
	}
	
	@Test
	void testVerificarConColorDevuelveColor() {
		/*
		when(asDeCorazones.getPalo()).thenReturn("C");
		when(sieteDeCorazones.getPalo()).thenReturn("C");
		when(nueveDeCorazones.getPalo()).thenReturn("C");
		
		when(asDeCorazones.getValor()).thenReturn(ValorDeCarta.UNO);
		when(sieteDeCorazones.getValor()).thenReturn(ValorDeCarta.SIETE);
		when(nueveDeCorazones.getValor()).thenReturn(ValorDeCarta.NUEVE);
		*/
		when(cartaMock.getPalo()).thenReturn("C");
		when(cartaMock.getValor()).thenReturn(ValorDeCarta.NUEVE, ValorDeCarta.OCHO, ValorDeCarta.DIEZ, ValorDeCarta.NUEVE, ValorDeCarta.OCHO);
		
		//Excercise
		String resultado = pokerStatus.verificar(cartaMock, cartaMock, cartaMock, cartaMock, cartaMock);
				
		//Verify
		assertEquals("Color", resultado);
	}
	
	@Test
	void testVerificarSinJugadaDevuelveNada() {
		when(cartaMock.getPalo()).thenReturn("C", "P", "T", "D", "C");
		when(cartaMock.getValor()).thenReturn(ValorDeCarta.NUEVE, ValorDeCarta.OCHO, ValorDeCarta.DIEZ, ValorDeCarta.J, ValorDeCarta.Q);
		//Excercise
		String resultado = pokerStatus.verificar(cartaMock, cartaMock, cartaMock, cartaMock, cartaMock);
				
		//Verify
		assertEquals("Nada", resultado);
	}
	
	@Test
	void testVerificarTodasLasJugadasDevuelveLaMásAlta() {
		when(cartaMock.getPalo()).thenReturn("C");
		when(cartaMock.getValor()).thenReturn(ValorDeCarta.UNO);
		//Excercise
		String resultado = pokerStatus.verificar(cartaMock, cartaMock, cartaMock, cartaMock, cartaMock);
				
		//Verify
		assertEquals("Poker", resultado);
	}
	
	//SUT es Carta//
	
	@Test
	void testEsMayorQue_UnaCartaMayorAOtraDevuelveTrue() {
		//Excercise
		boolean resultado = reyDeDiamantes.esMayorQue(reinaDePicas);
				
		//Verify
		assertTrue(resultado);
	}
	
	@Test
	void testEsMayorQue_UnaCartaMenorAOtraDevuelveFalse() {
		//Excercise
		boolean resultado = reinaDePicas.esMayorQue(reyDeDiamantes);
				
		//Verify
		assertFalse(resultado);
	}
	
	@Test
	void testTieneMismoPalo_UnaCartaConElMismoPaloQueOtraDevuelveTrue() {
		//Excercise
		boolean resultado = reinaDePicas.tieneMismoPalo(diezDePicas);
				
		//Verify
		assertTrue(resultado);
	}
	
	@Test
	void testTieneMismoPalo_UnaCartaConDistintoPaloQueOtraDevuelveFalse() {
		//Excercise
		boolean resultado = diezDePicas.tieneMismoPalo(reyDeDiamantes);
				
		//Verify
		assertFalse(resultado);
	}
}
