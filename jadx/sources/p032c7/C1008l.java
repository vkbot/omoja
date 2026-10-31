package p032c7;

import java.net.ProtocolException;
import p099j1.C1929i;
import p146n5.C2478b;
import p179q7.EnumC3085l;

/* JADX INFO: renamed from: c7.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1008l {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1007a;

    /* JADX INFO: renamed from: b */
    public int f1008b;

    /* JADX INFO: renamed from: c */
    public Object f1009c;

    /* JADX INFO: renamed from: d */
    public Object f1010d;

    public C1008l() {
        this.f1007a = 2;
        Object[] objArr = new Object[5];
        this.f1009c = objArr;
        this.f1010d = objArr;
    }

    /* JADX INFO: renamed from: b */
    public static C1008l m1213b(String str) throws ProtocolException {
        int i10;
        String strSubstring;
        boolean zStartsWith = str.startsWith("HTTP/1.");
        EnumC3085l enumC3085l = EnumC3085l.HTTP_1_0;
        if (zStartsWith) {
            i10 = 9;
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt != 0) {
                if (iCharAt != 1) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                enumC3085l = EnumC3085l.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            i10 = 4;
        }
        int i11 = i10 + 3;
        if (str.length() < i11) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
        try {
            int i12 = Integer.parseInt(str.substring(i10, i11));
            if (str.length() <= i11) {
                strSubstring = "";
            } else {
                if (str.charAt(i11) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                strSubstring = str.substring(i10 + 4);
            }
            return new C1008l(enumC3085l, i12, strSubstring);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
    }

    /* JADX INFO: renamed from: a */
    public C2478b m1214a() {
        if (!"".isEmpty()) {
            C1929i.m3030l("Missing required properties:".concat(""));
            return null;
        }
        return new C2478b(this.f1008b, (String) this.f1009c, ((Long) this.f1010d).longValue());
    }

    public String toString() {
        switch (this.f1007a) {
            case 3:
                String str = (String) this.f1010d;
                StringBuilder sb = new StringBuilder();
                sb.append(((EnumC3085l) this.f1009c) == EnumC3085l.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
                sb.append(' ');
                sb.append(this.f1008b);
                sb.append(' ');
                sb.append(str);
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public C1008l(EnumC3085l enumC3085l, int i10, String str) {
        this.f1007a = 3;
        this.f1009c = enumC3085l;
        this.f1008b = i10;
        this.f1010d = str;
    }
}
