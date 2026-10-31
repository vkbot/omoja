package e0;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;
import com.example.navistart.MainActivity;
import com.example.navistart.cores.BezFunEnum;
import com.google.android.material.materialswitch.MaterialSwitch;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class t0 implements CompoundButton$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1955a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1956b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ t0(Object obj, Object obj2, Object obj3, int i9) {
        this.f1955a = i9;
        this.f1956b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z8) {
        switch (this.f1955a) {
            case 0:
                MainActivity mainActivity = (MainActivity) this.f1956b;
                String str = (String) this.c;
                MaterialSwitch materialSwitch = (MaterialSwitch) this.d;
                String str2 = MainActivity.f688e1;
                h0.b.o().saveBoolean(str, z8);
                try {
                    BezFunEnum bezFunEnumValueOf = BezFunEnum.valueOf(str);
                    h0.b.a();
                    h0.b.d().bezoff(bezFunEnumValueOf, !z8);
                    mainActivity.f703d1.put(bezFunEnumValueOf, materialSwitch);
                    return;
                } catch (IllegalArgumentException unused) {
                    return;
                }
            default:
                m0.s0 s0Var = (m0.s0) this.f1956b;
                p0.b bVar = (p0.b) this.c;
                p0.a aVar = (p0.a) this.d;
                f5.f fVar = new f5.f(s0Var, bVar, aVar);
                if (aVar.e) {
                    return;
                }
                synchronized (p0.b.c) {
                    try {
                        if (p0.b.f(bVar.f4549a)) {
                            return;
                        }
                        if (!h0.b.o().loadBoolean(m.h(new byte[]{-125, -73, 8, 16, -9, -49, 43, -65, -123, -101, 5, 11, -52, -53, 4, -86, -104, -91, 15, 14, -51, -54}, new byte[]{-10, -60, 109, 98, -88, -82, 91, -49}), false)) {
                            bVar.f4549a.getPackageManager().setComponentEnabledSetting(aVar.f4542b, z8 ? 1 : 2, 1);
                        }
                        h0.b.o().saveBoolean(p0.b.f4545h + aVar.f4541a, z8);
                        if (z8) {
                            return;
                        }
                        new Thread(new b1.n(bVar, aVar.f4542b, fVar, 11), m.h(new byte[]{-15, -11, 26, -116, 6, -5, -49, -26, -49, -43, 59, -43, 88, -16, -52, -15, -38, -40, 59, -47}, new byte[]{-69, -74, 78, -95, 117, -109, -96, -108})).start();
                        return;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
        }
    }
}
