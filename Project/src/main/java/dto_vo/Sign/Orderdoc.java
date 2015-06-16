package dto_vo.Sign;

// =====================발주서================
public class Orderdoc {
	private int docnum; // 문서번호
	private int itemnum; // 품명번호
	private String product; // 품명
	private int unitcost; // 단가
	private int amount; // 수량
	private int odersize; // 규격
	private String ordernote; // 비고
	private int ordercost; // 금액
	
	public Orderdoc() {}

	public Orderdoc(int docnum, int itemnum, String product, int unitcost,
			int amount, int odersize, String ordernote, int ordercost) {
		super();
		this.docnum = docnum;
		this.itemnum = itemnum;
		this.product = product;
		this.unitcost = unitcost;
		this.amount = amount;
		this.odersize = odersize;
		this.ordernote = ordernote;
		this.ordercost = ordercost;
	}

	public int getDocnum() {
		return docnum;
	}

	public void setDocnum(int docnum) {
		this.docnum = docnum;
	}

	public int getItemnum() {
		return itemnum;
	}

	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public int getUnitcost() {
		return unitcost;
	}

	public void setUnitcost(int unitcost) {
		this.unitcost = unitcost;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getOdersize() {
		return odersize;
	}

	public void setOdersize(int odersize) {
		this.odersize = odersize;
	}

	public String getOrdernote() {
		return ordernote;
	}

	public void setOrdernote(String ordernote) {
		this.ordernote = ordernote;
	}

	public int getOrdercost() {
		return ordercost;
	}

	public void setOrdercost(int ordercost) {
		this.ordercost = ordercost;
	}

	@Override
	public String toString() {
		return "Orderdoc [docnum=" + docnum + ", itemnum=" + itemnum
				+ ", product=" + product + ", unitcost=" + unitcost
				+ ", amount=" + amount + ", odersize=" + odersize
				+ ", ordernote=" + ordernote + ", ordercost=" + ordercost + "]";
	}
	
}
