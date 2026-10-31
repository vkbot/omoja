package com.example.navistart;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.RunnableC1375j2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ProgressActivity extends Activity {

    /* JADX INFO: renamed from: e */
    public static final String f1510e = AbstractC1387m.m2421h(new byte[]{-120, -57, 92, -112, -85, 18, -91, -65}, new byte[]{-23, -73, 55, -49, -37, 115, -47, -41});

    /* JADX INFO: renamed from: b */
    public final ScheduledThreadPoolExecutor f1511b = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{7, 11, 21, -6, 82, 59, 105, 99, 22, 26, 14, -12, 86, 55, 110, 105}, new byte[]{87, 121, 122, -99, 32, 94, 26, 16}));

    /* JADX INFO: renamed from: c */
    public ProgressBar f1512c;

    /* JADX INFO: renamed from: d */
    public TextView f1513d;

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_progress);
        this.f1512c = (ProgressBar) findViewById(R.id.progressBar);
        this.f1513d = (TextView) findViewById(R.id.progressText);
        String stringExtra = getIntent().getStringExtra(f1510e);
        if (stringExtra == null) {
            finish();
        } else {
            this.f1511b.execute(new RunnableC1375j2(1, this, stringExtra));
        }
    }
}
