package pl.coderslab.userDao;

import org.mindrot.jbcrypt.BCrypt;
import pl.coderslab.utils.DbUtil;

import java.sql.*;
import java.util.Arrays;

public class UserDao {

    private static final String CREATE_USER_QUERY = "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
    private static final String READ_USER = "SELECT * FROM users WHERE id = ?";
    private static final String UPDATE_USER = "UPDATE users SET username = ?, email = ?, password = ? WHERE id = ?;";
    private static final String DELETE_USER = "DELETE FROM users WHERE id = ?";
    private static final String GET_ALL= "SELECT * FROM users";


    public String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }


    public User create(User user) {

        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement pStmt = conn.prepareStatement(CREATE_USER_QUERY, Statement.RETURN_GENERATED_KEYS);
            pStmt.setString(1, user.getUserName());
            pStmt.setString(2, user.getEmail());
            pStmt.setString(3, hashPassword(user.getPassword()));

            pStmt.executeUpdate();

            ResultSet rS = pStmt.getGeneratedKeys();

            if (rS.next()) {
                user.setId(rS.getInt(1));
            }
            return user;


        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }

    }




    public User read(int userId) {

        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement pStmt = conn.prepareStatement(READ_USER);
            pStmt.setInt(1, userId);

            User user = new User();

            ResultSet rS = pStmt.executeQuery();
            if (rS.next()) {

                user.setId(rS.getInt("id"));
                user.setEmail(rS.getString("email"));
                user.setUserName(rS.getString("username"));
                user.setPassword(rS.getString("password"));

                return user;}


        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;

    }


public void update (User user) {

    try (Connection conn = DbUtil.getConnection()) {

        PreparedStatement pStmt = conn.prepareStatement(UPDATE_USER);
        pStmt.setString(1, user.getUserName());
        pStmt.setString(2, user.getEmail());
        pStmt.setString(3, this.hashPassword(user.getPassword()));
        pStmt.setInt(4, user.getId());
        pStmt.executeUpdate();

    } catch (SQLException ex) {
        ex.printStackTrace();
    }

}

public void delete (int userId) {

    try (Connection conn = DbUtil.getConnection()) {

        PreparedStatement pStat = conn.prepareStatement(DELETE_USER);
        pStat.setInt(1, userId);
        pStat.executeUpdate();

    } catch (SQLException ex) {
        ex.printStackTrace();
    }

}


private User[] addToArray(User u, User[] users) {

        User[] tmpUsers = Arrays.copyOf(users, users.length + 1);
        tmpUsers[users.length] = u;
        return tmpUsers;
}
public User[] findAll() {

    User[] findAllArray = new User[0];

       try (Connection conn = DbUtil.getConnection()) {
        PreparedStatement pStat = conn.prepareStatement(GET_ALL);

        ResultSet rS = pStat.executeQuery();
        while (rS.next()) {
            User user = new User();
            user.setId(rS.getInt("id"));
            user.setUserName(rS.getString("username"));
            user.setEmail(rS.getString("email"));
            user.setPassword(rS.getString("password"));

            findAllArray = addToArray(user, findAllArray);

        }

    }catch (SQLException ex) {
           ex.printStackTrace();
       }

       return findAllArray;}

}



