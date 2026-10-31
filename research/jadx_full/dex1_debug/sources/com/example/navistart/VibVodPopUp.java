package com.example.navistart;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.WindowManager$LayoutParams;
import android.widget.Button;
import android.widget.RelativeLayout;
import e0.j3;
import e0.k3;
import h0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VibVodPopUp extends Service {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static WindowManager f888b;
    public static RelativeLayout c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        b.a();
        WindowManager$LayoutParams windowManager$LayoutParams = new WindowManager$LayoutParams(750, 300, b.g().b().m(), 8, -3);
        windowManager$LayoutParams.gravity = 17;
        windowManager$LayoutParams.x = 0;
        windowManager$LayoutParams.y = 0;
        c = (RelativeLayout) LayoutInflater.from(this).inflate(2131493149, (ViewGroup) null);
        b.a();
        f888b = b.g().b().f(c, windowManager$LayoutParams);
        Button button = (Button) c.findViewById(2131296570);
        button.setOnClickListener(new j3(0));
        Button button2 = (Button) c.findViewById(2131296571);
        button2.setOnClickListener(new j3(1));
        Button button3 = (Button) c.findViewById(2131296572);
        button3.setOnClickListener(new j3(2));
        ((Button) c.findViewById(2131296540)).setOnClickListener(new j3(3));
        button.setOnLongClickListener(new k3(0));
        button2.setOnLongClickListener(new k3(1));
        button3.setOnLongClickListener(new k3(2));
    }
}
