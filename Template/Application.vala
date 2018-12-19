using Gtk;

public class Application {

	public static int main(string[] args) {
		Gtk.init(ref args);

		Window window = new Window();
		window.title = "Template";
		window.border_width = 10;
		window.window_position = WindowPosition.CENTER;
		window.set_default_size(650, 400);
		window.destroy.connect(Gtk.main_quit);

		Button button = new Button.with_label("Click");
		button.clicked.connect(() => {
			button.label = Template.toString();
		});

		window.add(button);
		window.show_all();

		Gtk.main();
		return 0;
	}

}