package e0;

import android.net.TrafficStats;
import okhttp3.Interceptor;
import okhttp3.Interceptor$Chain;
import okhttp3.Response;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b0 implements Interceptor {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Response intercept(Interceptor$Chain interceptor$Chain) {
        TrafficStats.setThreadStatsTag(61453);
        try {
            return interceptor$Chain.proceed(interceptor$Chain.request().newBuilder().header(m.h(new byte[]{-48, 8, -29, 94, -125, 115, -83, -73, -21, 15}, new byte[]{-123, 123, -122, 44, -82, 50, -54, -46}), m.h(new byte[]{44, 77, 53, 109, 75, -119, -127, -100, 21, 79, 36, 111, 48, -41, -64, -64}, new byte[]{102, 14, 84, 31, 31, -26, -18, -16})).build());
        } finally {
            TrafficStats.clearThreadStatsTag();
        }
    }
}
