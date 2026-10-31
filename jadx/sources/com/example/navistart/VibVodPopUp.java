package com.example.navistart;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.RelativeLayout;
import p047e0.ViewOnClickListenerC1376j3;
import p047e0.ViewOnLongClickListenerC1381k3;
import p078h0.C1652b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class VibVodPopUp extends Service {

    /* JADX INFO: renamed from: b */
    public static WindowManager f1704b;

    /* JADX INFO: renamed from: c */
    public static RelativeLayout f1705c;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        C1652b.m2734a();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(750, 300, C1652b.m2738g().mo3013b().mo1151m(), 8, -3);
        layoutParams.gravity = 17;
        layoutParams.x = 0;
        layoutParams.y = 0;
        f1705c = (RelativeLayout) LayoutInflater.from(this).inflate(R.layout.vodvib, (ViewGroup) null);
        C1652b.m2734a();
        f1704b = C1652b.m2738g().mo3013b().mo1144f(f1705c, layoutParams);
        Button button = (Button) f1705c.findViewById(R.id.button7);
        button.setOnClickListener(new ViewOnClickListenerC1376j3(0));
        Button button2 = (Button) f1705c.findViewById(R.id.button8);
        button2.setOnClickListener(new ViewOnClickListenerC1376j3(1));
        Button button3 = (Button) f1705c.findViewById(R.id.button9);
        button3.setOnClickListener(new ViewOnClickListenerC1376j3(2));
        ((Button) f1705c.findViewById(R.id.button12)).setOnClickListener(new ViewOnClickListenerC1376j3(3));
        button.setOnLongClickListener(new ViewOnLongClickListenerC1381k3(0));
        button2.setOnLongClickListener(new ViewOnLongClickListenerC1381k3(1));
        button3.setOnLongClickListener(new ViewOnLongClickListenerC1381k3(2));
    }
}
