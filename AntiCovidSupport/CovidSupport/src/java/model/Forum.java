
package model;


public class Forum {

 
    private int id, userId;
    private String resName;
    private String previewImgSrc;
    private float avgRate;

    /*
     * Constructor with no parameter
     */
    public Forum() {
    }

    public Forum(int id, int userId, String resName, String previewImgSrc, float avgRate) {
        this.id = id;
        this.userId = userId;
        this.resName = resName;
        this.previewImgSrc = previewImgSrc;
        this.avgRate = avgRate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getResName() {
        return resName;
    }

    public void setResName(String resName) {
        this.resName = resName;
    }


    public String getPreviewImgSrc() {
        return previewImgSrc;
    }

    public void setPreviewImgSrc(String previewImgSrc) {
        this.previewImgSrc = previewImgSrc;
    }

    public float getAvgRate() {
        return avgRate;
    }

    public void setAvgRate(float avgRate) {
        this.avgRate = avgRate;
    }



    
}
