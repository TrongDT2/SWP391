package dao;

import java.util.List;
import model.Feedback;
import model.Forum;
import model.ForumImage;

public interface ForumDetailDAO {

    public List<Forum> getRestaurantByPageIndex(int pageIndex,
            int itemsPerPage) throws Exception;

    public Forum getRestaurantById(int resId) throws Exception;

    public int getTotalRestaurant() throws Exception;

    public List<Feedback> getRestaurantFeedBack(int resId, int pageIndex,
            int itemsPerPage, String filterRate) throws Exception;

    public int getTotalFeedback(int resId, String filterRate) throws Exception;

    public boolean insertFeedback(Feedback feedback) throws Exception;

    public List<ForumImage> getRestaurantImages(int resId) throws Exception;

    public void insertPost(int id, Forum forum);

}
