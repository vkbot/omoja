package p4;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String[] f4585g = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final SimpleDateFormat f4586h = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4588b;
    public final String c;
    public final Date d;
    public final long e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f4589f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(String str, String str2, String str3, Date date, long j9, long j10) {
        this.f4587a = str;
        this.f4588b = str2;
        this.c = str3;
        this.d = date;
        this.e = j9;
        this.f4589f = j10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(HashMap map) throws a {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < 5; i9++) {
            String str = f4585g[i9];
            if (!map.containsKey(str)) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            throw new a(String.format("The following keys are missing from the experiment info map: %s", arrayList));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HashMap a() {
        HashMap map = new HashMap();
        map.put("experimentId", this.f4587a);
        map.put("variantId", this.f4588b);
        map.put("triggerEvent", this.c);
        map.put("experimentStartTime", f4586h.format(this.d));
        map.put("triggerTimeoutMillis", Long.toString(this.e));
        map.put("timeToLiveMillis", Long.toString(this.f4589f));
        return map;
    }
}
