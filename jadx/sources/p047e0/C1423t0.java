package p047e0;

import android.widget.CompoundButton;
import com.example.navistart.MainActivity;
import com.example.navistart.cores.BezFunEnum;
import com.google.android.material.materialswitch.MaterialSwitch;
import p016b1.RunnableC0873n;
import p062f5.C1548f;
import p078h0.C1652b;
import p132m0.C2349s0;
import p164p0.C2948a;
import p164p0.C2949b;

/* JADX INFO: renamed from: e0.t0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1423t0 implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3419a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f3420b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3421c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f3422d;

    public /* synthetic */ C1423t0(Object obj, Object obj2, Object obj3, int i10) {
        this.f3419a = i10;
        this.f3420b = obj;
        this.f3421c = obj2;
        this.f3422d = obj3;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
        switch (this.f3419a) {
            case 0:
                MainActivity mainActivity = (MainActivity) this.f3420b;
                String str = (String) this.f3421c;
                MaterialSwitch materialSwitch = (MaterialSwitch) this.f3422d;
                String str2 = MainActivity.f1288e1;
                C1652b.m2745o().saveBoolean(str, z9);
                try {
                    BezFunEnum bezFunEnumValueOf = BezFunEnum.valueOf(str);
                    C1652b.m2734a();
                    C1652b.m2736d().bezoff(bezFunEnumValueOf, !z9);
                    mainActivity.f1358d1.put(bezFunEnumValueOf, materialSwitch);
                    return;
                } catch (IllegalArgumentException unused) {
                    return;
                }
            default:
                C2349s0 c2349s0 = (C2349s0) this.f3420b;
                C2949b c2949b = (C2949b) this.f3421c;
                C2948a c2948a = (C2948a) this.f3422d;
                C1548f c1548f = new C1548f(c2349s0, c2949b, c2948a);
                if (c2948a.f8186e) {
                    return;
                }
                synchronized (C2949b.f8187c) {
                    try {
                        if (C2949b.m4719f(c2949b.f8196a)) {
                            return;
                        }
                        if (!C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-125, -73, 8, 16, -9, -49, 43, -65, -123, -101, 5, 11, -52, -53, 4, -86, -104, -91, 15, 14, -51, -54}, new byte[]{-10, -60, 109, 98, -88, -82, 91, -49}), false)) {
                            c2949b.f8196a.getPackageManager().setComponentEnabledSetting(c2948a.f8183b, z9 ? 1 : 2, 1);
                        }
                        C1652b.m2745o().saveBoolean(C2949b.f8192h + c2948a.f8182a, z9);
                        if (z9) {
                            return;
                        }
                        new Thread(new RunnableC0873n(c2949b, c2948a.f8183b, c1548f, 11), AbstractC1387m.m2421h(new byte[]{-15, -11, 26, -116, 6, -5, -49, -26, -49, -43, 59, -43, 88, -16, -52, -15, -38, -40, 59, -47}, new byte[]{-69, -74, 78, -95, 117, -109, -96, -108})).start();
                        return;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
        }
    }
}
