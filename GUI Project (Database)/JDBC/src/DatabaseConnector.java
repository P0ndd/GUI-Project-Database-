import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnector {
    private static DatabaseConnector instance = new DatabaseConnector();

    private DatabaseConnector() {
        // Initialize your data source here if needed
    }

    public static DatabaseConnector getInstance() {
        return instance;
    }

    public Connection getConnection() throws SQLException {
        String DB_URL = "jdbc:mysql://localhost:3306/student";
        String USER = "root";
        String PASS = "";

        Connection connection = DriverManager.getConnection(DB_URL, USER, PASS);
        return connection;
    }

    public void close(Connection connection) throws SQLException {
        if (connection != null && !connection.isClosed()) {
            connection.close();
        }
    }
}
