package p132m0;

import android.content.Context;
import androidx.recyclerview.widget.GridLayoutManager;
import p121l0.C2195b;

/* JADX INFO: renamed from: m0.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2307j implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6159b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ float f6160c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Context f6161d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C2195b f6162e;

    public /* synthetic */ RunnableC2307j(C2195b c2195b, float f8, Context context, int i10) {
        this.f6159b = i10;
        this.f6162e = c2195b;
        this.f6160c = f8;
        this.f6161d = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6159b) {
            case 0:
                C2332o c2332o = (C2332o) this.f6162e;
                c2332o.f6275b.setLayoutManager(new GridLayoutManager(this.f6161d, Math.max(1, c2332o.f6275b.getWidth() / ((int) (this.f6160c * 120.0f)))));
                break;
            default:
                C2315k2 c2315k2 = (C2315k2) this.f6162e;
                c2315k2.f6189d.setLayoutManager(new GridLayoutManager(this.f6161d, Math.max(1, c2315k2.f6189d.getWidth() / ((int) (this.f6160c * 120.0f)))));
                break;
        }
    }
}
