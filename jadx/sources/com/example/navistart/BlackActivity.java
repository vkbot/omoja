package com.example.navistart;

import android.app.Activity;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetManager;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import com.example.navistart.BlackActivity;
import com.example.navistart.cores.HUDMassageObj;
import com.google.protobuf.AbstractC1178q;
import kotlin.jvm.internal.ByteCompanionObject;
import p016b1.C0867h;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.C1440x1;
import p057f0.EnumC1524b;
import p057f0.InterfaceC1525c;
import p078h0.C1652b;
import p115k7.C2052b;
import p121l0.C2194a;
import p132m0.C2263a0;
import p142n0.C2467b;
import p189s0.C3129a;
import p206u0.C3277a;
import p217v1.C3326d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class BlackActivity extends AppCompatActivity implements InterfaceC1525c {

    /* JADX INFO: renamed from: g */
    public static final /* synthetic */ int f1240g = 0;

    /* JADX INFO: renamed from: b */
    public final Boolean f1241b = Boolean.TRUE;

    /* JADX INFO: renamed from: c */
    public Float f1242c = null;

    /* JADX INFO: renamed from: d */
    public View f1243d;

    /* JADX INFO: renamed from: e */
    public AppWidgetHost f1244e;

    /* JADX INFO: renamed from: f */
    public C0867h f1245f;

    /* JADX INFO: renamed from: s */
    public static Boolean m1390s() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{45}, new byte[]{29, 118, -46, 44, 99, 60, 29, 81}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: renamed from: t */
    public static void m1391t(Activity activity) {
        activity.requestWindowFeature(1);
        activity.getWindow().setFlags(1024, 1024);
        activity.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        activity.getWindow().setFormat(-3);
        activity.getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    @Override // p057f0.InterfaceC1525c
    /* JADX INFO: renamed from: c */
    public final void mo924c() {
        C2194a.m3500t(C2263a0.class, null).show(getSupportFragmentManager(), AbstractC1387m.m2421h(new byte[]{13, 117, 32, -94, -117, 19, -2, -35, 7}, new byte[]{96, 12, ByteCompanionObject.MAX_VALUE, -58, -30, 114, -110, -78}));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        setTheme(R.style.Theme_NaviStart_AppCompat);
        super.onCreate(bundle);
        if (this.f1242c == null) {
            this.f1242c = Float.valueOf(getWindow().getAttributes().screenBrightness);
        }
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.screenBrightness = 0.01f;
        getWindow().setAttributes(attributes);
        if (boot.m1611b(this) && this.f1241b.booleanValue()) {
            throw null;
        }
        m1391t(this);
        setContentView(R.layout.blackactivity);
        this.f1244e = new AppWidgetHost(this, 1024);
        AppWidgetManager.getInstance(this);
        this.f1243d = findViewById(R.id.dimOverlay);
        this.f1243d.setAlpha(C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{3, 112, -23, -88, 87, -51, -71, 17, 32, 118, -28, -69, 100, -36, -78, 63, 54, 116, -19, -71, 83, -62, -81, 35, 56}, new byte[]{76, 6, -116, -38, 59, -84, -64, 80}), 100) / 100.0f);
        String strLoadString = C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, 122, -4, -27, 101, 51, -32, -44, -127, 122, -14, -27, 101, 52, -15, -63, -91, 123, -8, -24, 122}, new byte[]{-62, 22, -99, -122, 14, 114, -125, -96}), null);
        EnumC1524b enumC1524bValueOf = EnumC1524b.f3741e;
        if (strLoadString != null) {
            try {
                enumC1524bValueOf = EnumC1524b.valueOf(strLoadString);
            } catch (IllegalArgumentException unused) {
            }
        }
        final int i10 = 0;
        C3326d.m5242a().m5245d().f9728a.observe(this, new Observer(this) { // from class: e0.l

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ BlackActivity f3297b;

            {
                this.f3297b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i11 = i10;
                BlackActivity blackActivity = this.f3297b;
                switch (i11) {
                    case 0:
                        Integer num = (Integer) obj;
                        int i12 = BlackActivity.f1240g;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                                blackActivity.f1245f.mo925d(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        Integer num2 = (Integer) obj;
                        int i13 = BlackActivity.f1240g;
                        if (num2 != null) {
                            int iIntValue2 = num2.intValue();
                            if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                                blackActivity.f1245f.mo930l(iIntValue2);
                            }
                        }
                        break;
                    case 2:
                        C2052b c2052b = (C2052b) obj;
                        int i14 = BlackActivity.f1240g;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            String strM2075i = AbstractC1178q.m2075i(new byte[]{113, -42}, new byte[]{-77, 102, 63, -45, 43, 72, 122, 106}, sb);
                            int i15 = c2052b.f5608d;
                            if ((blackActivity.f1245f != null) & BlackActivity.m1390s().booleanValue()) {
                                blackActivity.f1245f.mo927g(i15, strM2075i);
                            }
                        }
                        break;
                    case 3:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            int i16 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo931o(hUDMassageObj);
                        }
                        break;
                    case 4:
                        String str = (String) obj;
                        if (str == null) {
                            int i17 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo926f(str);
                        }
                        break;
                    case 5:
                        C3129a c3129a = (C3129a) obj;
                        if (c3129a == null) {
                            int i18 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo929k(c3129a);
                        }
                        break;
                    default:
                        Location location = (Location) obj;
                        if (location == null) {
                            int i19 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.f579e.m991i(location);
                        }
                        break;
                }
            }
        });
        final int i11 = 1;
        C3326d.m5242a().m5245d().f9729b.observe(this, new Observer(this) { // from class: e0.l

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ BlackActivity f3297b;

            {
                this.f3297b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i12 = i11;
                BlackActivity blackActivity = this.f3297b;
                switch (i12) {
                    case 0:
                        Integer num = (Integer) obj;
                        int i13 = BlackActivity.f1240g;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                                blackActivity.f1245f.mo925d(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        Integer num2 = (Integer) obj;
                        int i14 = BlackActivity.f1240g;
                        if (num2 != null) {
                            int iIntValue2 = num2.intValue();
                            if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                                blackActivity.f1245f.mo930l(iIntValue2);
                            }
                        }
                        break;
                    case 2:
                        C2052b c2052b = (C2052b) obj;
                        int i15 = BlackActivity.f1240g;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            String strM2075i = AbstractC1178q.m2075i(new byte[]{113, -42}, new byte[]{-77, 102, 63, -45, 43, 72, 122, 106}, sb);
                            int i16 = c2052b.f5608d;
                            if ((blackActivity.f1245f != null) & BlackActivity.m1390s().booleanValue()) {
                                blackActivity.f1245f.mo927g(i16, strM2075i);
                            }
                        }
                        break;
                    case 3:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            int i17 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo931o(hUDMassageObj);
                        }
                        break;
                    case 4:
                        String str = (String) obj;
                        if (str == null) {
                            int i18 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo926f(str);
                        }
                        break;
                    case 5:
                        C3129a c3129a = (C3129a) obj;
                        if (c3129a == null) {
                            int i19 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo929k(c3129a);
                        }
                        break;
                    default:
                        Location location = (Location) obj;
                        if (location == null) {
                            int i110 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.f579e.m991i(location);
                        }
                        break;
                }
            }
        });
        final int i12 = 2;
        C3326d.m5242a().m5245d().f9730c.observe(this, new Observer(this) { // from class: e0.l

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ BlackActivity f3297b;

            {
                this.f3297b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i13 = i12;
                BlackActivity blackActivity = this.f3297b;
                switch (i13) {
                    case 0:
                        Integer num = (Integer) obj;
                        int i14 = BlackActivity.f1240g;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                                blackActivity.f1245f.mo925d(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        Integer num2 = (Integer) obj;
                        int i15 = BlackActivity.f1240g;
                        if (num2 != null) {
                            int iIntValue2 = num2.intValue();
                            if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                                blackActivity.f1245f.mo930l(iIntValue2);
                            }
                        }
                        break;
                    case 2:
                        C2052b c2052b = (C2052b) obj;
                        int i16 = BlackActivity.f1240g;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            String strM2075i = AbstractC1178q.m2075i(new byte[]{113, -42}, new byte[]{-77, 102, 63, -45, 43, 72, 122, 106}, sb);
                            int i17 = c2052b.f5608d;
                            if ((blackActivity.f1245f != null) & BlackActivity.m1390s().booleanValue()) {
                                blackActivity.f1245f.mo927g(i17, strM2075i);
                            }
                        }
                        break;
                    case 3:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            int i18 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo931o(hUDMassageObj);
                        }
                        break;
                    case 4:
                        String str = (String) obj;
                        if (str == null) {
                            int i19 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo926f(str);
                        }
                        break;
                    case 5:
                        C3129a c3129a = (C3129a) obj;
                        if (c3129a == null) {
                            int i110 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo929k(c3129a);
                        }
                        break;
                    default:
                        Location location = (Location) obj;
                        if (location == null) {
                            int i111 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.f579e.m991i(location);
                        }
                        break;
                }
            }
        });
        final int i13 = 3;
        C3326d.m5242a().m5245d().f9731d.observe(this, new Observer(this) { // from class: e0.l

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ BlackActivity f3297b;

            {
                this.f3297b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i14 = i13;
                BlackActivity blackActivity = this.f3297b;
                switch (i14) {
                    case 0:
                        Integer num = (Integer) obj;
                        int i15 = BlackActivity.f1240g;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                                blackActivity.f1245f.mo925d(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        Integer num2 = (Integer) obj;
                        int i16 = BlackActivity.f1240g;
                        if (num2 != null) {
                            int iIntValue2 = num2.intValue();
                            if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                                blackActivity.f1245f.mo930l(iIntValue2);
                            }
                        }
                        break;
                    case 2:
                        C2052b c2052b = (C2052b) obj;
                        int i17 = BlackActivity.f1240g;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            String strM2075i = AbstractC1178q.m2075i(new byte[]{113, -42}, new byte[]{-77, 102, 63, -45, 43, 72, 122, 106}, sb);
                            int i18 = c2052b.f5608d;
                            if ((blackActivity.f1245f != null) & BlackActivity.m1390s().booleanValue()) {
                                blackActivity.f1245f.mo927g(i18, strM2075i);
                            }
                        }
                        break;
                    case 3:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            int i19 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo931o(hUDMassageObj);
                        }
                        break;
                    case 4:
                        String str = (String) obj;
                        if (str == null) {
                            int i110 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo926f(str);
                        }
                        break;
                    case 5:
                        C3129a c3129a = (C3129a) obj;
                        if (c3129a == null) {
                            int i111 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo929k(c3129a);
                        }
                        break;
                    default:
                        Location location = (Location) obj;
                        if (location == null) {
                            int i112 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.f579e.m991i(location);
                        }
                        break;
                }
            }
        });
        final int i14 = 4;
        C3326d.m5242a().m5245d().f9732e.observe(this, new Observer(this) { // from class: e0.l

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ BlackActivity f3297b;

            {
                this.f3297b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i15 = i14;
                BlackActivity blackActivity = this.f3297b;
                switch (i15) {
                    case 0:
                        Integer num = (Integer) obj;
                        int i16 = BlackActivity.f1240g;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                                blackActivity.f1245f.mo925d(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        Integer num2 = (Integer) obj;
                        int i17 = BlackActivity.f1240g;
                        if (num2 != null) {
                            int iIntValue2 = num2.intValue();
                            if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                                blackActivity.f1245f.mo930l(iIntValue2);
                            }
                        }
                        break;
                    case 2:
                        C2052b c2052b = (C2052b) obj;
                        int i18 = BlackActivity.f1240g;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            String strM2075i = AbstractC1178q.m2075i(new byte[]{113, -42}, new byte[]{-77, 102, 63, -45, 43, 72, 122, 106}, sb);
                            int i19 = c2052b.f5608d;
                            if ((blackActivity.f1245f != null) & BlackActivity.m1390s().booleanValue()) {
                                blackActivity.f1245f.mo927g(i19, strM2075i);
                            }
                        }
                        break;
                    case 3:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            int i110 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo931o(hUDMassageObj);
                        }
                        break;
                    case 4:
                        String str = (String) obj;
                        if (str == null) {
                            int i111 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo926f(str);
                        }
                        break;
                    case 5:
                        C3129a c3129a = (C3129a) obj;
                        if (c3129a == null) {
                            int i112 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo929k(c3129a);
                        }
                        break;
                    default:
                        Location location = (Location) obj;
                        if (location == null) {
                            int i113 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.f579e.m991i(location);
                        }
                        break;
                }
            }
        });
        final int i15 = 5;
        C3326d.m5242a().m5245d().f9733f.observe(this, new Observer(this) { // from class: e0.l

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ BlackActivity f3297b;

            {
                this.f3297b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i16 = i15;
                BlackActivity blackActivity = this.f3297b;
                switch (i16) {
                    case 0:
                        Integer num = (Integer) obj;
                        int i17 = BlackActivity.f1240g;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                                blackActivity.f1245f.mo925d(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        Integer num2 = (Integer) obj;
                        int i18 = BlackActivity.f1240g;
                        if (num2 != null) {
                            int iIntValue2 = num2.intValue();
                            if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                                blackActivity.f1245f.mo930l(iIntValue2);
                            }
                        }
                        break;
                    case 2:
                        C2052b c2052b = (C2052b) obj;
                        int i19 = BlackActivity.f1240g;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            String strM2075i = AbstractC1178q.m2075i(new byte[]{113, -42}, new byte[]{-77, 102, 63, -45, 43, 72, 122, 106}, sb);
                            int i110 = c2052b.f5608d;
                            if ((blackActivity.f1245f != null) & BlackActivity.m1390s().booleanValue()) {
                                blackActivity.f1245f.mo927g(i110, strM2075i);
                            }
                        }
                        break;
                    case 3:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            int i111 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo931o(hUDMassageObj);
                        }
                        break;
                    case 4:
                        String str = (String) obj;
                        if (str == null) {
                            int i112 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo926f(str);
                        }
                        break;
                    case 5:
                        C3129a c3129a = (C3129a) obj;
                        if (c3129a == null) {
                            int i113 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo929k(c3129a);
                        }
                        break;
                    default:
                        Location location = (Location) obj;
                        if (location == null) {
                            int i114 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.f579e.m991i(location);
                        }
                        break;
                }
            }
        });
        final int i16 = 6;
        C3326d.m5242a().m5245d().f9734g.observe(this, new Observer(this) { // from class: e0.l

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ BlackActivity f3297b;

            {
                this.f3297b = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i17 = i16;
                BlackActivity blackActivity = this.f3297b;
                switch (i17) {
                    case 0:
                        Integer num = (Integer) obj;
                        int i18 = BlackActivity.f1240g;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                                blackActivity.f1245f.mo925d(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        Integer num2 = (Integer) obj;
                        int i19 = BlackActivity.f1240g;
                        if (num2 != null) {
                            int iIntValue2 = num2.intValue();
                            if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                                blackActivity.f1245f.mo930l(iIntValue2);
                            }
                        }
                        break;
                    case 2:
                        C2052b c2052b = (C2052b) obj;
                        int i110 = BlackActivity.f1240g;
                        if (c2052b != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2052b.f5606b);
                            String strM2075i = AbstractC1178q.m2075i(new byte[]{113, -42}, new byte[]{-77, 102, 63, -45, 43, 72, 122, 106}, sb);
                            int i111 = c2052b.f5608d;
                            if ((blackActivity.f1245f != null) & BlackActivity.m1390s().booleanValue()) {
                                blackActivity.f1245f.mo927g(i111, strM2075i);
                            }
                        }
                        break;
                    case 3:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            int i112 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo931o(hUDMassageObj);
                        }
                        break;
                    case 4:
                        String str = (String) obj;
                        if (str == null) {
                            int i113 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo926f(str);
                        }
                        break;
                    case 5:
                        C3129a c3129a = (C3129a) obj;
                        if (c3129a == null) {
                            int i114 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.mo929k(c3129a);
                        }
                        break;
                    default:
                        Location location = (Location) obj;
                        if (location == null) {
                            int i115 = BlackActivity.f1240g;
                        } else if (BlackActivity.m1390s().booleanValue() & (blackActivity.f1245f != null)) {
                            blackActivity.f1245f.f579e.m991i(location);
                        }
                        break;
                }
            }
        });
        m1392u(enumC1524bValueOf);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        if (this.f1242c != null) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.screenBrightness = this.f1242c.floatValue();
            getWindow().setAttributes(attributes);
            this.f1242c = null;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        this.f1244e.startListening();
    }

    /* JADX INFO: renamed from: u */
    public final void m1392u(EnumC1524b enumC1524b) {
        this.f1245f = null;
        if (enumC1524b != EnumC1524b.f3740d) {
            try {
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, (Fragment) enumC1524b.f3744c.newInstance()).commit();
                return;
            } catch (IllegalAccessException | InstantiationException e) {
                C2467b.m3833w(e);
                return;
            }
        }
        String strM2421h = AbstractC1387m.m2421h(new byte[]{-12, 92, 51, -103, -80, -91, -48, 39, -45, 64, 7, -120, -112, -103, -61, 43, -46}, new byte[]{-71, 37, 100, -4, -46, -11, -94, 72});
        String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-61, 105, -91, -38, 91, -54, 9, -50, -28, 117, -111, -53, 123, -10, 26, -62, -27, 79, -95, -38, 77, -18, 18, -49, -23, 99, -83, -12, 92, -29}, new byte[]{-114, 16, -14, -65, 57, -102, 123, -95});
        String strM2421h3 = AbstractC1387m.m2421h(new byte[]{126, -93, -107, 95, -16, 101, 12, 85, 109, -93, -111, 97, -25, 101, 25, 105, 113}, new byte[]{26, -58, -13, 62, -123, 9, 120, 10});
        C0867h c0867h = new C0867h();
        Bundle bundle = new Bundle();
        bundle.putString(C0867h.f573g, strM2421h);
        bundle.putString(C0867h.f574h, strM2421h2);
        bundle.putString(C0867h.f575i, strM2421h3);
        c0867h.setArguments(bundle);
        this.f1245f = c0867h;
        getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, c0867h).commit();
    }
}
