using Gtk;

public class JohnDoeServer: Window {

    // Variables for accessing the widgets
    private Gtk.Button start_stop_server;
    private Gtk.Label player_count;
    private Gtk.Label online_player_count;
    private Gtk.Label server_address;
    private Gtk.Label gamemode;
    private Gtk.Label version;

    // Function to initialize the GUI components
    public void init_ui() {
        this.destroy.connect(Gtk.main_quit);

        // Start and Stop server button
        start_stop_server = new Gtk.Button.with_label("Start Server");
        start_stop_server.clicked.connect(on_start_stop_server_clicked);

        // Player count label
        player_count = new Gtk.Label("Player Count: 10");

        // Online player count label
        online_player_count = new Gtk.Label("Online Player Count: 50");

        // Server address label
        server_address = new Gtk.Label("Server Address: 35.186.153.241");

        // Gamemode label
        gamemode = new Gtk.Label("Gamemode: Survival");

        // Version label
        version = new Gtk.Label("Version: Vanilla 1.20.1");

        // Layout and add the widgets to the window
        var layout = new Gtk.Grid();
        layout.attach(start_stop_server, 0, 0, 1, 1);
        layout.attach(player_count, 0, 1, 1, 1);
        layout.attach(online_player_count, 0, 2, 1, 1);
        layout.attach(server_address, 0, 3, 1, 1);
        layout.attach(gamemode, 0, 4, 1, 1);
        layout.attach(version, 0, 5, 1, 1);

        this.add(layout);
    }

    // Function to handle the Start and Stop server button click
    private void on_start_stop_server_clicked() {
        if (start_stop_server.get_label() == "Start Server") {
            start_stop_server.set_label("Stop Server");
        } else {
            start_stop_server.set_label("Start Server");
        }
    }

    // Function to start the GTK application
    public static int main(string[] args) {
        Gtk.init(ref args);

        var window = new JohnDoeServer();
        window.init_ui();
        window.show_all();

        Gtk.main();

        return 0;
    }
}