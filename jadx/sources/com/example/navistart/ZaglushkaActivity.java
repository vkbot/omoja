package com.example.navistart;

import android.app.Activity;
import android.os.Bundle;
import java.util.concurrent.TimeUnit;
import p005a4.RunnableC0014g;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ZaglushkaActivity extends Activity {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f1708b = 0;

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        Bundle extras;
        super.onCreate(bundle);
        BlackActivity.m1391t(this);
        setContentView(R.layout.activity_zaglushka);
        int i10 = 0;
        if (getIntent() != null && (extras = getIntent().getExtras()) != null) {
            i10 = extras.getInt(AbstractC1387m.m2421h(new byte[]{-10, 32, -113, 87, -28, -106, -56, 77}, new byte[]{-126, 73, -30, 51, -127, -6, -83, 52}), 0);
        }
        AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-36, -108, -74, 109, -63, -83, 65, -15, -25, -76, -78, 117, -35, -88, 64, -18, -1}, new byte[]{-122, -11, -47, 1, -76, -34, 41, -102})).schedule(new RunnableC0014g(23, this), i10, TimeUnit.MILLISECONDS);
    }
}
