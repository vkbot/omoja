package n7;

import androidx.core.os.EnvironmentCompat;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.logging.Logger;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b1 {
    public static final Logger d = Logger.getLogger(b1.class.getName());
    public static b1 e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f3890a = EnvironmentCompat.MEDIA_UNKNOWN;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashSet f3891b = new LinkedHashSet();
    public j4.n c = j4.n.f3057h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void a() {
        try {
            HashMap map = new HashMap();
            String str = EnvironmentCompat.MEDIA_UNKNOWN;
            byte b9 = UByte.MIN_VALUE;
            for (a1 a1Var : this.f3891b) {
                a1Var.getClass();
                if (((a1) map.get("dns")) == null) {
                    map.put("dns", a1Var);
                }
                if (b9 < 5) {
                    str = "dns";
                    b9 = 5;
                }
            }
            this.c = j4.n.a(map);
            this.f3890a = str;
        } catch (Throwable th) {
            throw th;
        }
    }
}
