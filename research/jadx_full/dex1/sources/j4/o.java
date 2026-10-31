package j4;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o extends g {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object[] f3061j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final o f3062k;
    public final transient Object[] e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient int f3063f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final transient Object[] f3064g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final transient int f3065h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final transient int f3066i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Object[] objArr = new Object[0];
        f3061j = objArr;
        f3062k = new o(objArr, objArr, 0, 0, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o(Object[] objArr, Object[] objArr2, int i9, int i10, int i11) {
        this.e = objArr;
        this.f3063f = i9;
        this.f3064g = objArr2;
        this.f3065h = i10;
        this.f3066i = i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.f3064g;
            if (objArr.length != 0) {
                int iS = com.bumptech.glide.c.s(obj.hashCode());
                while (true) {
                    int i9 = iS & this.f3065h;
                    Object obj2 = objArr[i9];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iS = i9 + 1;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.a
    public final int d(int i9, Object[] objArr) {
        Object[] objArr2 = this.e;
        int i10 = this.f3066i;
        System.arraycopy(objArr2, 0, objArr, i9, i10);
        return i9 + i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.a
    public final Object[] e() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.a
    public final int f() {
        return this.f3066i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.a
    public final int g() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.a
    public final boolean h() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.g, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f3063f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return a().j(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.g
    public final e k() {
        return e.i(this.f3066i, this.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f3066i;
    }
}
