package p017b2;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import p003a2.C0004a;
import p099j1.C1929i;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: b2.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0881a {

    /* JADX INFO: renamed from: c */
    public static final String f645c;

    /* JADX INFO: renamed from: d */
    public static final Set f646d;

    /* JADX INFO: renamed from: e */
    public static final C0881a f647e;

    /* JADX INFO: renamed from: f */
    public static final C0881a f648f;

    /* JADX INFO: renamed from: a */
    public final String f649a;

    /* JADX INFO: renamed from: b */
    public final String f650b;

    static {
        String strM5866l = AbstractC3656k.m5866l("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f645c = strM5866l;
        String strM5866l2 = AbstractC3656k.m5866l("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        String strM5866l3 = AbstractC3656k.m5866l("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f646d = Collections.unmodifiableSet(new HashSet(Arrays.asList(new C0004a("proto"), new C0004a("json"))));
        f647e = new C0881a(strM5866l, null);
        f648f = new C0881a(strM5866l2, strM5866l3);
    }

    public C0881a(String str, String str2) {
        this.f649a = str;
        this.f650b = str2;
    }

    /* JADX INFO: renamed from: a */
    public static C0881a m1011a(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith("1$")) {
            C1929i.m3029k("Version marker missing from extras");
            return null;
        }
        String[] strArrSplit = str.substring(2).split(Pattern.quote("\\"), 2);
        if (strArrSplit.length != 2) {
            C1929i.m3029k("Extra is not a valid encoded LegacyFlgDestination");
            return null;
        }
        String str2 = strArrSplit[0];
        if (str2.isEmpty()) {
            C1929i.m3029k("Missing endpoint in CCTDestination extras");
            return null;
        }
        String str3 = strArrSplit[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new C0881a(str2, str3);
    }
}
