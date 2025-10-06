package ar.edu.unq.po2.tpTDTDD;

public class Carta {

	private ValorDeCarta valor;
	private String palo;
	
	public ValorDeCarta getValor() {
		return valor;
	}

	public String getPalo() {
		return palo;
	}

	public Carta(ValorDeCarta valor, String palo) {
		this.valor = valor;
		this.palo = palo;
	}
	
	public boolean esMayorQue(Carta carta) {
		return (this.valor.ordinal() > carta.getValor().ordinal());
	}

	public boolean tieneMismoPalo(Carta carta) {
		return this.palo == carta.getPalo();
	}
}
