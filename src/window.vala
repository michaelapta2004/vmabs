namespace Vmabs {
    [GtkTemplate (ui = "/org/example/App/window.ui")]
    public class Window : Gtk.ApplicationWindow {
        weak Gtk.Application app;
        [GtkChild]
        private unowned Gtk.Entry email_entry;
        [GtkChild]
        private unowned Gtk.Entry password_entry;
        [GtkChild]
        private unowned Gtk.Button login_button;
        [GtkChild]
        private unowned Gtk.Button register_button;
 
        public Window (Gtk.Application app) {
            Object (application: app);
            this.app = app; // Keep a strong reference to the Gtk.Application object
            Gtk.CssProvider css_provider = new Gtk.CssProvider ();
            css_provider.load_from_resource("org/example/App/login.css");
 
            Gtk.StyleContext.add_provider_for_display (Gdk.Display.get_default (), css_provider, Gtk.STYLE_PROVIDER_PRIORITY_USER);
        }
 
        construct {
            login_button.clicked.connect(on_login_button_clicked);
            register_button.clicked.connect(() => toregist());
        }
 
        public void on_login_button_clicked() {
            string email = email_entry.text;
            string password = password_entry.text;
 
            // Check if the entered email and password match the stored ones
            if (email == "stored_email" && password == "stored_password") {
                // Log the user in
            } else {
                // Show an error message
            }
        }
 
        public void toregist(){
            print("%s","mandi");
         
            if (this.app != null) {
                var win = new Vmabs.Register(this.app);
                win.present();
            } else {
                print("%s", "Error: Gtk.Application is null.");
                // Handle the error as needed
            }
        }
    }
 }
 