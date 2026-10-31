package p031c6;

import kotlin.text.Typography;
import p260z5.C3759o;

/* JADX INFO: renamed from: c6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0995a {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f949a;

    /* JADX INFO: renamed from: b */
    public int f950b;

    /* JADX INFO: renamed from: c */
    public int f951c;

    public /* synthetic */ C0995a(int i10, int i11, int i12) {
        this.f949a = i12;
        this.f950b = i10;
        this.f951c = i11;
    }

    /* JADX INFO: renamed from: a */
    public C3759o m1192a() {
        return new C3759o(this.f950b, this.f951c);
    }

    public String toString() {
        switch (this.f949a) {
            case 0:
                return "<" + this.f950b + ' ' + this.f951c + Typography.greater;
            default:
                return super.toString();
        }
    }
}
