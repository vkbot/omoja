package p230w5;

import ai.onnxruntime.C0075b;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.regex.Pattern;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: renamed from: w5.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3527b implements Closeable, Flushable {

    /* JADX INFO: renamed from: i */
    public static final Pattern f10472i = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");

    /* JADX INFO: renamed from: j */
    public static final String[] f10473j = new String[128];

    /* JADX INFO: renamed from: b */
    public final StringWriter f10474b;

    /* JADX INFO: renamed from: c */
    public int[] f10475c;

    /* JADX INFO: renamed from: d */
    public int f10476d;

    /* JADX INFO: renamed from: e */
    public final String f10477e;

    /* JADX INFO: renamed from: f */
    public boolean f10478f;

    /* JADX INFO: renamed from: g */
    public String f10479g;

    /* JADX INFO: renamed from: h */
    public final boolean f10480h;

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            f10473j[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        String[] strArr = f10473j;
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

    public C3527b(StringWriter stringWriter) {
        int[] iArr = new int[32];
        this.f10475c = iArr;
        this.f10476d = 0;
        if (iArr.length == 0) {
            this.f10475c = Arrays.copyOf(iArr, 0);
        }
        int[] iArr2 = this.f10475c;
        int i10 = this.f10476d;
        this.f10476d = i10 + 1;
        iArr2[i10] = 6;
        this.f10477e = ":";
        this.f10480h = true;
        this.f10474b = stringWriter;
    }

    /* JADX INFO: renamed from: S */
    public final int m5622S() {
        int i10 = this.f10476d;
        if (i10 != 0) {
            return this.f10475c[i10 - 1];
        }
        C1929i.m3030l("JsonWriter is closed.");
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002d  */
    /* JADX INFO: renamed from: V */
    public final void m5623V(String str) {
        String str2;
        StringWriter stringWriter = this.f10474b;
        stringWriter.write(34);
        int length = str.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt < 128) {
                str2 = f10473j[cCharAt];
                if (str2 != null) {
                    if (i10 < i11) {
                        stringWriter.write(str, i10, i11 - i10);
                    }
                    stringWriter.write(str2);
                    i10 = i11 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i10 < i11) {
                    stringWriter.write(str, i10, i11 - i10);
                }
                stringWriter.write(str2);
                i10 = i11 + 1;
            }
        }
        if (i10 < length) {
            stringWriter.write(str, i10, length - i10);
        }
        stringWriter.write(34);
    }

    /* JADX INFO: renamed from: b */
    public final void m5624b() {
        int iM5622S = m5622S();
        if (iM5622S == 1) {
            this.f10475c[this.f10476d - 1] = 2;
            return;
        }
        StringWriter stringWriter = this.f10474b;
        if (iM5622S == 2) {
            stringWriter.append(',');
            return;
        }
        if (iM5622S == 4) {
            stringWriter.append((CharSequence) this.f10477e);
            this.f10475c[this.f10476d - 1] = 5;
            return;
        }
        if (iM5622S != 6) {
            if (iM5622S != 7) {
                C1929i.m3030l("Nesting problem.");
                return;
            } else if (!this.f10478f) {
                C1929i.m3030l("JSON must have only one top-level value.");
                return;
            }
        }
        this.f10475c[this.f10476d - 1] = 7;
    }

    /* JADX INFO: renamed from: c */
    public final void m5625c(int i10, int i11, char c) {
        int iM5622S = m5622S();
        if (iM5622S != i11 && iM5622S != i10) {
            C1929i.m3030l("Nesting problem.");
        } else if (this.f10479g != null) {
            C0075b.m196u(this.f10479g, "Dangling name: ");
        } else {
            this.f10476d--;
            this.f10474b.write(c);
        }
    }

    /* JADX INFO: renamed from: c0 */
    public final void m5626c0() {
        if (this.f10479g != null) {
            int iM5622S = m5622S();
            if (iM5622S == 5) {
                this.f10474b.write(44);
            } else if (iM5622S != 3) {
                C1929i.m3030l("Nesting problem.");
                return;
            }
            this.f10475c[this.f10476d - 1] = 4;
            m5623V(this.f10479g);
            this.f10479g = null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f10474b.close();
        int i10 = this.f10476d;
        if (i10 > 1 || (i10 == 1 && this.f10475c[i10 - 1] != 7)) {
            C2467b.m3820A("Incomplete document");
        } else {
            this.f10476d = 0;
        }
    }

    @Override // java.io.Flushable
    public final void flush() throws IOException {
        if (this.f10476d != 0) {
            this.f10474b.flush();
        } else {
            C1929i.m3030l("JsonWriter is closed.");
        }
    }

    /* JADX INFO: renamed from: y */
    public final void m5627y() {
        if (this.f10479g != null) {
            if (!this.f10480h) {
                this.f10479g = null;
                return;
            }
            m5626c0();
        }
        m5624b();
        this.f10474b.write("null");
    }
}
