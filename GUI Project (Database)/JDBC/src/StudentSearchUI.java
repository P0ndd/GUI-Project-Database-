import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentSearchUI {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Student");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(400, 300);

        JPanel panel = new JPanel();
        panel.setLayout(new BorderLayout());

        JTextArea resultTextArea = new JTextArea();
        resultTextArea.setEditable(false);
        JScrollPane scrollPane = new JScrollPane(resultTextArea);
        panel.add(scrollPane, BorderLayout.CENTER);

        JButton searchButton = new JButton("Search");
        JTextField keywordTextField = new JTextField(20);

        searchButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String keyword = keywordTextField.getText();
                if (!keyword.isEmpty()) {
                    try (Connection conn = DatabaseConnector.getInstance().getConnection();
                         PreparedStatement stmt = conn.prepareStatement("SELECT IDStudent, FirstName, LastName FROM liststudent WHERE FirstName LIKE ? OR LastName LIKE ? OR IDStudent LIKE ?")) {

                        stmt.setString(1, "%" + keyword + "%");
                        stmt.setString(2, "%" + keyword + "%");
                        stmt.setString(3, "%" + keyword + "%");

                        try (ResultSet resultSet = stmt.executeQuery()) {
                            resultTextArea.setText("");
                            while (resultSet.next()) {
                                long id = resultSet.getLong("IDStudent");
                                String lastName = resultSet.getString("LastName");
                                String firstName = resultSet.getString("FirstName");
                                resultTextArea.append("ID: " + id + " " + firstName + " " + lastName + "\n");
                            }
                        }
                    } catch (SQLException se) {
                        se.printStackTrace();
                    }
                }
            }
        });

        JPanel searchPanel = new JPanel();
        searchPanel.add(new JLabel("Input : "));
        searchPanel.add(keywordTextField);
        searchPanel.add(searchButton);
        panel.add(searchPanel, BorderLayout.NORTH);

        frame.add(panel);
        frame.setVisible(true);
    }
}
