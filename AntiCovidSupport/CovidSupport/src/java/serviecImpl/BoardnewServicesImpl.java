/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package serviecImpl;

import dao.BoardnewDao;
import impl.BoardnewDaoImpl;
import java.util.List;
import model.Boardnew;
import service.BoardnewService;

public class BoardnewServicesImpl implements BoardnewService{

    BoardnewDao boardnewDao = new BoardnewDaoImpl();

    @Override
    public Boardnew get(int id) {
        return boardnewDao.get(id);
    }

    @Override
    public List<Boardnew> getAll() {
        return boardnewDao.getAll();
    }
    
}
