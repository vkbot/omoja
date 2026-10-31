package kotlin;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.internal.InlineOnly;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\b¢\u0006\u0002\u0010\u0003\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0004H\u0087\b¢\u0006\u0002\u0010\u0005\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0006H\u0087\b¢\u0006\u0002\u0010\u0007\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\bH\u0087\b¢\u0006\u0002\u0010\t\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\nH\u0087\b¢\u0006\u0002\u0010\u000b\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\fH\u0087\b¢\u0006\u0002\u0010\r¨\u0006\u000e"}, m3159d2 = {"toULong", "Lkotlin/ULong;", "", "(B)J", "", "(S)J", "", "(I)J", "", "(J)J", "", "(F)J", "", "(D)J", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ULongKt {
    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long toULong(byte b10) {
        return ULong.m6262constructorimpl(b10);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long toULong(short s5) {
        return ULong.m6262constructorimpl(s5);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long toULong(int i10) {
        return ULong.m6262constructorimpl(i10);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long toULong(long j10) {
        return ULong.m6262constructorimpl(j10);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long toULong(float f8) {
        return UnsignedKt.doubleToULong(f8);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long toULong(double d) {
        return UnsignedKt.doubleToULong(d);
    }
}
