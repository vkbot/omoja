package p006a5;

import p239x4.C3569b;
import p239x4.C3570c;
import p239x4.InterfaceC3574g;

/* JADX INFO: renamed from: a5.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0024i implements InterfaceC3574g {

    /* JADX INFO: renamed from: a */
    public boolean f84a = false;

    /* JADX INFO: renamed from: b */
    public boolean f85b = false;

    /* JADX INFO: renamed from: c */
    public C3570c f86c;

    /* JADX INFO: renamed from: d */
    public final C0021f f87d;

    public C0024i(C0021f c0021f) {
        this.f87d = c0021f;
    }

    @Override // p239x4.InterfaceC3574g
    /* JADX INFO: renamed from: b */
    public final InterfaceC3574g mo87b(String str) {
        if (this.f84a) {
            throw new C3569b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f84a = true;
        this.f87d.m59e(this.f86c, str, this.f85b);
        return this;
    }

    @Override // p239x4.InterfaceC3574g
    /* JADX INFO: renamed from: c */
    public final InterfaceC3574g mo88c(boolean z9) {
        if (this.f84a) {
            throw new C3569b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f84a = true;
        this.f87d.m56b(this.f86c, z9 ? 1 : 0, this.f85b);
        return this;
    }
}
