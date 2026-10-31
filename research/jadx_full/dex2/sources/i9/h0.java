package i9;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class h0 extends f1 {
    public final boolean l;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h0(String str, i0 i0Var) {
        super(str, i0Var, 1);
        this.l = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h0) {
            g9.e eVar = (g9.e) obj;
            if (Intrinsics.areEqual(this.a, eVar.a())) {
                h0 h0Var = (h0) obj;
                if (h0Var.l && Arrays.equals((g9.e[]) this.j.getValue(), (g9.e[]) h0Var.j.getValue())) {
                    int iD = eVar.d();
                    int i = this.c;
                    if (i == iD) {
                        for (int i2 = 0; i2 < i; i2++) {
                            if (Intrinsics.areEqual(f(i2).a(), eVar.f(i2).a()) && Intrinsics.areEqual(f(i2).getKind(), eVar.f(i2).getKind())) {
                            }
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.f1
    public final int hashCode() {
        return super.hashCode() * 31;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.f1, g9.e
    public final boolean isInline() {
        return this.l;
    }
}
