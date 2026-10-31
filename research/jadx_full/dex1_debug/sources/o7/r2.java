package o7;

import java.io.OutputStream;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r2 extends OutputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f4418b = new ArrayList();
    public p7.u c;
    public final /* synthetic */ t2 d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public r2(t2 t2Var) {
        this.d = t2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i9, int i10) {
        c5.e eVar = this.d.f4449g;
        p7.u uVar = this.c;
        ArrayList arrayList = this.f4418b;
        if (uVar == null) {
            eVar.getClass();
            p7.u uVarO = c5.e.o(i10);
            this.c = uVarO;
            arrayList.add(uVarO);
        }
        while (i10 > 0) {
            int iMin = Math.min(i10, this.c.f4696b);
            p7.u uVar2 = this.c;
            if (iMin == 0) {
                int iMax = Math.max(i10, uVar2.c * 2);
                eVar.getClass();
                p7.u uVarO2 = c5.e.o(iMax);
                this.c = uVarO2;
                arrayList.add(uVarO2);
            } else {
                uVar2.a(bArr, i9, iMin);
                i9 += iMin;
                i10 -= iMin;
            }
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i9) {
        p7.u uVar = this.c;
        if (uVar != null && uVar.f4696b > 0) {
            uVar.f4695a.m0((byte) i9);
            uVar.f4696b--;
            uVar.c++;
            return;
        }
        write(new byte[]{(byte) i9}, 0, 1);
    }
}
