package m0;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3439a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3440b;
    public Drawable c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(String str, String str2) {
        this.f3439a = str;
        this.f3440b = str2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f3439a);
        sb.append(e0.m.h(new byte[]{110, -38}, new byte[]{78, -14, -73, 48, -51, -90, 101, -64}));
        sb.append(this.f3440b);
        return com.google.protobuf.q.i(new byte[]{-122}, new byte[]{-81, -107, -115, 58, -62, -80, -22, 47}, sb);
    }
}
