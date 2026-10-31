package p165p2;

import java.util.Arrays;

/* JADX INFO: renamed from: p2.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC2965h extends AbstractBinderC2964g {

    /* JADX INFO: renamed from: d */
    public final byte[] f8247d;

    public BinderC2965h(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f8247d = bArr;
    }

    @Override // p165p2.AbstractBinderC2964g
    /* JADX INFO: renamed from: d */
    public final byte[] mo4753d() {
        return this.f8247d;
    }
}
