package com.example.store;

import java.util.HashMap;

public class StoreItemCollection {
    private HashMap<String, StoreItem> items = new HashMap<String, StoreItem>();

    public StoreItemCollection() {
        StoreItem[] a = new StoreItem[]{
                StoreItem.set("0","Sans Rival", "Sans Rival which means without rival lives very true to its name. With scrumptious layers of nutty meringue, creamy French buttercream, and chopped cashews, this Filipino dessert cake is far from ordinary!\n", 0, 180, "P1SansRival.png"),
                StoreItem.set("1","Carrot Cake", "Dolce Baker’s Chocolate Torte has a silky-smooth texture, sinfully chocolate flavor, and ability to be easily adapted to different tastes, toppings, and flavors that makes it the perfect guest at any gathering.\n", 0, 1200, "P7CarrotCake.jpg"),
                StoreItem.set("2","Chocolate Torte", "One of our Classics is our Chocolate Ganache Cake, This incredibly moist chocolate cake is smothered with a creamy chocolate ganache that is highly addicting you’ll be coming back for a second slice.\n", 0, 1600, "P2ChocolateTorte.jpg"),
                StoreItem.set("3","Chocolate Ganache", "Bring to the table win-win survival strategies to ensure proactive domination. At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution. User generated content in real-time will have multiple touchpoints for offshoring.", 0, 1800, "P3ChocollateGanache.jpg"),
                StoreItem.set("4","Burnt Cheesecake", "This cheesecake is the alter ego to the classic New york style cheesecake with the traditional graham cookie crust. This is the cheesecake that wants to get burnt, cracked, and cooked at high heat. Which also means this is the cheesecake that’s impossible to mess up. ", 0, 280, "P9BurntCheesecake.jpg"),
                StoreItem.set("5","Chocolate Chip Cookies", "Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.\n", 0, 70, "P5Cookies.jpg"),
                StoreItem.set("6","Blueberry Cheesecake", "Our Blueberry Cheesecake features a homemade graham cracker crust with a smooth and creamy cheesecake filling with a touch of tanginess from the blueberry compote on top", 70, 123, "P8BlueberryCheesecake.jpg"),
                StoreItem.set("7","Mini Blueberry Cheesecake", "Enjoy our mini version of Customized Cake’s But they are jam packed with flavor. ", 0, 180, "P6MiniCheesecake.jpg")
        };
        for (StoreItem item: a) {
            items.put(item.getId(), item);
        }
    }

    public HashMap<String, StoreItem> getItems (){
        return items;
    }


}
