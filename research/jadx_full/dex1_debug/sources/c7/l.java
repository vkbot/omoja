package c7;

import java.net.ProtocolException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f540b;
    public Object c;
    public Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l() {
        this.f539a = 2;
        Object[] objArr = new Object[5];
        this.c = objArr;
        this.d = objArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static l b(String str) throws ProtocolException {
        int i9;
        String strSubstring;
        boolean zStartsWith = str.startsWith("HTTP/1.");
        q7.l lVar = q7.l.HTTP_1_0;
        if (zStartsWith) {
            i9 = 9;
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt != 0) {
                if (iCharAt != 1) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                lVar = q7.l.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            i9 = 4;
        }
        int i10 = i9 + 3;
        if (str.length() < i10) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
        try {
            int i11 = Integer.parseInt(str.substring(i9, i10));
            if (str.length() <= i10) {
                strSubstring = "";
            } else {
                if (str.charAt(i10) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                strSubstring = str.substring(i9 + 4);
            }
            return new l(lVar, i11, strSubstring);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n5.b a() {
        if (!"".isEmpty()) {
            j1.i.l("Missing required properties:".concat(""));
            return null;
        }
        return new n5.b(this.f540b, (String) this.c, ((Long) this.d).longValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f539a) {
            case 3:
                String str = (String) this.d;
                StringBuilder sb = new StringBuilder();
                sb.append(((q7.l) this.c) == q7.l.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
                sb.append(' ');
                sb.append(this.f540b);
                sb.append(' ');
                sb.append(str);
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public l(q7.l lVar, int i9, String str) {
        this.f539a = 3;
        this.c = lVar;
        this.f540b = i9;
        this.d = str;
    }

    public /* synthetic */ l(int i9) {
        this.f539a = i9;
    }
}
