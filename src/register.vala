namespace Vmabs {
    [GtkTemplate (ui = "/org/example/App/register.ui")]
    public class Register : Gtk.ApplicationWindow {
        weak Gtk.Application app;
        [GtkChild]
        private unowned Gtk.Entry username_entry;
        [GtkChild]
        private unowned Gtk.Entry phone_entry;
        [GtkChild]
        private unowned Gtk.Entry email_entry;
        [GtkChild]
        private unowned Gtk.Entry password_entry;
        [GtkChild]
        private unowned Gtk.Button register_button;
        [GtkChild]
        private unowned Gtk.Button login_button;
 
        public Register (Gtk.Application app) {
            Object (application: app);
            Gtk.CssProvider css_provider = new Gtk.CssProvider ();
            css_provider.load_from_resource("org/example/App/login.css");
 
            Gtk.StyleContext.add_provider_for_display (Gdk.Display.get_default (), css_provider, Gtk.STYLE_PROVIDER_PRIORITY_USER);
        }
 
        construct {
            register_button.clicked.connect(on_register_button_clicked);
            login_button.clicked.connect(() => tologin());
        }
 
        public void tologin() {
            print("%s","mandi");
         
            if (this.app != null) {
                var win = new Vmabs.Window(this.app);
                win.present();
            } else {
                print("%s", "Error: Gtk.Application is null.");
            }
        }
 
        private void on_register_button_clicked() {
            string username = username_entry.text;
            string phone = phone_entry.text;
            string email = email_entry.text;
            string password = password_entry.text;
 
            if (username == "stored_username" && phone == "stored_phone" && email == "stored_email" && password == "stored_password") {
            } else {
            }
        }
    }
 }
 