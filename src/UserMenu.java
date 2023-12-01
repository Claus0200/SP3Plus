import java.lang.reflect.Array;
import java.util.ArrayList;

public class UserMenu {

    TextUI textUI = new TextUI();
    FileIO fileIO = new FileIO();
    User user;
    String path = "src/users.txt";
    ArrayList<User> users = new ArrayList<>();

    DBConnector dbc = new DBConnector();

    String loadType;

    public User start(String type) {
        this.loadType = type;
        loadUsers();
        getChoice();
        return user;
    }

    void getChoice() {
        String choice = textUI.getUserInput("Signup(S) or Login(L)");
        if (choice.equals("S")) {
            signup();
        }
        if (choice.equals("L")) {
            login();
        } else {
            getChoice();
        }
    }

    public ArrayList<User> getUsers() {
        return this.users;
    }

    void loadUsers() {
        if (loadType.equals("txt")) {
            users = fileIO.loadUsers();
        }
        else if (loadType.equals("db")) {
            users = dbc.loadUsers();
            System.out.println(users);
        }
    }


    void signup() {
        ArrayList<String> seenMedias = new ArrayList<>();
        ArrayList<String> savedMedias = new ArrayList<>();
        String password = "";
        String username = "";
        while (true) {
            boolean userExist = false;
            username = textUI.getUserInput("Username: ");
            password = textUI.getUserInput("Password: ");
            for (User userFromList : users) {
                if (username.equals(userFromList.getUsername())) {
                    userExist = true;
                    System.out.println("This username already exist!");
                }
            }
            if (!userExist) {
                break;
            }
        }

        user = new User(username, password, users.size() + 1, seenMedias, savedMedias);
        users.add(user);

        if(loadType.equals("txt")) {
            seenMedias.add("0");
            savedMedias.add("0");
            fileIO.signupUser("src/users.txt", users);
        }

        else if(loadType.equals("db")) {
            dbc.signupUser(user);
        }

        System.out.println("User has been saved");
    }

    void login() {
        boolean loginSucces = false;
        while (!loginSucces) {
            String username = textUI.getUserInput("Username: ");
            String password = textUI.getUserInput("Password: ");
            for (User user : users) {
                if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
                    this.user = user;
                    loginSucces = true;
                    System.out.println("Login succesful");
                }
            }
            if (!loginSucces) {
                System.out.println("You failed to login, try again");
            }
        }
    }

    void saveUsers(ArrayList<User> usersList) {
        fileIO.saveUsers(path, usersList);
    }
}

