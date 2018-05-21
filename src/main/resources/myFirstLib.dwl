%dw 1.0

%var calcTotalSeats = (pType) -> 
using (
	ptNum = pType[-3..-1] as :number
) (
	150 when ptNum <= 737 otherwise 300
)

%var exchangeRates = {
	USD: 1.0,
	EUR: 0.8,
	CAD: 1.2
}

---

{
	xe: exchangeRates,
	calcBoeingTotalSeats: calcTotalSeats
}