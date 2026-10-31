package p190s1;

/* JADX INFO: renamed from: s1.z */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3183z implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9264b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3166q0 f9265c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ EnumC3158m0 f9266d;

    public /* synthetic */ RunnableC3183z(C3166q0 c3166q0, EnumC3158m0 enumC3158m0, int i10) {
        this.f9264b = i10;
        this.f9265c = c3166q0;
        this.f9266d = enumC3158m0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9264b) {
            case 0:
                EnumC3158m0 enumC3158m0 = EnumC3158m0.f9102c;
                C3166q0 c3166q0 = this.f9265c;
                EnumC3158m0 enumC3158m1 = this.f9266d;
                if (enumC3158m1 == enumC3158m0) {
                    c3166q0.f9190z = false;
                }
                if (enumC3158m1 == EnumC3158m0.f9103d) {
                    c3166q0.f9156A = false;
                }
                if (c3166q0.isAttachedToWindow()) {
                    c3166q0.m5038B(enumC3158m1);
                }
                break;
            default:
                this.f9265c.m5038B(this.f9266d);
                break;
        }
    }
}
