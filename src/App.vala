namespace TemplateApp {

    public class App : Gtk.Application
    {
        public App() { }

        protected override void activate()
        {
            try
            {
                Gtk.Builder builder = new Gtk.Builder();

                builder.add_from_file("ui/ApplicationWindow.ui");
                builder.set_application(this);
                builder.connect_signals(null);

                Gtk.ApplicationWindow window = builder.get_object("window") as Gtk.ApplicationWindow;

                window.show_all();

                Gtk.main();
            }
            catch (GLib.Error e)
            {
                stdout.printf("Error: %s\n", e.message);
            }
        }

        public static int main(string[] args)
        {
            Gtk.init(ref args);

            App app = new App();

            return app.run(args);
        }
    }

}
