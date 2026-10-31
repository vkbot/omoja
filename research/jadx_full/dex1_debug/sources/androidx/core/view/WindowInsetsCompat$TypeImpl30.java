package androidx.core.view;

import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
public final class WindowInsetsCompat$TypeImpl30 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private WindowInsetsCompat$TypeImpl30() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int toPlatformType(int i9) {
        int iA;
        int i10 = 0;
        for (int i11 = 1; i11 <= 256; i11 <<= 1) {
            if ((i9 & i11) != 0) {
                if (i11 == 1) {
                    iA = m.a();
                } else if (i11 == 2) {
                    iA = m.r();
                } else if (i11 == 4) {
                    iA = m.w();
                } else if (i11 == 8) {
                    iA = androidx.core.content.pm.b.c();
                } else if (i11 == 16) {
                    iA = m.y();
                } else if (i11 == 32) {
                    iA = m.A();
                } else if (i11 == 64) {
                    iA = m.C();
                } else if (i11 == 128) {
                    iA = m.D();
                }
                i10 |= iA;
            }
        }
        return i10;
    }
}
