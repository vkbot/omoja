package k8;

import android.support.v4.media.h;
import j8.d;
import x7.l;
import x7.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3207a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l f3208b;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(l lVar, Object obj, int i9) {
        this.f3207a = i9;
        this.f3208b = lVar;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.l
    public final void b(m mVar) {
        switch (this.f3207a) {
            case 0:
                ((d) this.f3208b).a(new h(28, this, mVar));
                break;
            case 1:
                this.f3208b.a(new h(29, this, mVar));
                break;
            default:
                this.f3208b.a(new i8.h(2, mVar, (d8.a) this.c));
                break;
        }
    }
}
