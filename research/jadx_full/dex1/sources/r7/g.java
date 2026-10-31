package r7;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f5020a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f5021b = new String[64];
    public static final String[] c = new String[256];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        int i9 = 0;
        int i10 = 0;
        while (true) {
            String[] strArr = c;
            if (i10 >= strArr.length) {
                break;
            }
            strArr[i10] = String.format("%8s", Integer.toBinaryString(i10)).replace(' ', '0');
            i10++;
        }
        String[] strArr2 = f5021b;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i11 = iArr[0];
        strArr2[i11 | 8] = ai.onnxruntime.a.p(new StringBuilder(), strArr2[i11], "|PADDED");
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i12 = 0; i12 < 3; i12++) {
            int i13 = iArr2[i12];
            int i14 = iArr[0];
            String[] strArr3 = f5021b;
            int i15 = i14 | i13;
            strArr3[i15] = strArr3[i14] + '|' + strArr3[i13];
            StringBuilder sb = new StringBuilder();
            sb.append(strArr3[i14]);
            sb.append('|');
            strArr3[i15 | 8] = ai.onnxruntime.a.p(sb, strArr3[i13], "|PADDED");
        }
        while (true) {
            String[] strArr4 = f5021b;
            if (i9 >= strArr4.length) {
                return;
            }
            if (strArr4[i9] == null) {
                strArr4[i9] = c[i9];
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:38:0x0066  */
    public static String a(boolean z8, int i9, int i10, byte b9, byte b10) {
        String strReplace;
        String str = b9 < 10 ? f5020a[b9] : String.format("0x%02x", Byte.valueOf(b9));
        if (b10 == 0) {
            strReplace = "";
        } else {
            String[] strArr = c;
            if (b9 == 2 || b9 == 3) {
                strReplace = strArr[b10];
            } else if (b9 == 4 || b9 == 6) {
                strReplace = b10 == 1 ? "ACK" : strArr[b10];
            } else if (b9 == 7 || b9 == 8) {
                strReplace = strArr[b10];
            } else {
                String str2 = b10 < 64 ? f5021b[b10] : strArr[b10];
                if (b9 != 5 || (b10 & 4) == 0) {
                    strReplace = (b9 != 0 || (b10 & 32) == 0) ? str2 : str2.replace("PRIORITY", "COMPRESSED");
                } else {
                    strReplace = str2.replace("HEADERS", "PUSH_PROMISE");
                }
            }
        }
        return String.format(Locale.US, "%s 0x%08x %5d %-13s %s", z8 ? "<<" : ">>", Integer.valueOf(i9), Integer.valueOf(i10), str, strReplace);
    }
}
