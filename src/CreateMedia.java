import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.sql.*;

public class CreateMedia extends DBConnector {
    static ArrayList<Media> medias = new ArrayList<>();

    static FileIO io = new FileIO();

    static ArrayList<Media> loadMediaDataTxt() {
        createMediaTxt("src/100bedstefilm.txt", "Movie");
        createMediaTxt("src/100bedsteserier.txt","Serie");
        return medias;
    }

    static ArrayList<Media> loadMediaDataDB() {
        ArrayList<Media> mediaFromDB1 = DBConnector.readMedia();
        medias.addAll(mediaFromDB1);
        return medias;
    }

    static void createMediaTxt(String path, String type) {
        ArrayList<String> data = io.readMediaData(path);
        for (int i = 0; i < data.size(); i++) {
            String[] row = data.get(i).split(";");

            String titel = row[0].trim();
            String year = row[1].trim();

            ArrayList<String> category = new ArrayList<>();
            String[] ctg = row[2].split(",");
            for (int n = 0; n < ctg.length; n++) {
                category.add(ctg[n].trim());
            }
            String rating = row[3].trim();

            ArrayList<String> totalEpisodes = new ArrayList<>();
            if (row.length == 5) {
                String[] toe = row[4].split(",");
                for(int t = 0; t < toe.length; t++) {
                    totalEpisodes.add(toe[t].trim());
                }
            }
            String id = String.valueOf(i+1);

            if(type.equals("Movie")) {
                medias.add(new Movie(String.valueOf(i+1), titel, year, rating, category));
            }
            else if(type.equals("Serie")) {
                medias.add(new Serie(String.valueOf(medias.size()+1), titel, year, rating, category, totalEpisodes));
            }
        }
    }

}
