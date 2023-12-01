import java.sql.*;
import java.util.ArrayList;

public class DBConnector {

    static final String DB_URL = "jdbc:mysql://localhost:3306/chillflix";

    //  Database credentials

    static final String USER = "root";
    static final String PASS = "MySQL0200";

    public static ArrayList<Media> readMedia() {

        ArrayList<Media> databaseMedias = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            //STEP 1: Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            //STEP 2: Open a connection
            conn = loginDB();

            //STEP 3: Execute a query
            System.out.println("Creating statement...");

            ResultSet rs = null;
            String sql = "SELECT mediaID, title, category, year, rating, episode FROM chillflix.media";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery(sql);

            //STEP 4: Extract data from result set
            while (rs.next()) {
                //Retrieve by column name

                String id = Integer.toString(rs.getInt("mediaID"));
                String title = rs.getString("title");
                String category = rs.getString("category");
                String year = rs.getString("year");
                String rating = Integer.toString(rs.getInt("rating"));
                String episode = rs.getString("episode");

                String[] categories = category.split("\\.");
                ArrayList<String> categoriesArr = new ArrayList<>();
                for (String cat : categories) {
                    categoriesArr.add(cat.trim());
                }

                if (episode == null) {
                    databaseMedias.add(new Movie(id, title, year, rating, categoriesArr));
                }

                else {
                    String[] episodes = episode.split("\\.");
                    ArrayList<String> episodeArr = new ArrayList<>();
                    for (String epi : episodes) {
                        episodeArr.add(epi.trim());
                    }
                    databaseMedias.add(new Serie(id, title, year, rating, categoriesArr, episodeArr));
                }
            }
            for (Media media : databaseMedias) {
                System.out.println(media.ID + "; " + media.getTitel());
            }

            //STEP 5: Clean-up environment
            rs.close();
            stmt.close();
            conn.close();

        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }//end try

        return databaseMedias;

    }

    public ArrayList<User> loadUsers() {
        ArrayList<User> users = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ArrayList<Media> medias = new ArrayList<>();
        medias.addAll(readMedia());

        try {
            //STEP 1: Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            //STEP 2: Open a connection
            conn = loginDB();

            //STEP 3: Execute a query
            System.out.println("Creating statement...");

            ResultSet rs = null;
            String userSQL = "SELECT userID, username, password FROM chillflix.user";
            stmt = conn.prepareStatement(userSQL);
            rs = stmt.executeQuery(userSQL);

            //STEP 4: Extract data from result set
            while (rs.next()) {
                //Retrieve by column name
                int id = rs.getInt("userID");
                String username = rs.getString("username");
                String password = rs.getString("password");
                users.add(new User(username, password, id, new ArrayList<String>(), new ArrayList<String>()));
            }

            String watchedMediaSQL = "SELECT userID, mediaID FROM chillflix.watched_media";
            stmt = conn.prepareStatement(watchedMediaSQL);
            rs = stmt.executeQuery(watchedMediaSQL);

            while (rs.next()) {
                //Retrieve by column name
                int userID = rs.getInt("userID");
                int mediaID = rs.getInt("mediaID");
                User user = users.get(userID - 1);
                user.addSeenMedia(String.valueOf(mediaID));
            }

            String savedMediaSQL = "SELECT userID, mediaID FROM chillflix.saved_media";
            stmt = conn.prepareStatement(savedMediaSQL);
            rs = stmt.executeQuery(savedMediaSQL);

            while (rs.next()) {
                //Retrieve by column name
                int userID = rs.getInt("userID");
                int mediaID = rs.getInt("mediaID");
                User user = users.get(userID - 1);
                user.addSavedMedia(String.valueOf((mediaID)));
            }

            //STEP 5: Clean-up environment
            rs.close();
            stmt.close();
            conn.close();

        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try

        }//end try

        return users;
    }


    public static Connection loginDB() {

        try {
            return DriverManager.getConnection(DB_URL, USER, PASS);

        } catch (SQLException se) {
            System.out.println("Cant connect to database");
            return loginDB();
        }
    }

    public void saveUserDB(User user) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            //STEP 1: Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            //STEP 2: Open a connection
            conn = loginDB();

            //STEP 3: Execute a query
            System.out.println("Creating statement...");

            ResultSet rs = null;
            String sql = "UPDATE chillflix.watched_movie SET";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery(sql);

            //STEP 5: Clean-up environment
            rs.close();
            stmt.close();
            conn.close();

        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try

        }//end try

    }

    public void signupUser(User user) {

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            //STEP 1: Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            //STEP 2: Open a connection
            conn = loginDB();

            //STEP 3: Execute a query
            System.out.println("Creating statement...");
            ResultSet rs = null;
            String sql = "INSERT INTO user (username,password) VALUES (user.getUsername(),user.getPassword())";
            stmt = conn.prepareStatement(sql);
            stmt.execute(sql);

            //STEP 5: Clean-up environment
            rs.close();
            stmt.close();
            conn.close();

        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try

        }//end try

    }



}
