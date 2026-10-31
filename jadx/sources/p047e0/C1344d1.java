package p047e0;

import android.view.View;
import android.widget.AdapterView;
import com.example.navistart.MainActivity;
import kotlin.jvm.internal.ByteCompanionObject;
import p062f5.RunnableC1556j;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p098j0.C1917c;
import p098j0.C1919e;
import p132m0.C2342q1;
import p206u0.C3277a;
import p225w0.C3481o0;

/* JADX INFO: renamed from: e0.d1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1344d1 implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3202b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3203c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f3204d;

    public C1344d1(String[] strArr, String str) {
        this.f3202b = 2;
        this.f3203c = strArr;
        this.f3204d = str;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
        switch (this.f3202b) {
            case 0:
                String str = ((String[]) this.f3203c)[i10];
                C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-86, 7, 45, 39, -37, 109, -117, -77, -123, 35}, new byte[]{-23, 70, ByteCompanionObject.MAX_VALUE, 119, -87, 2, -19, -38}), str);
                synchronized (C1652b.class) {
                    C1652b.m2752x(false);
                }
                MainActivity mainActivity = (MainActivity) this.f3204d;
                String str2 = MainActivity.f1288e1;
                mainActivity.m1445t(str);
                return;
            case 1:
                C1919e c1919e = (C1919e) adapterView.getItemAtPosition(i10);
                C1917c c1917c = (C1917c) this.f3204d;
                String str3 = (String) this.f3203c;
                c1917c.getClass();
                AbstractC1920f.m3008f(str3, c1919e);
                return;
            case 2:
                String str4 = ((String[]) this.f3203c)[i10];
                C3277a c3277aM2745o = C1652b.m2745o();
                String str5 = (String) this.f3204d;
                if (str4.equals(c3277aM2745o.loadString(str5, ""))) {
                    return;
                }
                C1652b.m2745o().saveString(str5, str4);
                return;
            default:
                ((C3481o0) this.f3203c).f10179b = (C1919e) adapterView.getItemAtPosition(i10);
                RunnableC1556j runnableC1556j = ((C2342q1) this.f3204d).f6316d;
                if (runnableC1556j != null) {
                    runnableC1556j.run();
                    return;
                }
                return;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i10 = this.f3202b;
    }

    public /* synthetic */ C1344d1(int i10, Object obj, Object obj2) {
        this.f3202b = i10;
        this.f3204d = obj;
        this.f3203c = obj2;
    }

    /* JADX INFO: renamed from: a */
    private final void m2393a(AdapterView adapterView) {
    }

    /* JADX INFO: renamed from: b */
    private final void m2394b(AdapterView adapterView) {
    }

    /* JADX INFO: renamed from: c */
    private final void m2395c(AdapterView adapterView) {
    }

    /* JADX INFO: renamed from: d */
    private final void m2396d(AdapterView adapterView) {
    }
}
