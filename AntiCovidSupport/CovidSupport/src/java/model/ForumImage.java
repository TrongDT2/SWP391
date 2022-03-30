
package model;

public class ForumImage {

    /*
     * Createa attribute
     */
    private int id;
    private int restaurantId;
    private String imgSource;
    private String imgDescription;

    /*
     * Constructor with no parameter
     */
    public ForumImage() {
    }

    /**
     * Contractor have parameters of RestaurantImage object
     *
     * @param id the id of RestaurantImage. It is an int value
     * @param restaurantId the id of RestaurantImage. It is an int value
     * @param imgSource the imgSource of RestaurantImage. It is a string value.
     * @param imgDescription the imgDescription of RestaurantImage. It is a
     * string value.
     */
    public ForumImage(int id, int restaurantId, String imgSource, String imgDescription) {
        this.id = id;
        this.restaurantId = restaurantId;
        this.imgSource = imgSource;
        this.imgDescription = imgDescription;
    }

    /**
     * Return the value of id attribute in ForumImage object
     *
     * @return id is an int value
     */
    public int getId() {
        return id;
    }

    /**
     * Set value to id attribute in ForumImage object
     *
     * @param id is an int value
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * Return the value of restaurantId attribute in ForumImage object
     *
     * @return restaurantId is an int value
     */
    public int getRestaurantId() {
        return restaurantId;
    }

    /**
     * Set value to restaurantId attribute in ForumImage object
     *
     * @param restaurantId is an int value
     */
    public void setRestaurantId(int restaurantId) {
        this.restaurantId = restaurantId;
    }

    /**
     * Return value of imgSource attribute in ForumImage object
     *
     * @return imgSource is a string value
     */
    public String getImgSource() {
        return imgSource;
    }

    /**
     * Set value to imgSource attribute in ForumImage object
     *
     * @param imgSource is a string value
     */
    public void setImgSource(String imgSource) {
        this.imgSource = imgSource;
    }

    /**
     * Return value of imgDescription attribute in ForumImage object
     *
     * @return imgDescription is a string value
     */
    public String getImgDescription() {
        return imgDescription;
    }

    /**
     * Set value to imgDescription attribute in ForumImage object
     *
     * @param imgDescription is a string value
     */
    public void setImgDescription(String imgDescription) {
        this.imgDescription = imgDescription;
    }

}
