import java.sql.*;
import java.util.ArrayList;

public class DBConnector {

    static final String DB_URL = "jdbc:mysql://localhost:3306/chillflix";

    //  Database credentials
    static final String USER = "root";
    static final String PASS = "";

    public static ArrayList<Media> readMedia(String type) {
        ArrayList<Media> databaseMedias = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            //STEP 1: Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            //STEP 2: Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            //STEP 3: Execute a query
            System.out.println("Creating statement...");

            if (type.equals("movie")) {
                String sql = "SELECT movieID, title, category, year, rating FROM chillflix.movie";
                stmt = conn.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery(sql);

                //STEP 4: Extract data from result set
                while (rs.next()) {
                    //Retrieve by column name

                    String id = Integer.toString(rs.getInt("movieID"));
                    String title = rs.getString("title");
                    String category = rs.getString("category");
                    String year = Integer.toString(rs.getInt("year"));
                    String rating = Integer.toString(rs.getInt("rating"));
                    String[] categories = category.split("\\.");
                    ArrayList<String> categoriesArr = new ArrayList<>();
                    for (String cat : categories) {
                        categoriesArr.add(cat.trim());
                    }

                    databaseMedias.add(id,title,year,rating,categoriesArr);
                    System.out.println(id + "; " + title + "; " + categoriesArr + "; " + year + "; " + rating);
                }
            }
            /*else if (type.equals("serie")) {
                String sql = "SELECT serieID, title, category, year, rating, episode FROM chillflix.serie";
                stmt = conn.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery(sql);

                //STEP 4: Extract data from result set
                while (rs.next()) {
                    //Retrieve by column name

                    String id = Integer.toString(rs.getInt("serieID"));
                    String title = rs.getString("title");
                    String category = rs.getString("category");
                    String year = Integer.toString(rs.getInt("year"));
                    String rating = Integer.toString(rs.getInt("rating"));

                    String[] categories = category.split("\\.");
                    ArrayList<String> categoriesArr = new ArrayList<>();
                    for (String cat : categories) {
                        categoriesArr.add(cat.trim());
                    }

                    String[] episodes = category.split("\\.");
                    ArrayList<String> episodesArr = new ArrayList<>();
                    for (String cat : categories) {
                        Arr.add(cat.trim());
                    }


                    databaseMedias.add(id,title,year,rating,categoriesArr,episodesArr);
                    System.out.println(id + "; " + title + "; " + categoriesArr + "; " + year + "; " + rating);
                }
            }*/









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
        return DatabaseMedias;

    }

}
