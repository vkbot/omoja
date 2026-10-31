package com.example.navistart;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ProgressBar;
import android.widget.TextView;
import e0.j2;
import e0.m;
import e0.w;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ProgressActivity extends Activity {
    public static final String e = m.h(new byte[]{-120, -57, 92, -112, -85, 18, -91, -65}, new byte[]{-23, -73, 55, -49, -37, 115, -47, -41});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f809b = w.c(-1, m.h(new byte[]{7, 11, 21, -6, 82, 59, 105, 99, 22, 26, 14, -12, 86, 55, 110, 105}, new byte[]{87, 121, 122, -99, 32, 94, 26, 16}));
    public ProgressBar c;
    public TextView d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492902);
        this.c = (ProgressBar) findViewById(2131297214);
        this.d = (TextView) findViewById(2131297218);
        String stringExtra = getIntent().getStringExtra(e);
        if (stringExtra == null) {
            finish();
        } else {
            this.f809b.execute(new j2(1, this, stringExtra));
        }
    }
}
