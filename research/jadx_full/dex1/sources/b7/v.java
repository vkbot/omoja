package b7;

import android.graphics.Rect;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s f390a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f391b;
    public final int c;
    public Rect d;
    public boolean e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public v(int i9, int i10, int i11, int i12, byte[] bArr) {
        this.f390a = new s(bArr, i9, i10);
        this.c = i12;
        this.f391b = i11;
        if (i9 * i10 <= bArr.length) {
            return;
        }
        StringBuilder sbV = ai.onnxruntime.a.v("Image data does not match the resolution. ", i9, i10, "x", " > ");
        sbV.append(bArr.length);
        throw new IllegalArgumentException(sbV.toString());
    }
}
