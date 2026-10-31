package p047e0;

import java.util.concurrent.TimeUnit;
import okhttp3.ConnectionPool;
import okhttp3.OkHttpClient;

/* JADX INFO: renamed from: e0.c0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1338c0 {

    /* JADX INFO: renamed from: a */
    public final OkHttpClient f3192a = new OkHttpClient.Builder().addInterceptor(new C1333b0()).connectionPool(new ConnectionPool(10, 5, TimeUnit.MINUTES)).retryOnConnectionFailure(true).build();
}
