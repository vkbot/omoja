package p164p0;

import java.lang.reflect.Array;

/* JADX INFO: renamed from: p0.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2950c {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8198a;

    /* JADX INFO: renamed from: b */
    public final int f8199b;

    /* JADX INFO: renamed from: c */
    public int f8200c;

    /* JADX INFO: renamed from: d */
    public final Object f8201d;

    public C2950c(int i10, int i11, int i12) {
        this.f8198a = i12;
        switch (i12) {
            case 2:
                this.f8201d = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i11, i10);
                this.f8199b = i10;
                this.f8200c = i11;
                break;
            default:
                this.f8201d = null;
                this.f8199b = i10;
                int i13 = i11 & 7;
                this.f8200c = i13 == 0 ? 8 : i13;
                break;
        }
    }

    /* JADX INFO: renamed from: a */
    public byte m4724a(int i10, int i11) {
        return ((byte[][]) this.f8201d)[i11][i10];
    }

    /* JADX INFO: renamed from: b */
    public void m4725b() {
        InterfaceC2951d interfaceC2951d = (InterfaceC2951d) this.f8201d;
        if (interfaceC2951d != null) {
            interfaceC2951d.mo818b(this.f8200c, this.f8199b);
        }
    }

    /* JADX INFO: renamed from: c */
    public void m4726c(int i10, int i11, int i12) {
        ((byte[][]) this.f8201d)[i11][i10] = (byte) i12;
    }

    public String toString() {
        switch (this.f8198a) {
            case 2:
                int i10 = this.f8199b;
                int i11 = this.f8200c;
                StringBuilder sb = new StringBuilder((i10 * 2 * i11) + 2);
                for (int i12 = 0; i12 < i11; i12++) {
                    byte[] bArr = ((byte[][]) this.f8201d)[i12];
                    for (int i13 = 0; i13 < i10; i13++) {
                        byte b10 = bArr[i13];
                        if (b10 == 0) {
                            sb.append(" 0");
                        } else if (b10 != 1) {
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

    public C2950c() {
        this.f8198a = 1;
        this.f8201d = new C2950c[256];
        this.f8199b = 0;
        this.f8200c = 0;
    }

    public C2950c(InterfaceC2951d interfaceC2951d, int i10) {
        this.f8198a = 0;
        this.f8201d = interfaceC2951d;
        this.f8199b = Math.max(1, i10);
        m4725b();
    }
}
