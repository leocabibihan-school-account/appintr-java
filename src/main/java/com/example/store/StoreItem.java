package com.example.store;



import java.util.ArrayList;

public class StoreItem {
    private String name = "";
    private int price = 0;
    private int quantity = 0;
    private String description = "";
    private String img = "";
    private String id = "";

    public StoreItem() {

    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    public static StoreItem set(String id,String name, String description, int quantity, int price, String img) {
        StoreItem item = new StoreItem();
        item.setId(id);
        item.setName(name);
        item.setDescription(description);
        item.setQuantity(quantity);
        item.setPrice(price);
        item.setImg(img);

        return item;
    }





    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public static StoreItem clone(StoreItem toClone) {
        return StoreItem.set(toClone.getId(), toClone.getName(), toClone.getDescription(), toClone.getQuantity(), toClone.getPrice(), toClone.getImg());

    }

}
