package p223v7;

import p148n7.AbstractC2503e;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: v7.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3352m {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f9793a;

    /* JADX INFO: renamed from: b */
    public final C3354o f9794b;

    /* JADX INFO: renamed from: c */
    public final AbstractC2503e f9795c;

    public C3352m(C3354o c3354o, AbstractC2503e abstractC2503e, int i10) {
        this.f9793a = i10;
        switch (i10) {
            case 1:
                AbstractC2587b.m4037d("success rate ejection config is null", c3354o.f9804e != null);
                this.f9794b = c3354o;
                this.f9795c = abstractC2503e;
                break;
            default:
                this.f9794b = c3354o;
                this.f9795c = abstractC2503e;
                break;
        }
    }
}
