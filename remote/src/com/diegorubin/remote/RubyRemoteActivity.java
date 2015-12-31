package com.diegorubin.remote;

public class RubyRemoteActivity extends org.ruboto.RubotoActivity {
	public void onCreate(android.os.Bundle arg0) {
		try {
			setSplash(Class.forName("com.diegorubin.remote.R$layout").getField("splash")
					.getInt(null));
		} catch (Exception e) {
		}

		setScriptName("ruby_remote_activity.rb");
		super.onCreate(arg0);
	}
}
