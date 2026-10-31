package p047e0;

import android.view.View;
import android.widget.AdapterView;
import androidx.core.view.inputmethod.C0427a;
import androidx.fragment.app.C0566h;
import com.example.navistart.LocServ;
import com.example.navistart.MainActivity;
import java.util.concurrent.TimeUnit;
import p078h0.C1652b;
import p094i7.C1764m;
import p142n0.EnumC2466a;

/* JADX INFO: renamed from: e0.f1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1354f1 implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ String[] f3225b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ String f3226c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C0427a f3227d;

    public C1354f1(String[] strArr, String str, C0427a c0427a) {
        this.f3225b = strArr;
        this.f3226c = str;
        this.f3227d = c0427a;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
        LocServ locServ;
        C1764m c1764m;
        String str = this.f3225b[i10];
        C1652b.m2745o().saveString(this.f3226c, str);
        View view2 = this.f3227d.f400a;
        String str2 = MainActivity.f1288e1;
        EnumC2466a enumC2466a = EnumC2466a.f6674e;
        view2.setVisibility(enumC2466a.name().equals(str) ? 0 : 8);
        if (str.equals(enumC2466a.name())) {
            LocServ.f1274n = Boolean.TRUE;
        } else {
            LocServ.f1274n = Boolean.FALSE;
            C0566h c0566h = LocServ.f1268h;
            if (c0566h != null && (c1764m = (locServ = (LocServ) c0566h.f453c).f1277d) != null) {
                c1764m.f4619e.m2879e();
                locServ.f1277d = null;
                LocServ.f1268h = null;
            }
        }
        try {
            C1652b.m2734a();
            C1652b.m2740i().m2368d();
        } catch (Exception unused) {
            AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-100, -16, -116, -126, -86, 1, 16, 46, -89, -8, -111, -107}, new byte[]{-47, -111, -27, -20, -21, 98, 100, 71})).schedule(new RunnableC1431v0(0), 1000L, TimeUnit.MILLISECONDS);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
