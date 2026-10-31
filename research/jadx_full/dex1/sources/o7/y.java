package o7;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f4503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public n7.b f4504b;
    public n7.u c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return this.f4503a.equals(yVar.f4503a) && this.f4504b.equals(yVar.f4504b) && com.bumptech.glide.d.f(null, null) && com.bumptech.glide.d.f(this.c, yVar.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4503a, this.f4504b, null, this.c});
    }
}
