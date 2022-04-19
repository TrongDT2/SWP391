package model;

import java.sql.Date;

public class Feedback {

    private int id;
    private int forumId;
    private String userName;
    private String feedback;
    private Date feedbackDate;
    private int userRate;

    public Feedback() {
    }

    public Feedback(int id, int forumId, String userName, String feedback, Date feedbackDate, int userRate) {
        this.id = id;
        this.forumId = forumId;
        this.userName = userName;
        this.feedback = feedback;
        this.feedbackDate = feedbackDate;
        this.userRate = userRate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getForumId() {
        return forumId;
    }

    public void setForumId(int forumId) {
        this.forumId = forumId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public Date getFeedbackDate() {
        return feedbackDate;
    }

    public void setFeedbackDate(Date feedbackDate) {
        this.feedbackDate = feedbackDate;
    }

    public int getUserRate() {
        return userRate;
    }

    public void setUserRate(int userRate) {
        this.userRate = userRate;
    }

}
