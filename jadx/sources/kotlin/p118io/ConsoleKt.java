package kotlin.p118io;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.InputStream;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000<\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\u0005\n\u0002\u0010\n\n\u0002\u0010\f\n\u0002\u0010\u000b\n\u0002\u0010\u0007\n\u0002\u0010\u0006\n\u0002\u0010\u0019\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u0013\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0004H\u0087\b\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0005H\u0087\b\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0007H\u0087\b\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\bH\u0087\b\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\tH\u0087\b\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\nH\u0087\b\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000bH\u0087\b\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\fH\u0087\b\u001a\u0013\u0010\r\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0004H\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0005H\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0007H\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\bH\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\tH\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\nH\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000bH\u0087\b\u001a\u0011\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\fH\u0087\b\u001a\t\u0010\r\u001a\u00020\u0001H\u0087\b\u001a\b\u0010\u000e\u001a\u00020\u000fH\u0007\u001a\n\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0007\u001a\b\u0010\u0011\u001a\u0004\u0018\u00010\u000f¨\u0006\u0012"}, m3159d2 = {"print", "", "message", "", "", "", "", "", "", "", "", "", "", "println", "readln", "", "readlnOrNull", "readLine", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@JvmName(name = "ConsoleKt")
public final class ConsoleKt {
    @InlineOnly
    private static final void print(byte b10) {
        System.out.print(Byte.valueOf(b10));
    }

    @InlineOnly
    private static final void println(byte b10) {
        System.out.println(Byte.valueOf(b10));
    }

    public static final String readLine() {
        LineReader lineReader = LineReader.INSTANCE;
        InputStream inputStream = System.in;
        inputStream.getClass();
        Charset charsetDefaultCharset = Charset.defaultCharset();
        charsetDefaultCharset.getClass();
        return lineReader.readLine(inputStream, charsetDefaultCharset);
    }

    @SinceKotlin(version = "1.6")
    public static final String readln() {
        String str = readlnOrNull();
        if (str != null) {
            return str;
        }
        throw new ReadAfterEOFException("EOF has already been reached");
    }

    @SinceKotlin(version = "1.6")
    public static final String readlnOrNull() {
        return readLine();
    }

    @InlineOnly
    private static final void print(int i10) {
        System.out.print(i10);
    }

    @InlineOnly
    private static final void println(int i10) {
        System.out.println(i10);
    }

    @InlineOnly
    private static final void print(long j10) {
        System.out.print(j10);
    }

    @InlineOnly
    private static final void println(long j10) {
        System.out.println(j10);
    }

    @InlineOnly
    private static final void print(Object obj) {
        System.out.print(obj);
    }

    @InlineOnly
    private static final void println(Object obj) {
        System.out.println(obj);
    }

    @InlineOnly
    private static final void print(short s5) {
        System.out.print(Short.valueOf(s5));
    }

    @InlineOnly
    private static final void println(short s5) {
        System.out.println(Short.valueOf(s5));
    }

    @InlineOnly
    private static final void print(char c) {
        System.out.print(c);
    }

    @InlineOnly
    private static final void println(char c) {
        System.out.println(c);
    }

    @InlineOnly
    private static final void print(boolean z9) {
        System.out.print(z9);
    }

    @InlineOnly
    private static final void println(boolean z9) {
        System.out.println(z9);
    }

    @InlineOnly
    private static final void print(float f8) {
        System.out.print(f8);
    }

    @InlineOnly
    private static final void println(float f8) {
        System.out.println(f8);
    }

    @InlineOnly
    private static final void print(double d) {
        System.out.print(d);
    }

    @InlineOnly
    private static final void println(double d) {
        System.out.println(d);
    }

    @InlineOnly
    private static final void print(char[] cArr) {
        cArr.getClass();
        System.out.print(cArr);
    }

    @InlineOnly
    private static final void println(char[] cArr) {
        cArr.getClass();
        System.out.println(cArr);
    }

    @InlineOnly
    private static final void println() {
        System.out.println();
    }
}
