/*
* Copyright (c) 2011-2017 Connor Ruggles (https://rugglcon.github.io)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Connor Ruggles <cruggles@iastate.edu>
*/
public class Contacts : Gtk.Application {
	public Contacts () {
		Object (application_id: "com.github.rugglcon.contacts",
		flags: ApplicationFlags.FLAGS_NONE);
	}

	protected override void activate () {
		var window = new Gtk.ApplicationWindow(this);
		window.title = "Contacts";
		window.set_default_size (1024, 768);
		window.show_all ();
	}

	public static int main (string[] args) {
		var app = new Contacts ();
		return app.run (args);
	}
}
