package o6;

import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f4106b;
    public final o[] c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(int i9, int i10, int i11, int i12, int[] iArr) {
        this.f4105a = i9;
        this.f4106b = iArr;
        float f8 = i12;
        this.c = new o[]{new o(i10, f8), new o(i11, f8)};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        return (obj instanceof c) && this.f4105a == ((c) obj).f4105a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.f4105a;
    }
}
