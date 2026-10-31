package e0;

import java.util.concurrent.TimeUnit;
import okhttp3.ConnectionPool;
import okhttp3.OkHttpClient;
import okhttp3.OkHttpClient$Builder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OkHttpClient f1816a = new OkHttpClient$Builder().addInterceptor(new b0()).connectionPool(new ConnectionPool(10, 5, TimeUnit.MINUTES)).retryOnConnectionFailure(true).build();
}
