package kotlin.experimental;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0004\n\u0002\u0010\n\n\u0000\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\f\u001a\u0015\u0010\u0003\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\f\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\f\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\f\u001a\u0015\u0010\u0003\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\f\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\f\u001a\r\u0010\u0005\u001a\u00020\u0006*\u00020\u0006H\u0087\b¨\u0006\u0007"}, m3159d2 = {"and", "", "other", "or", "xor", "inv", "", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class BitwiseOperationsKt {
    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte and(byte b10, byte b11) {
        return (byte) (b10 & b11);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte inv(byte b10) {
        return (byte) (~b10);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    /* JADX INFO: renamed from: or */
    private static final byte m3263or(byte b10, byte b11) {
        return (byte) (b10 | b11);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte xor(byte b10, byte b11) {
        return (byte) (b10 ^ b11);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short and(short s5, short s9) {
        return (short) (s5 & s9);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short inv(short s5) {
        return (short) (~s5);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    /* JADX INFO: renamed from: or */
    private static final short m3264or(short s5, short s9) {
        return (short) (s5 | s9);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short xor(short s5, short s9) {
        return (short) (s5 ^ s9);
    }
}
