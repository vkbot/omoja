package p047e0;

import android.net.TrafficStats;
import okhttp3.Interceptor;
import okhttp3.Response;

/* JADX INFO: renamed from: e0.b0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1333b0 implements Interceptor {
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        TrafficStats.setThreadStatsTag(61453);
        try {
            return chain.proceed(chain.request().newBuilder().header(AbstractC1387m.m2421h(new byte[]{-48, 8, -29, 94, -125, 115, -83, -73, -21, 15}, new byte[]{-123, 123, -122, 44, -82, 50, -54, -46}), AbstractC1387m.m2421h(new byte[]{44, 77, 53, 109, 75, -119, -127, -100, 21, 79, 36, 111, 48, -41, -64, -64}, new byte[]{102, 14, 84, 31, 31, -26, -18, -16})).build());
        } finally {
            TrafficStats.clearThreadStatsTag();
        }
    }
}
