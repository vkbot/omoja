package com.woha.atir;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Observer;
import com.example.navistart.R;
import com.woha.atir.RadarActivity;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1375j2;
import p078h0.C1652b;
import p217v1.C3326d;
import p250y5.AbstractC3656k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class RadarActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: h */
    public static final /* synthetic */ int f2856h = 0;

    /* JADX INFO: renamed from: b */
    public RadarView f2857b;

    /* JADX INFO: renamed from: c */
    public TextView f2858c;

    /* JADX INFO: renamed from: d */
    public TextView f2859d;

    /* JADX INFO: renamed from: e */
    public TextView f2860e;

    /* JADX INFO: renamed from: f */
    public int f2861f = 0;

    /* JADX INFO: renamed from: g */
    public final Handler f2862g = new Handler(Looper.getMainLooper());

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (getSupportFragmentManager().getBackStackEntryCount() > 0) {
            getSupportFragmentManager().popBackStack();
        } else {
            super.onBackPressed();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.radaractivity);
        this.f2857b = (RadarView) findViewById(R.id.radarView);
        this.f2858c = (TextView) findViewById(R.id.textView31);
        this.f2859d = (TextView) findViewById(R.id.text_arad_status);
        this.f2860e = (TextView) findViewById(R.id.updateTime);
        final int i10 = 0;
        ((ImageButton) findViewById(R.id.imageButton)).setOnClickListener(new View.OnClickListener(this) { // from class: i7.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ RadarActivity f4630c;

            {
                this.f4630c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i11 = i10;
                RadarActivity radarActivity = this.f4630c;
                switch (i11) {
                    case 0:
                        int i12 = RadarActivity.f2856h;
                        FragmentManager supportFragmentManager = radarActivity.getSupportFragmentManager();
                        C1773v c1773v = (C1773v) supportFragmentManager.findFragmentByTag(C1773v.class.getSimpleName());
                        if (c1773v != null && c1773v.isVisible()) {
                            FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
                            fragmentTransactionBeginTransaction.remove(c1773v);
                            fragmentTransactionBeginTransaction.commit();
                        } else {
                            C1773v c1773v2 = new C1773v();
                            FragmentTransaction fragmentTransactionBeginTransaction2 = supportFragmentManager.beginTransaction();
                            fragmentTransactionBeginTransaction2.replace(R.id.fragment_container, c1773v2, C1773v.class.getSimpleName());
                            fragmentTransactionBeginTransaction2.addToBackStack(null);
                            fragmentTransactionBeginTransaction2.commit();
                        }
                        break;
                    case 1:
                        int i13 = RadarActivity.f2856h;
                        radarActivity.finish();
                        break;
                    default:
                        radarActivity.f2861f++;
                        Handler handler = radarActivity.f2862g;
                        handler.removeCallbacksAndMessages(null);
                        handler.postDelayed(new RunnableC1768q(radarActivity, 1), 1000L);
                        if (radarActivity.f2861f >= 10) {
                            radarActivity.f2861f = 0;
                            C1652b.m2745o().saveLong(AbstractC1387m.m2421h(new byte[]{-62, -110, 14, 46, -66, 115, 59, -6, -14, -106, 59, Base64.padSymbol, -118, 103, 62, -23, -62, -79}, new byte[]{-122, -13, 122, 79, -21, 3, 95, -101}), 0L);
                            AbstractC3656k.m5878x(radarActivity, radarActivity.getResources().getString(R.string.RadarUpdateCam));
                        }
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.button36).setOnClickListener(new View.OnClickListener(this) { // from class: i7.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ RadarActivity f4630c;

            {
                this.f4630c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i12 = i11;
                RadarActivity radarActivity = this.f4630c;
                switch (i12) {
                    case 0:
                        int i13 = RadarActivity.f2856h;
                        FragmentManager supportFragmentManager = radarActivity.getSupportFragmentManager();
                        C1773v c1773v = (C1773v) supportFragmentManager.findFragmentByTag(C1773v.class.getSimpleName());
                        if (c1773v != null && c1773v.isVisible()) {
                            FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
                            fragmentTransactionBeginTransaction.remove(c1773v);
                            fragmentTransactionBeginTransaction.commit();
                        } else {
                            C1773v c1773v2 = new C1773v();
                            FragmentTransaction fragmentTransactionBeginTransaction2 = supportFragmentManager.beginTransaction();
                            fragmentTransactionBeginTransaction2.replace(R.id.fragment_container, c1773v2, C1773v.class.getSimpleName());
                            fragmentTransactionBeginTransaction2.addToBackStack(null);
                            fragmentTransactionBeginTransaction2.commit();
                        }
                        break;
                    case 1:
                        int i14 = RadarActivity.f2856h;
                        radarActivity.finish();
                        break;
                    default:
                        radarActivity.f2861f++;
                        Handler handler = radarActivity.f2862g;
                        handler.removeCallbacksAndMessages(null);
                        handler.postDelayed(new RunnableC1768q(radarActivity, 1), 1000L);
                        if (radarActivity.f2861f >= 10) {
                            radarActivity.f2861f = 0;
                            C1652b.m2745o().saveLong(AbstractC1387m.m2421h(new byte[]{-62, -110, 14, 46, -66, 115, 59, -6, -14, -106, 59, Base64.padSymbol, -118, 103, 62, -23, -62, -79}, new byte[]{-122, -13, 122, 79, -21, 3, 95, -101}), 0L);
                            AbstractC3656k.m5878x(radarActivity, radarActivity.getResources().getString(R.string.RadarUpdateCam));
                        }
                        break;
                }
            }
        });
        final int i12 = 2;
        ((LinearLayout) findViewById(R.id.linearLayout3)).setOnClickListener(new View.OnClickListener(this) { // from class: i7.o

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ RadarActivity f4630c;

            {
                this.f4630c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i13 = i12;
                RadarActivity radarActivity = this.f4630c;
                switch (i13) {
                    case 0:
                        int i14 = RadarActivity.f2856h;
                        FragmentManager supportFragmentManager = radarActivity.getSupportFragmentManager();
                        C1773v c1773v = (C1773v) supportFragmentManager.findFragmentByTag(C1773v.class.getSimpleName());
                        if (c1773v != null && c1773v.isVisible()) {
                            FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
                            fragmentTransactionBeginTransaction.remove(c1773v);
                            fragmentTransactionBeginTransaction.commit();
                        } else {
                            C1773v c1773v2 = new C1773v();
                            FragmentTransaction fragmentTransactionBeginTransaction2 = supportFragmentManager.beginTransaction();
                            fragmentTransactionBeginTransaction2.replace(R.id.fragment_container, c1773v2, C1773v.class.getSimpleName());
                            fragmentTransactionBeginTransaction2.addToBackStack(null);
                            fragmentTransactionBeginTransaction2.commit();
                        }
                        break;
                    case 1:
                        int i15 = RadarActivity.f2856h;
                        radarActivity.finish();
                        break;
                    default:
                        radarActivity.f2861f++;
                        Handler handler = radarActivity.f2862g;
                        handler.removeCallbacksAndMessages(null);
                        handler.postDelayed(new RunnableC1768q(radarActivity, 1), 1000L);
                        if (radarActivity.f2861f >= 10) {
                            radarActivity.f2861f = 0;
                            C1652b.m2745o().saveLong(AbstractC1387m.m2421h(new byte[]{-62, -110, 14, 46, -66, 115, 59, -6, -14, -106, 59, Base64.padSymbol, -118, 103, 62, -23, -62, -79}, new byte[]{-122, -13, 122, 79, -21, 3, 95, -101}), 0L);
                            AbstractC3656k.m5878x(radarActivity, radarActivity.getResources().getString(R.string.RadarUpdateCam));
                        }
                        break;
                }
            }
        });
        final int i13 = 0;
        C3326d.m5242a().m5244c().f4638a.observe(this, new Observer(this) { // from class: i7.r

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ RadarActivity f4637b;

            {
                this.f4637b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i14 = i13;
                final int i15 = 0;
                final RadarActivity radarActivity = this.f4637b;
                switch (i14) {
                    case 0:
                        final String str = (String) obj;
                        int i16 = RadarActivity.f2856h;
                        if (str != null) {
                            final int i17 = 2;
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: i7.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i17) {
                                        case 0:
                                            TextView textView = radarActivity.f2860e;
                                            if (textView != null) {
                                                textView.setText(str);
                                            }
                                            break;
                                        case 1:
                                            TextView textView2 = radarActivity.f2859d;
                                            if (textView2 != null) {
                                                textView2.setText(str);
                                            }
                                            break;
                                        default:
                                            RadarActivity radarActivity2 = radarActivity;
                                            TextView textView3 = radarActivity2.f2858c;
                                            if (textView3 != null) {
                                                textView3.setVisibility(0);
                                                radarActivity2.f2858c.setText(str);
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                        break;
                    case 1:
                        final String str2 = (String) obj;
                        int i18 = RadarActivity.f2856h;
                        if (str2 != null) {
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: i7.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i15) {
                                        case 0:
                                            TextView textView = radarActivity.f2860e;
                                            if (textView != null) {
                                                textView.setText(str2);
                                            }
                                            break;
                                        case 1:
                                            TextView textView2 = radarActivity.f2859d;
                                            if (textView2 != null) {
                                                textView2.setText(str2);
                                            }
                                            break;
                                        default:
                                            RadarActivity radarActivity2 = radarActivity;
                                            TextView textView3 = radarActivity2.f2858c;
                                            if (textView3 != null) {
                                                textView3.setVisibility(0);
                                                radarActivity2.f2858c.setText(str2);
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                        break;
                    case 2:
                        final String str3 = (String) obj;
                        int i19 = RadarActivity.f2856h;
                        if (str3 != null) {
                            final int i20 = 1;
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: i7.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i20) {
                                        case 0:
                                            TextView textView = radarActivity.f2860e;
                                            if (textView != null) {
                                                textView.setText(str3);
                                            }
                                            break;
                                        case 1:
                                            TextView textView2 = radarActivity.f2859d;
                                            if (textView2 != null) {
                                                textView2.setText(str3);
                                            }
                                            break;
                                        default:
                                            RadarActivity radarActivity2 = radarActivity;
                                            TextView textView3 = radarActivity2.f2858c;
                                            if (textView3 != null) {
                                                textView3.setVisibility(0);
                                                radarActivity2.f2858c.setText(str3);
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                        break;
                    case 3:
                        int i21 = RadarActivity.f2856h;
                        if (((Boolean) obj).booleanValue()) {
                            new Handler(Looper.getMainLooper()).post(new RunnableC1768q(radarActivity, i15));
                        }
                        break;
                    default:
                        C1765n c1765n = (C1765n) obj;
                        if (c1765n == null) {
                            int i22 = RadarActivity.f2856h;
                        } else if (radarActivity.f2857b != null) {
                            new Handler(Looper.getMainLooper()).post(new RunnableC1375j2(9, radarActivity, c1765n));
                        }
                        break;
                }
            }
        });
        final int i14 = 1;
        C3326d.m5242a().m5244c().f4639b.observe(this, new Observer(this) { // from class: i7.r

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ RadarActivity f4637b;

            {
                this.f4637b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i15 = i14;
                final int i16 = 0;
                final RadarActivity radarActivity = this.f4637b;
                switch (i15) {
                    case 0:
                        final String str = (String) obj;
                        int i17 = RadarActivity.f2856h;
                        if (str != null) {
                            final int i18 = 2;
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: i7.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i18) {
                                        case 0:
                                            TextView textView = radarActivity.f2860e;
                                            if (textView != null) {
                                                textView.setText(str);
                                            }
                                            break;
                                        case 1:
                                            TextView textView2 = radarActivity.f2859d;
                                            if (textView2 != null) {
                                                textView2.setText(str);
                                            }
                                            break;
                                        default:
                                            RadarActivity radarActivity2 = radarActivity;
                                            TextView textView3 = radarActivity2.f2858c;
                                            if (textView3 != null) {
                                                textView3.setVisibility(0);
                                                radarActivity2.f2858c.setText(str);
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                        break;
                    case 1:
                        final String str2 = (String) obj;
                        int i19 = RadarActivity.f2856h;
                        if (str2 != null) {
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: i7.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i16) {
                                        case 0:
                                            TextView textView = radarActivity.f2860e;
                                            if (textView != null) {
                                                textView.setText(str2);
                                            }
                                            break;
                                        case 1:
                                            TextView textView2 = radarActivity.f2859d;
                                            if (textView2 != null) {
                                                textView2.setText(str2);
                                            }
                                            break;
                                        default:
                                            RadarActivity radarActivity2 = radarActivity;
                                            TextView textView3 = radarActivity2.f2858c;
                                            if (textView3 != null) {
                                                textView3.setVisibility(0);
                                                radarActivity2.f2858c.setText(str2);
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                        break;
                    case 2:
                        final String str3 = (String) obj;
                        int i110 = RadarActivity.f2856h;
                        if (str3 != null) {
                            final int i20 = 1;
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: i7.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i20) {
                                        case 0:
                                            TextView textView = radarActivity.f2860e;
                                            if (textView != null) {
                                                textView.setText(str3);
                                            }
                                            break;
                                        case 1:
                                            TextView textView2 = radarActivity.f2859d;
                                            if (textView2 != null) {
                                                textView2.setText(str3);
                                            }
                                            break;
                                        default:
                                            RadarActivity radarActivity2 = radarActivity;
                                            TextView textView3 = radarActivity2.f2858c;
                                            if (textView3 != null) {
                                                textView3.setVisibility(0);
                                                radarActivity2.f2858c.setText(str3);
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                        break;
                    case 3:
                        int i21 = RadarActivity.f2856h;
                        if (((Boolean) obj).booleanValue()) {
                            new Handler(Looper.getMainLooper()).post(new RunnableC1768q(radarActivity, i16));
                        }
                        break;
                    default:
                        C1765n c1765n = (C1765n) obj;
                        if (c1765n == null) {
                            int i22 = RadarActivity.f2856h;
                        } else if (radarActivity.f2857b != null) {
                            new Handler(Looper.getMainLooper()).post(new RunnableC1375j2(9, radarActivity, c1765n));
                        }
                        break;
                }
            }
        });
        final int i15 = 2;
        C3326d.m5242a().m5244c().f4641d.observe(this, new Observer(this) { // from class: i7.r

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ RadarActivity f4637b;

            {
                this.f4637b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i16 = i15;
                final int i17 = 0;
                final RadarActivity radarActivity = this.f4637b;
                switch (i16) {
                    case 0:
                        final String str = (String) obj;
                        int i18 = RadarActivity.f2856h;
                        if (str != null) {
                            final int i19 = 2;
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: i7.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i19) {
                                        case 0:
                                            TextView textView = radarActivity.f2860e;
                                            if (textView != null) {
                                                textView.setText(str);
                                            }
                                            break;
                                        case 1:
                                            TextView textView2 = radarActivity.f2859d;
                                            if (textView2 != null) {
                                                textView2.setText(str);
                                            }
                                            break;
                                        default:
                                            RadarActivity radarActivity2 = radarActivity;
                                            TextView textView3 = radarActivity2.f2858c;
                                            if (textView3 != null) {
                                                textView3.setVisibility(0);
                                                radarActivity2.f2858c.setText(str);
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                        break;
                    case 1:
                        final String str2 = (String) obj;
                        int i110 = RadarActivity.f2856h;
                        if (str2 != null) {
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: i7.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i17) {
                                        case 0:
                                            TextView textView = radarActivity.f2860e;
                                            if (textView != null) {
                                                textView.setText(str2);
                                            }
                                            break;
                                        case 1:
                                            TextView textView2 = radarActivity.f2859d;
                                            if (textView2 != null) {
                                                textView2.setText(str2);
                                            }
                                            break;
                                        default:
                                            RadarActivity radarActivity2 = radarActivity;
                                            TextView textView3 = radarActivity2.f2858c;
                                            if (textView3 != null) {
                                                textView3.setVisibility(0);
                                                radarActivity2.f2858c.setText(str2);
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                        break;
                    case 2:
                        final String str3 = (String) obj;
                        int i111 = RadarActivity.f2856h;
                        if (str3 != null) {
                            final int i20 = 1;
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: i7.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i20) {
                                        case 0:
                                            TextView textView = radarActivity.f2860e;
                                            if (textView != null) {
                                                textView.setText(str3);
                                            }
                                            break;
                                        case 1:
                                            TextView textView2 = radarActivity.f2859d;
                                            if (textView2 != null) {
                                                textView2.setText(str3);
                                            }
                                            break;
                                        default:
                                            RadarActivity radarActivity2 = radarActivity;
                                            TextView textView3 = radarActivity2.f2858c;
                                            if (textView3 != null) {
                                                textView3.setVisibility(0);
                                                radarActivity2.f2858c.setText(str3);
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                        break;
                    case 3:
                        int i21 = RadarActivity.f2856h;
                        if (((Boolean) obj).booleanValue()) {
                            new Handler(Looper.getMainLooper()).post(new RunnableC1768q(radarActivity, i17));
                        }
                        break;
                    default:
                        C1765n c1765n = (C1765n) obj;
                        if (c1765n == null) {
                            int i22 = RadarActivity.f2856h;
                        } else if (radarActivity.f2857b != null) {
                            new Handler(Looper.getMainLooper()).post(new RunnableC1375j2(9, radarActivity, c1765n));
                        }
                        break;
                }
            }
        });
        final int i16 = 3;
        C3326d.m5242a().m5244c().f4640c.observe(this, new Observer(this) { // from class: i7.r

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ RadarActivity f4637b;

            {
                this.f4637b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i17 = i16;
                final int i18 = 0;
                final RadarActivity radarActivity = this.f4637b;
                switch (i17) {
                    case 0:
                        final String str = (String) obj;
                        int i19 = RadarActivity.f2856h;
                        if (str != null) {
                            final int i110 = 2;
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: i7.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i110) {
                                        case 0:
                                            TextView textView = radarActivity.f2860e;
                                            if (textView != null) {
                                                textView.setText(str);
                                            }
                                            break;
                                        case 1:
                                            TextView textView2 = radarActivity.f2859d;
                                            if (textView2 != null) {
                                                textView2.setText(str);
                                            }
                                            break;
                                        default:
                                            RadarActivity radarActivity2 = radarActivity;
                                            TextView textView3 = radarActivity2.f2858c;
                                            if (textView3 != null) {
                                                textView3.setVisibility(0);
                                                radarActivity2.f2858c.setText(str);
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                        break;
                    case 1:
                        final String str2 = (String) obj;
                        int i111 = RadarActivity.f2856h;
                        if (str2 != null) {
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: i7.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i18) {
                                        case 0:
                                            TextView textView = radarActivity.f2860e;
                                            if (textView != null) {
                                                textView.setText(str2);
                                            }
                                            break;
                                        case 1:
                                            TextView textView2 = radarActivity.f2859d;
                                            if (textView2 != null) {
                                                textView2.setText(str2);
                                            }
                                            break;
                                        default:
                                            RadarActivity radarActivity2 = radarActivity;
                                            TextView textView3 = radarActivity2.f2858c;
                                            if (textView3 != null) {
                                                textView3.setVisibility(0);
                                                radarActivity2.f2858c.setText(str2);
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                        break;
                    case 2:
                        final String str3 = (String) obj;
                        int i112 = RadarActivity.f2856h;
                        if (str3 != null) {
                            final int i20 = 1;
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: i7.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i20) {
                                        case 0:
                                            TextView textView = radarActivity.f2860e;
                                            if (textView != null) {
                                                textView.setText(str3);
                                            }
                                            break;
                                        case 1:
                                            TextView textView2 = radarActivity.f2859d;
                                            if (textView2 != null) {
                                                textView2.setText(str3);
                                            }
                                            break;
                                        default:
                                            RadarActivity radarActivity2 = radarActivity;
                                            TextView textView3 = radarActivity2.f2858c;
                                            if (textView3 != null) {
                                                textView3.setVisibility(0);
                                                radarActivity2.f2858c.setText(str3);
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                        break;
                    case 3:
                        int i21 = RadarActivity.f2856h;
                        if (((Boolean) obj).booleanValue()) {
                            new Handler(Looper.getMainLooper()).post(new RunnableC1768q(radarActivity, i18));
                        }
                        break;
                    default:
                        C1765n c1765n = (C1765n) obj;
                        if (c1765n == null) {
                            int i22 = RadarActivity.f2856h;
                        } else if (radarActivity.f2857b != null) {
                            new Handler(Looper.getMainLooper()).post(new RunnableC1375j2(9, radarActivity, c1765n));
                        }
                        break;
                }
            }
        });
        final int i17 = 4;
        C3326d.m5242a().m5244c().f4642e.observe(this, new Observer(this) { // from class: i7.r

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ RadarActivity f4637b;

            {
                this.f4637b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i18 = i17;
                final int i19 = 0;
                final RadarActivity radarActivity = this.f4637b;
                switch (i18) {
                    case 0:
                        final String str = (String) obj;
                        int i110 = RadarActivity.f2856h;
                        if (str != null) {
                            final int i111 = 2;
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: i7.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i111) {
                                        case 0:
                                            TextView textView = radarActivity.f2860e;
                                            if (textView != null) {
                                                textView.setText(str);
                                            }
                                            break;
                                        case 1:
                                            TextView textView2 = radarActivity.f2859d;
                                            if (textView2 != null) {
                                                textView2.setText(str);
                                            }
                                            break;
                                        default:
                                            RadarActivity radarActivity2 = radarActivity;
                                            TextView textView3 = radarActivity2.f2858c;
                                            if (textView3 != null) {
                                                textView3.setVisibility(0);
                                                radarActivity2.f2858c.setText(str);
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                        break;
                    case 1:
                        final String str2 = (String) obj;
                        int i112 = RadarActivity.f2856h;
                        if (str2 != null) {
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: i7.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i19) {
                                        case 0:
                                            TextView textView = radarActivity.f2860e;
                                            if (textView != null) {
                                                textView.setText(str2);
                                            }
                                            break;
                                        case 1:
                                            TextView textView2 = radarActivity.f2859d;
                                            if (textView2 != null) {
                                                textView2.setText(str2);
                                            }
                                            break;
                                        default:
                                            RadarActivity radarActivity2 = radarActivity;
                                            TextView textView3 = radarActivity2.f2858c;
                                            if (textView3 != null) {
                                                textView3.setVisibility(0);
                                                radarActivity2.f2858c.setText(str2);
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                        break;
                    case 2:
                        final String str3 = (String) obj;
                        int i113 = RadarActivity.f2856h;
                        if (str3 != null) {
                            final int i20 = 1;
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: i7.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i20) {
                                        case 0:
                                            TextView textView = radarActivity.f2860e;
                                            if (textView != null) {
                                                textView.setText(str3);
                                            }
                                            break;
                                        case 1:
                                            TextView textView2 = radarActivity.f2859d;
                                            if (textView2 != null) {
                                                textView2.setText(str3);
                                            }
                                            break;
                                        default:
                                            RadarActivity radarActivity2 = radarActivity;
                                            TextView textView3 = radarActivity2.f2858c;
                                            if (textView3 != null) {
                                                textView3.setVisibility(0);
                                                radarActivity2.f2858c.setText(str3);
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                        break;
                    case 3:
                        int i21 = RadarActivity.f2856h;
                        if (((Boolean) obj).booleanValue()) {
                            new Handler(Looper.getMainLooper()).post(new RunnableC1768q(radarActivity, i19));
                        }
                        break;
                    default:
                        C1765n c1765n = (C1765n) obj;
                        if (c1765n == null) {
                            int i22 = RadarActivity.f2856h;
                        } else if (radarActivity.f2857b != null) {
                            new Handler(Looper.getMainLooper()).post(new RunnableC1375j2(9, radarActivity, c1765n));
                        }
                        break;
                }
            }
        });
    }
}
