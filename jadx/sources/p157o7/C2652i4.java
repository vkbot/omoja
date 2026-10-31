package p157o7;

/* JADX INFO: renamed from: o7.i4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2652i4 {

    /* JADX INFO: renamed from: a */
    public final boolean f7526a;

    /* JADX INFO: renamed from: b */
    public final int f7527b;

    /* JADX INFO: renamed from: c */
    public final int f7528c;

    /* JADX INFO: renamed from: d */
    public final Object f7529d;

    public /* synthetic */ C2652i4(boolean z9, int i10, int i11, Object obj) {
        this.f7526a = z9;
        this.f7527b = i10;
        this.f7528c = i11;
        this.f7529d = obj;
    }

    /* JADX INFO: renamed from: a */
    public static C2652i4 m4167a(C2652i4 c2652i4, C2652i4 c2652i5) {
        String str = (String) c2652i4.f7529d;
        if (str == null) {
            str = (String) c2652i5.f7529d;
        }
        return new C2652i4(c2652i4.f7526a && c2652i5.f7526a, c2652i4.f7527b + c2652i5.f7527b, c2652i4.f7528c + c2652i5.f7528c, str);
    }
}
