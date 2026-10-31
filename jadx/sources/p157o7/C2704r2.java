package p157o7;

import java.io.OutputStream;
import java.util.ArrayList;
import p030c5.C0990e;
import p170p7.C2996u;

/* JADX INFO: renamed from: o7.r2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2704r2 extends OutputStream {

    /* JADX INFO: renamed from: b */
    public final ArrayList f7741b = new ArrayList();

    /* JADX INFO: renamed from: c */
    public C2996u f7742c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2716t2 f7743d;

    public C2704r2(C2716t2 c2716t2) {
        this.f7743d = c2716t2;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) {
        C0990e c0990e = this.f7743d.f7786g;
        C2996u c2996u = this.f7742c;
        ArrayList arrayList = this.f7741b;
        if (c2996u == null) {
            c0990e.getClass();
            C2996u c2996uM1133o = C0990e.m1133o(i11);
            this.f7742c = c2996uM1133o;
            arrayList.add(c2996uM1133o);
        }
        while (i11 > 0) {
            int iMin = Math.min(i11, this.f7742c.f8434b);
            C2996u c2996u2 = this.f7742c;
            if (iMin == 0) {
                int iMax = Math.max(i11, c2996u2.f8435c * 2);
                c0990e.getClass();
                C2996u c2996uM1133o2 = C0990e.m1133o(iMax);
                this.f7742c = c2996uM1133o2;
                arrayList.add(c2996uM1133o2);
            } else {
                c2996u2.m4808a(bArr, i10, iMin);
                i10 += iMin;
                i11 -= iMin;
            }
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i10) {
        C2996u c2996u = this.f7742c;
        if (c2996u != null && c2996u.f8434b > 0) {
            c2996u.f8433a.m3621m0((byte) i10);
            c2996u.f8434b--;
            c2996u.f8435c++;
            return;
        }
        write(new byte[]{(byte) i10}, 0, 1);
    }
}
