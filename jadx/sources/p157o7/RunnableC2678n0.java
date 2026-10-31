package p157o7;

import com.google.android.material.datepicker.C1103n;

/* JADX INFO: renamed from: o7.n0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2678n0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7632b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f7633c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f7634d;

    public /* synthetic */ RunnableC2678n0(Object obj, int i10, int i11) {
        this.f7632b = i11;
        this.f7634d = obj;
        this.f7633c = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7632b) {
            case 0:
                ((C2660k0) this.f7634d).f7557d.mo4099m(this.f7633c);
                break;
            case 1:
                ((C2660k0) this.f7634d).f7557d.mo4092c(this.f7633c);
                break;
            default:
                ((C1103n) this.f7634d).f2288i.smoothScrollToPosition(this.f7633c);
                break;
        }
    }
}
