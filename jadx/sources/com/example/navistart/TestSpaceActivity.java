package com.example.navistart;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SwitchCompat;
import androidx.fragment.app.C0566h;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import com.example.navistart.R;
import com.example.navistart.TestSpaceActivity;
import p047e0.AbstractC1387m;
import p047e0.C1378k0;
import p047e0.ViewOnClickListenerC1399o1;
import p078h0.C1652b;
import p121l0.C2194a;
import p132m0.C2328n0;
import p207u1.C3281d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class TestSpaceActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: h */
    public static final /* synthetic */ int f1645h = 0;

    /* JADX INFO: renamed from: b */
    public TextView f1646b;

    /* JADX INFO: renamed from: c */
    public ScrollView f1647c;

    /* JADX INFO: renamed from: d */
    public SwitchCompat f1648d;

    /* JADX INFO: renamed from: e */
    public boolean f1649e = false;

    /* JADX INFO: renamed from: f */
    public EditText f1650f;

    /* JADX INFO: renamed from: g */
    public C0566h f1651g;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.testspaceactivity);
        Button button = (Button) findViewById(R.id.btn_start_tests);
        Button button2 = (Button) findViewById(R.id.btn_stop_tests);
        this.f1646b = (TextView) findViewById(R.id.log_text_view);
        this.f1647c = (ScrollView) findViewById(R.id.log_scroll_view);
        final int i10 = 0;
        ((Button) findViewById(R.id.button30)).setOnClickListener(new View.OnClickListener(this) { // from class: e0.u2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ TestSpaceActivity f3447c;

            {
                this.f3447c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i11 = i10;
                TestSpaceActivity testSpaceActivity = this.f3447c;
                switch (i11) {
                    case 0:
                        int i12 = TestSpaceActivity.f1645h;
                        testSpaceActivity.getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, new C3281d()).addToBackStack(null).commit();
                        break;
                    case 1:
                        int i13 = TestSpaceActivity.f1645h;
                        testSpaceActivity.finish();
                        break;
                    default:
                        int i14 = TestSpaceActivity.f1645h;
                        C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{59, 57, -120, 29, 64, 84, 86, -20, -53, 75, -17, 120, 33, 5, 56, -65, 104, 74, -47, 120, 36, 5, 58}, new byte[]{-21, -101, 88, -88, -111, -43, -121, 110}));
                        AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{19, -17, -24, 48, -10, -40, 11, -47, 34}, new byte[]{71, -118, -101, 68, -91, -88, 106, -78}));
                        C2194a.m3500t(C2328n0.class, null).show(testSpaceActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{-57, -122, -85, -99, -15, 68, -118, 6, -56, -106, -106, -74, -9, 91, -105}, new byte[]{-90, -30, -55, -62, -110, 40, -29, 99}));
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.button31).setOnClickListener(new View.OnClickListener(this) { // from class: e0.u2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ TestSpaceActivity f3447c;

            {
                this.f3447c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i12 = i11;
                TestSpaceActivity testSpaceActivity = this.f3447c;
                switch (i12) {
                    case 0:
                        int i13 = TestSpaceActivity.f1645h;
                        testSpaceActivity.getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, new C3281d()).addToBackStack(null).commit();
                        break;
                    case 1:
                        int i14 = TestSpaceActivity.f1645h;
                        testSpaceActivity.finish();
                        break;
                    default:
                        int i15 = TestSpaceActivity.f1645h;
                        C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{59, 57, -120, 29, 64, 84, 86, -20, -53, 75, -17, 120, 33, 5, 56, -65, 104, 74, -47, 120, 36, 5, 58}, new byte[]{-21, -101, 88, -88, -111, -43, -121, 110}));
                        AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{19, -17, -24, 48, -10, -40, 11, -47, 34}, new byte[]{71, -118, -101, 68, -91, -88, 106, -78}));
                        C2194a.m3500t(C2328n0.class, null).show(testSpaceActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{-57, -122, -85, -99, -15, 68, -118, 6, -56, -106, -106, -74, -9, 91, -105}, new byte[]{-90, -30, -55, -62, -110, 40, -29, 99}));
                        break;
                }
            }
        });
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.sw_auto_scroll);
        this.f1648d = switchCompat;
        switchCompat.setChecked(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-24, -5, 19, -54, -91, 114, -84, 56, -39, -9, 21, -47, -90, 115, -84, 50, -24, -20}, new byte[]{-101, -104, 97, -91, -55, 30, -8, 87}), true));
        this.f1648d.setOnCheckedChangeListener(new C1378k0(28));
        final int i12 = 2;
        button.setOnClickListener(new View.OnClickListener(this) { // from class: e0.u2

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ TestSpaceActivity f3447c;

            {
                this.f3447c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i13 = i12;
                TestSpaceActivity testSpaceActivity = this.f3447c;
                switch (i13) {
                    case 0:
                        int i14 = TestSpaceActivity.f1645h;
                        testSpaceActivity.getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, new C3281d()).addToBackStack(null).commit();
                        break;
                    case 1:
                        int i15 = TestSpaceActivity.f1645h;
                        testSpaceActivity.finish();
                        break;
                    default:
                        int i16 = TestSpaceActivity.f1645h;
                        C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{59, 57, -120, 29, 64, 84, 86, -20, -53, 75, -17, 120, 33, 5, 56, -65, 104, 74, -47, 120, 36, 5, 58}, new byte[]{-21, -101, 88, -88, -111, -43, -121, 110}));
                        AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{19, -17, -24, 48, -10, -40, 11, -47, 34}, new byte[]{71, -118, -101, 68, -91, -88, 106, -78}));
                        C2194a.m3500t(C2328n0.class, null).show(testSpaceActivity.getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{-57, -122, -85, -99, -15, 68, -118, 6, -56, -106, -106, -74, -9, 91, -105}, new byte[]{-90, -30, -55, -62, -110, 40, -29, 99}));
                        break;
                }
            }
        });
        button2.setOnClickListener(new ViewOnClickListenerC1399o1(this));
        this.f1650f = (EditText) findViewById(R.id.filter_LogAll);
        this.f1651g = new C0566h(7, this);
        Button button3 = (Button) findViewById(R.id.btn_LogAll);
        button3.setOnClickListener(new ViewOnClickListenerC0701a(4, this, button3));
        C1652b.m2734a().m2753b().f2952a = this;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        if (this.f1649e) {
            C1652b.m2734a().m2755j().m1638sl(null);
            this.f1649e = false;
        }
        this.f1651g = null;
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        C1652b.m2734a().m2753b().f2952a = null;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        C1652b.m2734a().m2753b().f2952a = this;
        C1652b.m2734a();
        C1652b.f4201j.m2253o();
    }
}
