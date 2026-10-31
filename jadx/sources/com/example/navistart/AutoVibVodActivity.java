package com.example.navistart;

import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.navigation.ViewOnClickListenerC0675c;
import com.example.navistart.AutoVibVodActivity;
import com.example.navistart.mainview.HeatingButtonView;
import p047e0.AbstractC1387m;
import p078h0.C1652b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class AutoVibVodActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f1239b = 0;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BlackActivity.m1391t(this);
        final int intExtra = getIntent().getIntExtra(AbstractC1387m.m2421h(new byte[]{-104, 67, -123, 53, -41, -83, 108, 16, -99, 73, -107}, new byte[]{-18, 44, -31, 92, -93, -56, 0, 79}), 1);
        setContentView(R.layout.autoviborvoditelact);
        final HeatingButtonView heatingButtonView = (HeatingButtonView) findViewById(R.id.button5);
        heatingButtonView.setButtonText(getResources().getString(R.string.voditel) + " " + intExtra);
        heatingButtonView.getHeatingButton().setOnClickListener(new View.OnClickListener() { // from class: e0.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i10 = AutoVibVodActivity.f1239b;
                C1652b.m2734a();
                C1652b.m2736d().carsetvod(intExtra);
                HeatingButtonView heatingButtonView2 = heatingButtonView;
                heatingButtonView2.f1820e = true;
                heatingButtonView2.m1670c(3);
                this.f3286b.finish();
            }
        });
        ((RelativeLayout) findViewById(R.id.auto_vibor_vod_act)).setOnClickListener(new ViewOnClickListenerC0675c(4, this));
    }
}
