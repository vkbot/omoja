package q0;

import com.example.navistart.MockGPS.MockGpsService;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4780a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f4781b;
    public String c;
    public int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(String str, String str2, int i9) {
        String strF = MockGpsService.f(str);
        this.f4781b = strF;
        String str3 = null;
        if (str2 != null) {
            String strTrim = str2.trim();
            if (!strTrim.isEmpty()) {
                str3 = strTrim;
            }
        }
        this.c = str3;
        this.d = MockGpsService.c(i9, strF) ? i9 : MockGpsService.a(strF);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f4780a) {
            case 1:
                StringBuilder sb = new StringBuilder();
                sb.append(this.f4781b);
                sb.append("://");
                int i9 = -1;
                if (this.c.indexOf(58) != -1) {
                    sb.append('[');
                    sb.append(this.c);
                    sb.append(']');
                } else {
                    sb.append(this.c);
                }
                int i10 = this.d;
                if (i10 == -1) {
                    String str = this.f4781b;
                    if (str.equals("http")) {
                        i10 = 80;
                    } else {
                        i10 = str.equals("https") ? 443 : -1;
                    }
                }
                String str2 = this.f4781b;
                if (str2.equals("http")) {
                    i9 = 80;
                } else if (str2.equals("https")) {
                    i9 = 443;
                }
                if (i10 != i9) {
                    sb.append(':');
                    sb.append(i10);
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ g() {
    }
}
