package p167p4;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: renamed from: p4.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2970b {

    /* JADX INFO: renamed from: g */
    public static final String[] f8258g = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};

    /* JADX INFO: renamed from: h */
    public static final SimpleDateFormat f8259h = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);

    /* JADX INFO: renamed from: a */
    public final String f8260a;

    /* JADX INFO: renamed from: b */
    public final String f8261b;

    /* JADX INFO: renamed from: c */
    public final String f8262c;

    /* JADX INFO: renamed from: d */
    public final Date f8263d;

    /* JADX INFO: renamed from: e */
    public final long f8264e;

    /* JADX INFO: renamed from: f */
    public final long f8265f;

    public C2970b(String str, String str2, String str3, Date date, long j10, long j11) {
        this.f8260a = str;
        this.f8261b = str2;
        this.f8262c = str3;
        this.f8263d = date;
        this.f8264e = j10;
        this.f8265f = j11;
    }

    /* JADX INFO: renamed from: b */
    public static void m4756b(HashMap map) throws C2969a {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < 5; i10++) {
            String str = f8258g[i10];
            if (!map.containsKey(str)) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            throw new C2969a(String.format("The following keys are missing from the experiment info map: %s", arrayList));
        }
    }

    /* JADX INFO: renamed from: a */
    public final HashMap m4757a() {
        HashMap map = new HashMap();
        map.put("experimentId", this.f8260a);
        map.put("variantId", this.f8261b);
        map.put("triggerEvent", this.f8262c);
        map.put("experimentStartTime", f8259h.format(this.f8263d));
        map.put("triggerTimeoutMillis", Long.toString(this.f8264e));
        map.put("timeToLiveMillis", Long.toString(this.f8265f));
        return map;
    }
}
