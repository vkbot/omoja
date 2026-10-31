package p173q0;

import com.example.navistart.MockGPS.MockGpsService;

/* JADX INFO: renamed from: q0.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3043g {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8557a = 1;

    /* JADX INFO: renamed from: b */
    public String f8558b;

    /* JADX INFO: renamed from: c */
    public String f8559c;

    /* JADX INFO: renamed from: d */
    public int f8560d;

    public C3043g(String str, String str2, int i10) {
        String strM1453f = MockGpsService.m1453f(str);
        this.f8558b = strM1453f;
        String str3 = null;
        if (str2 != null) {
            String strTrim = str2.trim();
            if (!strTrim.isEmpty()) {
                str3 = strTrim;
            }
        }
        this.f8559c = str3;
        this.f8560d = MockGpsService.m1450c(i10, strM1453f) ? i10 : MockGpsService.m1448a(strM1453f);
    }

    public String toString() {
        switch (this.f8557a) {
            case 1:
                StringBuilder sb = new StringBuilder();
                sb.append(this.f8558b);
                sb.append("://");
                int i10 = -1;
                if (this.f8559c.indexOf(58) != -1) {
                    sb.append('[');
                    sb.append(this.f8559c);
                    sb.append(']');
                } else {
                    sb.append(this.f8559c);
                }
                int i11 = this.f8560d;
                if (i11 == -1) {
                    String str = this.f8558b;
                    if (str.equals("http")) {
                        i11 = 80;
                    } else {
                        i11 = str.equals("https") ? 443 : -1;
                    }
                }
                String str2 = this.f8558b;
                if (str2.equals("http")) {
                    i10 = 80;
                } else if (str2.equals("https")) {
                    i10 = 443;
                }
                if (i11 != i10) {
                    sb.append(':');
                    sb.append(i11);
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ C3043g() {
    }
}
