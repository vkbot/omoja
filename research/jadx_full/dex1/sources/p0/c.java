package p0;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4551a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4552b;
    public int c;
    public final Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(int i9, int i10, int i11) {
        this.f4551a = i11;
        switch (i11) {
            case 2:
                this.d = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i10, i9);
                this.f4552b = i9;
                this.c = i10;
                break;
            default:
                this.d = null;
                this.f4552b = i9;
                int i12 = i10 & 7;
                this.c = i12 == 0 ? 8 : i12;
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte a(int i9, int i10) {
        return ((byte[][]) this.d)[i10][i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void b() {
        d dVar = (d) this.d;
        if (dVar != null) {
            dVar.b(this.c, this.f4552b);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void c(int i9, int i10, int i11) {
        ((byte[][]) this.d)[i10][i9] = (byte) i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f4551a) {
            case 2:
                int i9 = this.f4552b;
                int i10 = this.c;
                StringBuilder sb = new StringBuilder((i9 * 2 * i10) + 2);
                for (int i11 = 0; i11 < i10; i11++) {
                    byte[] bArr = ((byte[][]) this.d)[i11];
                    for (int i12 = 0; i12 < i9; i12++) {
                        byte b9 = bArr[i12];
                        if (b9 == 0) {
                            sb.append(" 0");
                        } else if (b9 != 1) {
                            sb.append("  ");
                        } else {
                            sb.append(" 1");
                        }
                    }
                    sb.append('\n');
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public c() {
        this.f4551a = 1;
        this.d = new c[256];
        this.f4552b = 0;
        this.c = 0;
    }

    public c(d dVar, int i9) {
        this.f4551a = 0;
        this.d = dVar;
        this.f4552b = Math.max(1, i9);
        b();
    }
}
