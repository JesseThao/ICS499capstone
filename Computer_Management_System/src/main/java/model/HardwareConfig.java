package model;
import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

public class HardwareConfig implements Serializable {
	private static final long serialVersionUID = 1L;

	private ArrayList<Product> myProducts = new ArrayList<Product>();
	//private ArrayList<SelectedProd> mySelectedProducts = new ArrayList<SelectedProd>();
	private ArrayList<Product> mySelectedProducts = new ArrayList<Product>();
	private ArrayList<String> components = new ArrayList<>();
	private boolean selectedProduct;
	private Product selectProductforType;
	private String email;
	private String saveID;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSaveID() {
		return saveID;
	}
	public void setSaveID(String saveID) {
		this.saveID = saveID;
	}
	/**
	public Product getSelectProductforType() {
		for (int y= 0; y < components.size(); y++) {
			System.out.println("firstloop Y" + y);
			
			for(int i = 0; i < mySelectedProducts.size(); i++) {
				System.out.println("secondloop" + i);
				
				if (mySelectedProducts.get(i).getComponent() == components.get(y)) {
					System.out.println("match");
					for(int z=0; z < myProducts.size(); z++) {
						System.out.println("thirdloop" + z);
						selectProductforType = myProducts.get(z);
					}
				}
			}
		}
		System.out.println(selectProductforType.toString());
		return selectProductforType;		
	}**/
	public void setSelectProductforType(Product selectProductforType) {
		this.selectProductforType = selectProductforType;
	}
	public ArrayList<String> getComponents() {
		return components;
	}
	public void setComponents(ResultSet rs) {
		try {
			if (rs.getFetchSize() > 1) {
				System.out.println("no result set");
			}
			if (components.size() > 0) {
				System.out.println("Components already exist" + components.size());
			}else {
				while (rs.next()) {
					components.add(rs.getString("productType"));
					Product createSelectedList = new Product();
					createSelectedList.setProductType(rs.getString("productType"));
					mySelectedProducts.add(createSelectedList);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	public ArrayList<Product> getMyProducts() {
		return myProducts;
	}
	public void setMyProducts(Product newProduct) {
		System.out.println(newProduct.toString());
		
		if(!myProducts.contains(newProduct)) {
			myProducts.add(newProduct);
		}		
	}
	@Override
	public int hashCode() {
		return Objects.hash(myProducts, mySelectedProducts);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		HardwareConfig other = (HardwareConfig) obj;
		return Objects.equals(myProducts, other.myProducts)
				&& Objects.equals(mySelectedProducts, other.mySelectedProducts);
	}
	public void setMyProducts(ArrayList<Product> Products) {
		System.out.println("Array of products: " + Products.toString());
		Iterator<Product> iter = Products.iterator();
		
		while (iter.hasNext()) {
			System.out.println(iter.next());
		}
		//myProducts.add(newProduct);
	}
	@SuppressWarnings("unchecked")
	public ArrayList<Product> getMySelectedProducts() {
		return (ArrayList<Product>) mySelectedProducts.clone();
	}
	public void setMySelectedProducts(Product product) {
		
		for(int i = 0; i < mySelectedProducts.size(); i++) {
			if(mySelectedProducts.get(i).getProductType().equals(product.getProductType())) {
				mySelectedProducts.set(i, product);
			}
		}
		
	}
	public boolean isSelectedProduct() {
		
		for(int i = 0; i < mySelectedProducts.size(); i++) {
			if(mySelectedProducts.get(i).getProductID() !=null) {
				return true;
			}
		}
		return false;
	}
	public void deleteMySelectedProducts(Product product) {
		
		Product resetProd = new Product();
		resetProd.setProductType(product.getProductType());
		
		for(int i = 0; i < mySelectedProducts.size(); i++) {
			if(mySelectedProducts.get(i).getProductType().equals(product.getProductType())) {
				mySelectedProducts.set(i, resetProd);
			}
		}
		
	}
}

	