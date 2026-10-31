package p022b7;

import ai.onnxruntime.AbstractC0074a;
import android.graphics.Rect;

/* JADX INFO: renamed from: b7.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0926v {

    /* JADX INFO: renamed from: a */
    public final C0923s f779a;

    /* JADX INFO: renamed from: b */
    public final int f780b;

    /* JADX INFO: renamed from: c */
    public final int f781c;

    /* JADX INFO: renamed from: d */
    public Rect f782d;

    /* JADX INFO: renamed from: e */
    public boolean f783e;

    public C0926v(int i10, int i11, int i12, int i13, byte[] bArr) {
        this.f779a = new C0923s(bArr, i10, i11);
        this.f781c = i13;
        this.f780b = i12;
        if (i10 * i11 <= bArr.length) {
            return;
        }
        StringBuilder sbM171v = AbstractC0074a.m171v("Image data does not match the resolution. ", i10, i11, "x", " > ");
        sbM171v.append(bArr.length);
        throw new IllegalArgumentException(sbM171v.toString());
    }
}
