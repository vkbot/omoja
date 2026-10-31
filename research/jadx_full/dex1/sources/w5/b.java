package w5;

import j1.i;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements Closeable, Flushable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Pattern f5922i = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String[] f5923j = new String[128];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringWriter f5924b;
    public int[] c;
    public int d;
    public final String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5925f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f5926g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f5927h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        for (int i9 = 0; i9 <= 31; i9++) {
            f5923j[i9] = String.format("\\u%04x", Integer.valueOf(i9));
        }
        String[] strArr = f5923j;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(StringWriter stringWriter) {
        int[] iArr = new int[32];
        this.c = iArr;
        this.d = 0;
        if (iArr.length == 0) {
            this.c = Arrays.copyOf(iArr, 0);
        }
        int[] iArr2 = this.c;
        int i9 = this.d;
        this.d = i9 + 1;
        iArr2[i9] = 6;
        this.e = ":";
        this.f5927h = true;
        this.f5924b = stringWriter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int S() {
        int i9 = this.d;
        if (i9 != 0) {
            return this.c[i9 - 1];
        }
        i.l("JsonWriter is closed.");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:16:0x002d  */
    public final void V(String str) {
        String str2;
        StringWriter stringWriter = this.f5924b;
        stringWriter.write(34);
        int length = str.length();
        int i9 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt < 128) {
                str2 = f5923j[cCharAt];
                if (str2 != null) {
                    if (i9 < i10) {
                        stringWriter.write(str, i9, i10 - i9);
                    }
                    stringWriter.write(str2);
                    i9 = i10 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i9 < i10) {
                    stringWriter.write(str, i9, i10 - i9);
                }
                stringWriter.write(str2);
                i9 = i10 + 1;
            }
        }
        if (i9 < length) {
            stringWriter.write(str, i9, length - i9);
        }
        stringWriter.write(34);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        int iS = S();
        if (iS == 1) {
            this.c[this.d - 1] = 2;
            return;
        }
        StringWriter stringWriter = this.f5924b;
        if (iS == 2) {
            stringWriter.append(',');
            return;
        }
        if (iS == 4) {
            stringWriter.append((CharSequence) this.e);
            this.c[this.d - 1] = 5;
            return;
        }
        if (iS != 6) {
            if (iS != 7) {
                i.l("Nesting problem.");
                return;
            } else if (!this.f5925f) {
                i.l("JSON must have only one top-level value.");
                return;
            }
        }
        this.c[this.d - 1] = 7;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(int i9, int i10, char c) {
        int iS = S();
        if (iS != i10 && iS != i9) {
            i.l("Nesting problem.");
        } else if (this.f5926g != null) {
            ai.onnxruntime.b.u(this.f5926g, "Dangling name: ");
        } else {
            this.d--;
            this.f5924b.write(c);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c0() {
        if (this.f5926g != null) {
            int iS = S();
            if (iS == 5) {
                this.f5924b.write(44);
            } else if (iS != 3) {
                i.l("Nesting problem.");
                return;
            }
            this.c[this.d - 1] = 4;
            V(this.f5926g);
            this.f5926g = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f5924b.close();
        int i9 = this.d;
        if (i9 > 1 || (i9 == 1 && this.c[i9 - 1] != 7)) {
            n0.b.A("Incomplete document");
        } else {
            this.d = 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Flushable
    public final void flush() throws IOException {
        if (this.d != 0) {
            this.f5924b.flush();
        } else {
            i.l("JsonWriter is closed.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y() {
        if (this.f5926g != null) {
            if (!this.f5927h) {
                this.f5926g = null;
                return;
            }
            c0();
        }
        b();
        this.f5924b.write("null");
    }
}
