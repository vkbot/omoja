package j4;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m extends e {
    public final transient Object[] d;
    public final transient int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient int f3056f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m(int i9, int i10, Object[] objArr) {
        this.d = objArr;
        this.e = i9;
        this.f3056f = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.List
    public final Object get(int i9) {
        o4.b.h(i9, this.f3056f);
        Object obj = this.d[(i9 * 2) + this.e];
        Objects.requireNonNull(obj);
        return obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.a
    public final boolean h() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3056f;
    }
}
