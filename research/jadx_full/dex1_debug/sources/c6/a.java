package c6;

import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f501b;
    public int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i9, int i10, int i11) {
        this.f500a = i11;
        this.f501b = i9;
        this.c = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o a() {
        return new o(this.f501b, this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f500a) {
            case 0:
                return "<" + this.f501b + ' ' + this.c + '>';
            default:
                return super.toString();
        }
    }

    public /* synthetic */ a() {
        this.f500a = 2;
    }
}
