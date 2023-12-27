
namespace Vmabs {
    public class Application : Gtk.Application {
        public Application () {
            Object (application_id: "org.example.App", flags: ApplicationFlags.FLAGS_NONE);
        }

        construct {
            ActionEntry[] action_entries = {
                { "about", this.on_about_action },
                { "preferences", this.on_preferences_action },
                { "quit", this.quit }
            };
            this.add_action_entries (action_entries, this);
            this.set_accels_for_action ("app.quit", {"<primary>q"});
        }

        public override void activate () {
            base.activate ();
            var win = this.active_window;
            if (win == null) {
                win = new Vmabs.Window (this);
                this.add_window (win);
            }
            win.present ();
        }

        private void on_about_action () {
            string[] authors = { "root" };
            Gtk.show_about_dialog (this.active_window,
                                   "program-name", "vmabs",
                                   "authors", authors,
                                   "version", "0.1.0");
        }

        private void on_preferences_action () {
            message ("app.preferences action activated");
        }
    }
}
