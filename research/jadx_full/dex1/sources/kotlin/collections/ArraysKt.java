package kotlin.collections;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"kotlin/collections/ArraysKt__ArraysJVMKt", "kotlin/collections/ArraysKt__ArraysKt", "kotlin/collections/ArraysKt___ArraysJvmKt", "kotlin/collections/ArraysKt___ArraysKt"}, k = 4, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX)
public final class ArraysKt extends ArraysKt___ArraysKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ArraysKt() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void A(int[] iArr, int i9) {
        ArraysKt___ArraysJvmKt.sort(iArr, 0, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void B(long[] jArr, int i9) {
        ArraysKt___ArraysJvmKt.sort(jArr, 0, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void C(float[] fArr, int i9) {
        ArraysKt___ArraysKt.sortDescending(fArr, 0, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void D(int[] iArr, int i9) {
        ArraysKt___ArraysKt.sortDescending(iArr, 0, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void E(long[] jArr, int i9) {
        ArraysKt___ArraysKt.sortDescending(jArr, 0, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void j(float[] fArr, float[] fArr2, int i9, int i10, int i11) {
        ArraysKt___ArraysJvmKt.copyInto(fArr, fArr2, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void k(int[] iArr, int[] iArr2, int i9, int i10, int i11) {
        ArraysKt___ArraysJvmKt.copyInto(iArr, iArr2, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void l(long[] jArr, long[] jArr2, int i9, int i10, int i11) {
        ArraysKt___ArraysJvmKt.copyInto(jArr, jArr2, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void m(Object[] objArr, Object[] objArr2, int i9, int i10, int i11) {
        ArraysKt___ArraysJvmKt.copyInto(objArr, objArr2, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void n(short[] sArr, short[] sArr2, int i9, int i10, int i11) {
        ArraysKt___ArraysJvmKt.copyInto(sArr, sArr2, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void o(byte[] bArr, byte[] bArr2, int i9, int i10) {
        ArraysKt___ArraysJvmKt.copyInto$default(bArr, bArr2, 0, i9, i10, 2, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void p(float[] fArr, float[] fArr2, int i9, int i10) {
        ArraysKt___ArraysJvmKt.copyInto$default(fArr, fArr2, i9, 0, 0, i10, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void q(int[] iArr, int[] iArr2, int i9, int i10, int i11) {
        ArraysKt___ArraysJvmKt.copyInto$default(iArr, iArr2, i9, 0, i10, i11, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void r(long[] jArr, long[] jArr2, int i9) {
        ArraysKt___ArraysJvmKt.copyInto$default(jArr, jArr2, i9, 0, 0, 12, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void s(Object[] objArr, Object[] objArr2, int i9, int i10, int i11) {
        ArraysKt___ArraysJvmKt.copyInto$default(objArr, objArr2, i9, 0, i10, i11, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ List t(Object[] objArr) {
        return ArraysKt___ArraysKt.drop(objArr, 2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void u(int[] iArr, int i9) {
        ArraysKt___ArraysJvmKt.fill$default(iArr, i9, 0, 0, 6, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void v(long[] jArr) {
        ArraysKt___ArraysJvmKt.fill$default(jArr, -9187201950435737472L, 0, 0, 6, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void w(Object[] objArr) {
        ArraysKt___ArraysJvmKt.fill$default(objArr, (Object) null, 0, 0, 6, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void x(Object[] objArr, StringBuilder sb, Function1 function1) {
        ArraysKt___ArraysKt.joinTo$default(objArr, sb, (CharSequence) null, "<", ">", 0, (CharSequence) null, function1, 50, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String y(int i9, byte[] bArr) {
        return ArraysKt___ArraysKt.joinToString$default(bArr, (CharSequence) null, (CharSequence) "[", (CharSequence) "]", i9, (CharSequence) null, (Function1) null, 49, (Object) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void z(float[] fArr, int i9) {
        ArraysKt___ArraysJvmKt.sort(fArr, 0, i9);
    }
}
