package j4;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends e {
    public final transient int d;
    public final transient int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ e f3048f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(e eVar, int i9, int i10) {
        this.f3048f = eVar;
        this.d = i9;
        this.e = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.a
    public final Object[] e() {
        return this.f3048f.e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.a
    public final int f() {
        return this.f3048f.g() + this.d + this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.a
    public final int g() {
        return this.f3048f.g() + this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.List
    public final Object get(int i9) {
        o4.b.h(i9, this.e);
        return this.f3048f.get(i9 + this.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.a
    public final boolean h() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.e, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return j(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.e
    public final e k(int i9, int i10) {
        o4.b.k(i9, i10, this.e);
        int i11 = this.d;
        return this.f3048f.k(i9 + i11, i10 + i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.e, java.util.List
    public final ListIterator listIterator() {
        return j(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.e, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i9, int i10) {
        return k(i9, i10);
    }

    @Override // j4.e, java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator(int i9) {
        return j(i9);
    }
}
