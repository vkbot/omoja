package p186r7;

import ai.onnxruntime.AbstractC0074a;
import java.util.Locale;

/* JADX INFO: renamed from: r7.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3115g {

    /* JADX INFO: renamed from: a */
    public static final String[] f8917a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* JADX INFO: renamed from: b */
    public static final String[] f8918b = new String[64];

    /* JADX INFO: renamed from: c */
    public static final String[] f8919c = new String[256];

    static {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            String[] strArr = f8919c;
            if (i11 >= strArr.length) {
                break;
            }
            strArr[i11] = String.format("%8s", Integer.toBinaryString(i11)).replace(' ', '0');
            i11++;
        }
        String[] strArr2 = f8918b;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i12 = iArr[0];
        strArr2[i12 | 8] = AbstractC0074a.m165p(new StringBuilder(), strArr2[i12], "|PADDED");
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i13 = 0; i13 < 3; i13++) {
            int i14 = iArr2[i13];
            int i15 = iArr[0];
            String[] strArr3 = f8918b;
            int i16 = i15 | i14;
            strArr3[i16] = strArr3[i15] + '|' + strArr3[i14];
            StringBuilder sb = new StringBuilder();
            sb.append(strArr3[i15]);
            sb.append('|');
            strArr3[i16 | 8] = AbstractC0074a.m165p(sb, strArr3[i14], "|PADDED");
        }
        while (true) {
            String[] strArr4 = f8918b;
            if (i10 >= strArr4.length) {
                return;
            }
            if (strArr4[i10] == null) {
                strArr4[i10] = f8919c[i10];
            }
            i10++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0066  */
    /* JADX INFO: renamed from: a */
    public static String m4957a(boolean z9, int i10, int i11, byte b10, byte b11) {
        String strReplace;
        String str = b10 < 10 ? f8917a[b10] : String.format("0x%02x", Byte.valueOf(b10));
        if (b11 == 0) {
            strReplace = "";
        } else {
            String[] strArr = f8919c;
            if (b10 == 2 || b10 == 3) {
                strReplace = strArr[b11];
            } else if (b10 == 4 || b10 == 6) {
                strReplace = b11 == 1 ? "ACK" : strArr[b11];
            } else if (b10 == 7 || b10 == 8) {
                strReplace = strArr[b11];
            } else {
                String str2 = b11 < 64 ? f8918b[b11] : strArr[b11];
                if (b10 != 5 || (b11 & 4) == 0) {
                    strReplace = (b10 != 0 || (b11 & 32) == 0) ? str2 : str2.replace("PRIORITY", "COMPRESSED");
                } else {
                    strReplace = str2.replace("HEADERS", "PUSH_PROMISE");
                }
            }
        }
        return String.format(Locale.US, "%s 0x%08x %5d %-13s %s", z9 ? "<<" : ">>", Integer.valueOf(i10), Integer.valueOf(i11), str, strReplace);
    }
}
