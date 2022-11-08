package model;
import java.io.Serializable;

public class HardwareConfig implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private int configID;
	private String productID;
	
	public int getConfigID() {
		return configID;
	}
	public void setConfigID(int configID) {
		this.configID = configID;
	}
	public String[] getConfigProducts() {
		return configProducts;
	}
	public void setConfigProducts(String[] configProducts) {
		this.configProducts = configProducts;
	}
	
	

}

	