package p148n7;

import androidx.core.os.EnvironmentCompat;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.logging.Logger;
import kotlin.UByte;
import p102j4.C1975n;

/* JADX INFO: renamed from: n7.b1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2496b1 {

    /* JADX INFO: renamed from: d */
    public static final Logger f6885d = Logger.getLogger(C2496b1.class.getName());

    /* JADX INFO: renamed from: e */
    public static C2496b1 f6886e;

    /* JADX INFO: renamed from: a */
    public String f6887a = EnvironmentCompat.MEDIA_UNKNOWN;

    /* JADX INFO: renamed from: b */
    public final LinkedHashSet f6888b = new LinkedHashSet();

    /* JADX INFO: renamed from: c */
    public C1975n f6889c = C1975n.f5374h;

    /* JADX INFO: renamed from: a */
    public final synchronized void m3883a() {
        try {
            HashMap map = new HashMap();
            String str = EnvironmentCompat.MEDIA_UNKNOWN;
            byte b10 = UByte.MIN_VALUE;
            for (AbstractC2493a1 abstractC2493a1 : this.f6888b) {
                abstractC2493a1.getClass();
                if (((AbstractC2493a1) map.get("dns")) == null) {
                    map.put("dns", abstractC2493a1);
                }
                if (b10 < 5) {
                    str = "dns";
                    b10 = 5;
                }
            }
            this.f6889c = C1975n.m3073a(map);
            this.f6887a = str;
        } catch (Throwable th) {
            throw th;
        }
    }
}
