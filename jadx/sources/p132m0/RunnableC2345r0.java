package p132m0;

import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import com.example.navistart.R;
import p148n7.C2508f1;
import p148n7.C2547v0;
import p157o7.AbstractC2607b1;
import p157o7.C2684o0;
import p157o7.C2700q4;
import p157o7.C2712s4;
import p157o7.C2727v1;
import p157o7.EnumC2725v;
import p157o7.InterfaceC2706r4;
import p164p0.C2949b;

/* JADX INFO: renamed from: m0.r0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2345r0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6331b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f6332c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f6333d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f6334e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ Object f6335f;

    public /* synthetic */ RunnableC2345r0(int i10, Object obj, Object obj2, Object obj3, Object obj4) {
        this.f6331b = i10;
        this.f6335f = obj;
        this.f6332c = obj2;
        this.f6333d = obj3;
        this.f6334e = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6331b) {
            case 0:
                LinearLayout linearLayout = (LinearLayout) this.f6334e;
                Button button = (Button) this.f6333d;
                View view = (View) this.f6332c;
                C2349s0 c2349s0 = (C2349s0) this.f6335f;
                if (c2349s0.isAdded() && c2349s0.getView() == view) {
                    boolean zM4719f = C2949b.m4719f(c2349s0.requireContext());
                    boolean z9 = !zM4719f;
                    button.setEnabled(z9);
                    button.setText(zM4719f ? R.string.launcher_shortcuts_cleaning : R.string.launcher_shortcuts_cleanup);
                    for (int i10 = 0; i10 < linearLayout.getChildCount(); i10++) {
                        linearLayout.getChildAt(i10).setEnabled(z9);
                    }
                    view.postDelayed(this, 250L);
                    return;
                }
                return;
            case 1:
                ((AbstractC2607b1) this.f6335f).m4119b((C2508f1) this.f6332c, (EnumC2725v) this.f6333d, (C2547v0) this.f6334e);
                return;
            case 2:
                ((C2684o0) this.f6335f).f7649b.mo68b((C2508f1) this.f6332c, (EnumC2725v) this.f6333d, (C2547v0) this.f6334e);
                return;
            case 3:
                C2727v1 c2727v1 = (C2727v1) this.f6335f;
                c2727v1.f7810A = true;
                c2727v1.f7835v.mo68b((C2508f1) this.f6332c, (EnumC2725v) this.f6333d, (C2547v0) this.f6334e);
                return;
            default:
                synchronized (((C2712s4) this.f6335f)) {
                    try {
                        if (((C2700q4) this.f6332c).f7732b == 0) {
                            try {
                                ((InterfaceC2706r4) this.f6333d).mo4231p(this.f6334e);
                                ((C2712s4) this.f6335f).f7755a.remove((InterfaceC2706r4) this.f6333d);
                                if (((C2712s4) this.f6335f).f7755a.isEmpty()) {
                                    ((C2712s4) this.f6335f).f7757c.shutdown();
                                    ((C2712s4) this.f6335f).f7757c = null;
                                }
                            } catch (Throwable th) {
                                ((C2712s4) this.f6335f).f7755a.remove((InterfaceC2706r4) this.f6333d);
                                if (((C2712s4) this.f6335f).f7755a.isEmpty()) {
                                    ((C2712s4) this.f6335f).f7757c.shutdown();
                                    ((C2712s4) this.f6335f).f7757c = null;
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return;
        }
    }
}
