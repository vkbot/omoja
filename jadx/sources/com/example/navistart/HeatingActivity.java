package com.example.navistart;

import android.app.Activity;
import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class HeatingActivity extends Activity {
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setLayout(1, 1);
        getWindow().setFlags(16, 16);
        overridePendingTransition(0, 0);
        finish();
    }
}
