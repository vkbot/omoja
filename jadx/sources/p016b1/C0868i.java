package p016b1;

/* JADX INFO: renamed from: b1.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0868i implements InterfaceC0870k {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f581b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C0871l f582c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ String f583d;

    public /* synthetic */ C0868i(C0871l c0871l, String str, int i10) {
        this.f581b = i10;
        this.f582c = c0871l;
        this.f583d = str;
    }

    @Override // p016b1.InterfaceC0870k
    public final String run() {
        switch (this.f581b) {
            case 0:
                return this.f582c.m970i(this.f583d);
            default:
                return this.f582c.m971j(this.f583d);
        }
    }
}
