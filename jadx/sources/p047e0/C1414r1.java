package p047e0;

import android.view.KeyEvent;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.mainview.YMovLay;
import p078h0.C1652b;
import p198t1.InterfaceC3238p;
import p206u0.C3277a;

/* JADX INFO: renamed from: e0.r1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1414r1 implements InterfaceC3238p {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ KeyEvent.Callback f3393b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3394c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f3395d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ KeyEvent.Callback f3396e;

    public /* synthetic */ C1414r1(KeyEvent.Callback callback, Object obj, Object obj2, KeyEvent.Callback callback2) {
        this.f3393b = callback;
        this.f3394c = obj;
        this.f3395d = obj2;
        this.f3396e = callback2;
    }

    @Override // p198t1.InterfaceC3238p
    /* JADX INFO: renamed from: a */
    public void mo885a(int i10, boolean z9) {
        ModernMainActivity modernMainActivity = (ModernMainActivity) this.f3393b;
        String str = (String) this.f3394c;
        String str2 = (String) this.f3395d;
        YMovLay yMovLay = (YMovLay) this.f3396e;
        String str3 = ModernMainActivity.f1436B1;
        C3277a c3277aM2745o = C1652b.m2745o();
        if (!z9) {
            str = str2;
        }
        c3277aM2745o.saveString(str, String.valueOf(i10));
        if (z9) {
            yMovLay.setYLayMovX(String.valueOf(i10));
        } else {
            yMovLay.setYLayMovY(String.valueOf(i10));
        }
        C1396n3.m2439a(modernMainActivity);
    }
}
