package kotlin.io.encoding;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0081\b\u001a%\u0010\b\u001a\u00020\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0081\b\u001a5\u0010\n\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0081\b\u001a%\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0081\b¨\u0006\u000e"}, d2 = {"platformCharsToBytes", "", "Lkotlin/io/encoding/Base64;", "source", "", "startIndex", "", "endIndex", "platformEncodeToString", "", "platformEncodeIntoByteArray", "destination", "destinationOffset", "platformEncodeToByteArray", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Base64JVMKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.8")
    @InlineOnly
    private static final byte[] platformCharsToBytes(Base64 base64, CharSequence charSequence, int i9, int i10) {
        base64.getClass();
        charSequence.getClass();
        if (!(charSequence instanceof String)) {
            return base64.charsToBytesImpl$kotlin_stdlib(charSequence, i9, i10);
        }
        String str = (String) charSequence;
        base64.checkSourceBounds$kotlin_stdlib(str.length(), i9, i10);
        byte[] bytes = str.substring(i9, i10).getBytes(Charsets.ISO_8859_1);
        bytes.getClass();
        return bytes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.8")
    @InlineOnly
    private static final int platformEncodeIntoByteArray(Base64 base64, byte[] bArr, byte[] bArr2, int i9, int i10, int i11) {
        base64.getClass();
        bArr.getClass();
        bArr2.getClass();
        return base64.encodeIntoByteArrayImpl$kotlin_stdlib(bArr, bArr2, i9, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.8")
    @InlineOnly
    private static final byte[] platformEncodeToByteArray(Base64 base64, byte[] bArr, int i9, int i10) {
        base64.getClass();
        bArr.getClass();
        return base64.encodeToByteArrayImpl$kotlin_stdlib(bArr, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.8")
    @InlineOnly
    private static final String platformEncodeToString(Base64 base64, byte[] bArr, int i9, int i10) {
        base64.getClass();
        bArr.getClass();
        return new String(base64.encodeToByteArrayImpl$kotlin_stdlib(bArr, i9, i10), Charsets.ISO_8859_1);
    }
}
