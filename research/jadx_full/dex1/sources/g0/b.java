package g0;

import android.widget.LinearLayout;
import b1.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2332b;
    public final /* synthetic */ m c;
    public final /* synthetic */ e d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(m mVar, e eVar, int i9) {
        this.f2332b = i9;
        this.c = mVar;
        this.d = eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2332b) {
            case 0:
                m mVar = this.c;
                mVar.getClass();
                e eVar = this.d;
                eVar.post(new c(eVar, new b(mVar, eVar, 1), 0));
                break;
            default:
                m mVar2 = this.c;
                mVar2.getClass();
                e eVar2 = this.d;
                eVar2.setOnClickListener(null);
                LinearLayout linearLayout = (LinearLayout) mVar2.d;
                linearLayout.removeView(eVar2);
                linearLayout.getChildCount();
                break;
        }
    }
}
