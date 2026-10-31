package com.example.navistart;

import android.os.Bundle;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.navigation.c;
import com.example.navistart.mainview.HeatingButtonView;
import e0.k;
import e0.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AutoVibVodActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f653b = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BlackActivity.t(this);
        int intExtra = getIntent().getIntExtra(m.h(new byte[]{-104, 67, -123, 53, -41, -83, 108, 16, -99, 73, -107}, new byte[]{-18, 44, -31, 92, -93, -56, 0, 79}), 1);
        setContentView(2131492912);
        HeatingButtonView heatingButtonView = (HeatingButtonView) findViewById(2131296568);
        heatingButtonView.setButtonText(getResources().getString(2131952760) + " " + intExtra);
        heatingButtonView.getHeatingButton().setOnClickListener(new k(this, intExtra, heatingButtonView));
        ((RelativeLayout) findViewById(2131296467)).setOnClickListener(new c(4, this));
    }
}
