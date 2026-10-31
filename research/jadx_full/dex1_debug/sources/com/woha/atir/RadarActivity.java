package com.woha.atir;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import i7.o;
import i7.r;
import v1.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RadarActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f1610h = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RadarView f1611b;
    public TextView c;
    public TextView d;
    public TextView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1612f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Handler f1613g = new Handler(Looper.getMainLooper());

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (getSupportFragmentManager().getBackStackEntryCount() > 0) {
            getSupportFragmentManager().popBackStack();
        } else {
            super.onBackPressed();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131493122);
        this.f1611b = (RadarView) findViewById(2131297226);
        this.c = (TextView) findViewById(2131297604);
        this.d = (TextView) findViewById(2131297637);
        this.e = (TextView) findViewById(2131297700);
        ((ImageButton) findViewById(2131296841)).setOnClickListener(new o(this, 0));
        findViewById(2131296566).setOnClickListener(new o(this, 1));
        ((LinearLayout) findViewById(2131296927)).setOnClickListener(new o(this, 2));
        d.a().c().f2712a.observe(this, new r(this, 0));
        d.a().c().f2713b.observe(this, new r(this, 1));
        d.a().c().d.observe(this, new r(this, 2));
        d.a().c().c.observe(this, new r(this, 3));
        d.a().c().e.observe(this, new r(this, 4));
    }
}
