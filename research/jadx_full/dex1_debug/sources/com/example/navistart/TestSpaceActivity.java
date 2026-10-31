package com.example.navistart;

import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SwitchCompat;
import androidx.fragment.app.h;
import androidx.navigation.ui.a;
import e0.k0;
import e0.m;
import e0.o1;
import e0.u2;
import h0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TestSpaceActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f847h = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f848b;
    public ScrollView c;
    public SwitchCompat d;
    public boolean e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public EditText f849f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public h f850g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131493142);
        Button button = (Button) findViewById(2131296535);
        Button button2 = (Button) findViewById(2131296536);
        this.f848b = (TextView) findViewById(2131296941);
        this.c = (ScrollView) findViewById(2131296940);
        ((Button) findViewById(2131296560)).setOnClickListener(new u2(this, 0));
        findViewById(2131296561).setOnClickListener(new u2(this, 1));
        SwitchCompat switchCompat = (SwitchCompat) findViewById(2131297478);
        this.d = switchCompat;
        switchCompat.setChecked(b.o().loadBoolean(m.h(new byte[]{-24, -5, 19, -54, -91, 114, -84, 56, -39, -9, 21, -47, -90, 115, -84, 50, -24, -20}, new byte[]{-101, -104, 97, -91, -55, 30, -8, 87}), true));
        this.d.setOnCheckedChangeListener(new k0(28));
        button.setOnClickListener(new u2(this, 2));
        button2.setOnClickListener(new o1(this));
        this.f849f = (EditText) findViewById(2131296769);
        this.f850g = new h(7, this);
        Button button3 = (Button) findViewById(2131296534);
        button3.setOnClickListener(new a(4, this, button3));
        b.a().b().f1677a = this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        if (this.e) {
            b.a().j().sl(null);
            this.e = false;
        }
        this.f850g = null;
        super.onDestroy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        b.a().b().f1677a = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        b.a().b().f1677a = this;
        b.a();
        b.f2424j.o();
    }
}
