package okhttp3;

import ai.onnxruntime.a;
import ai.onnxruntime.b;
import java.net.Proxy;
import java.net.ProxySelector;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.path.f;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.i;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RouteDatabase;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.platform.Platform$Companion;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000ø\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0005¢\u0006\u0002\u0010\u0005J?\u0010\u009e\u0001\u001a\u00020\u00002*\b\u0004\u0010\u009f\u0001\u001a#\u0012\u0017\u0012\u00150¡\u0001¢\u0006\u000f\b¢\u0001\u0012\n\b£\u0001\u0012\u0005\b\b(¤\u0001\u0012\u0005\u0012\u00030¥\u00010 \u0001H\u0087\bø\u0001\u0000¢\u0006\u0003\b¦\u0001J\u0010\u0010\u009e\u0001\u001a\u00020\u00002\u0007\u0010§\u0001\u001a\u00020]J?\u0010¨\u0001\u001a\u00020\u00002*\b\u0004\u0010\u009f\u0001\u001a#\u0012\u0017\u0012\u00150¡\u0001¢\u0006\u000f\b¢\u0001\u0012\n\b£\u0001\u0012\u0005\b\b(¤\u0001\u0012\u0005\u0012\u00030¥\u00010 \u0001H\u0087\bø\u0001\u0000¢\u0006\u0003\b©\u0001J\u0010\u0010¨\u0001\u001a\u00020\u00002\u0007\u0010§\u0001\u001a\u00020]J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0007\u0010ª\u0001\u001a\u00020\u0003J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0012\u0010\u0012\u001a\u00020\u00002\b\u0010«\u0001\u001a\u00030¬\u0001H\u0007J\u0019\u0010\u0012\u001a\u00020\u00002\u0007\u0010\u00ad\u0001\u001a\u00020`2\b\u0010®\u0001\u001a\u00030¯\u0001J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001fJ\u0012\u0010$\u001a\u00020\u00002\b\u0010«\u0001\u001a\u00030¬\u0001H\u0007J\u0019\u0010$\u001a\u00020\u00002\u0007\u0010\u00ad\u0001\u001a\u00020`2\b\u0010®\u0001\u001a\u00030¯\u0001J\u000e\u0010'\u001a\u00020\u00002\u0006\u0010'\u001a\u00020(J\u0014\u0010-\u001a\u00020\u00002\f\u0010-\u001a\b\u0012\u0004\u0012\u00020/0.J\u000e\u00104\u001a\u00020\u00002\u0006\u00104\u001a\u000205J\u000e\u0010:\u001a\u00020\u00002\u0006\u0010:\u001a\u00020;J\u000e\u0010@\u001a\u00020\u00002\u0006\u0010@\u001a\u00020AJ\u0011\u0010°\u0001\u001a\u00020\u00002\b\u0010°\u0001\u001a\u00030±\u0001J\u000e\u0010F\u001a\u00020\u00002\u0006\u0010F\u001a\u00020GJ\u000e\u0010L\u001a\u00020\u00002\u0006\u0010L\u001a\u00020MJ\u000f\u0010R\u001a\u00020\u00002\u0007\u0010²\u0001\u001a\u00020MJ\u000e\u0010U\u001a\u00020\u00002\u0006\u0010U\u001a\u00020VJ\f\u0010[\u001a\b\u0012\u0004\u0012\u00020]0\\J\u000f\u0010_\u001a\u00020\u00002\u0007\u0010³\u0001\u001a\u00020`J\f\u0010e\u001a\b\u0012\u0004\u0012\u00020]0\\J\u0012\u0010g\u001a\u00020\u00002\b\u0010«\u0001\u001a\u00030¬\u0001H\u0007J\u0019\u0010g\u001a\u00020\u00002\u0007\u0010´\u0001\u001a\u00020`2\b\u0010®\u0001\u001a\u00030¯\u0001J\u0014\u0010j\u001a\u00020\u00002\f\u0010j\u001a\b\u0012\u0004\u0012\u00020k0.J\u0010\u0010n\u001a\u00020\u00002\b\u0010n\u001a\u0004\u0018\u00010oJ\u000e\u0010t\u001a\u00020\u00002\u0006\u0010t\u001a\u00020\u0007J\u000e\u0010w\u001a\u00020\u00002\u0006\u0010w\u001a\u00020xJ\u0012\u0010}\u001a\u00020\u00002\b\u0010«\u0001\u001a\u00030¬\u0001H\u0007J\u0019\u0010}\u001a\u00020\u00002\u0007\u0010\u00ad\u0001\u001a\u00020`2\b\u0010®\u0001\u001a\u00030¯\u0001J\u0010\u0010\u0080\u0001\u001a\u00020\u00002\u0007\u0010\u0080\u0001\u001a\u00020MJ\u0011\u0010\u0089\u0001\u001a\u00020\u00002\b\u0010\u0089\u0001\u001a\u00030\u008a\u0001J\u0013\u0010µ\u0001\u001a\u00020\u00002\b\u0010µ\u0001\u001a\u00030\u0090\u0001H\u0007J\u001b\u0010µ\u0001\u001a\u00020\u00002\b\u0010µ\u0001\u001a\u00030\u0090\u00012\b\u0010¶\u0001\u001a\u00030\u0099\u0001J\u0013\u0010\u0095\u0001\u001a\u00020\u00002\b\u0010«\u0001\u001a\u00030¬\u0001H\u0007J\u001a\u0010\u0095\u0001\u001a\u00020\u00002\u0007\u0010\u00ad\u0001\u001a\u00020`2\b\u0010®\u0001\u001a\u00030¯\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010\u0017R\u001a\u0010'\u001a\u00020(X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R \u0010-\u001a\b\u0012\u0004\u0012\u00020/0.X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001a\u00104\u001a\u000205X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001a\u0010:\u001a\u00020;X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u001a\u0010@\u001a\u00020AX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\u001a\u0010F\u001a\u00020GX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u001a\u0010L\u001a\u00020MX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u001a\u0010R\u001a\u00020MX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010O\"\u0004\bT\u0010QR\u001a\u0010U\u001a\u00020VX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u001a\u0010[\u001a\b\u0012\u0004\u0012\u00020]0\\X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b^\u00101R\u001a\u0010_\u001a\u00020`X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\ba\u0010b\"\u0004\bc\u0010dR\u001a\u0010e\u001a\b\u0012\u0004\u0012\u00020]0\\X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bf\u00101R\u001a\u0010g\u001a\u00020\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bh\u0010\u0015\"\u0004\bi\u0010\u0017R \u0010j\u001a\b\u0012\u0004\u0012\u00020k0.X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bl\u00101\"\u0004\bm\u00103R\u001c\u0010n\u001a\u0004\u0018\u00010oX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bp\u0010q\"\u0004\br\u0010sR\u001a\u0010t\u001a\u00020\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bu\u0010\t\"\u0004\bv\u0010\u000bR\u001c\u0010w\u001a\u0004\u0018\u00010xX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\by\u0010z\"\u0004\b{\u0010|R\u001a\u0010}\u001a\u00020\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b~\u0010\u0015\"\u0004\b\u007f\u0010\u0017R\u001d\u0010\u0080\u0001\u001a\u00020MX\u0080\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0081\u0001\u0010O\"\u0005\b\u0082\u0001\u0010QR\"\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u0001X\u0080\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001\"\u0006\b\u0087\u0001\u0010\u0088\u0001R \u0010\u0089\u0001\u001a\u00030\u008a\u0001X\u0080\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001\"\u0006\b\u008d\u0001\u0010\u008e\u0001R\"\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u0090\u0001X\u0080\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0091\u0001\u0010\u0092\u0001\"\u0006\b\u0093\u0001\u0010\u0094\u0001R\u001d\u0010\u0095\u0001\u001a\u00020\u0013X\u0080\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0096\u0001\u0010\u0015\"\u0005\b\u0097\u0001\u0010\u0017R\"\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0099\u0001X\u0080\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u009a\u0001\u0010\u009b\u0001\"\u0006\b\u009c\u0001\u0010\u009d\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006·\u0001"}, d2 = {"Lokhttp3/OkHttpClient$Builder;", HttpUrl.FRAGMENT_ENCODE_SET, "okHttpClient", "Lokhttp3/OkHttpClient;", "(Lokhttp3/OkHttpClient;)V", "()V", "authenticator", "Lokhttp3/Authenticator;", "getAuthenticator$okhttp", "()Lokhttp3/Authenticator;", "setAuthenticator$okhttp", "(Lokhttp3/Authenticator;)V", "cache", "Lokhttp3/Cache;", "getCache$okhttp", "()Lokhttp3/Cache;", "setCache$okhttp", "(Lokhttp3/Cache;)V", "callTimeout", HttpUrl.FRAGMENT_ENCODE_SET, "getCallTimeout$okhttp", "()I", "setCallTimeout$okhttp", "(I)V", "certificateChainCleaner", "Lokhttp3/internal/tls/CertificateChainCleaner;", "getCertificateChainCleaner$okhttp", "()Lokhttp3/internal/tls/CertificateChainCleaner;", "setCertificateChainCleaner$okhttp", "(Lokhttp3/internal/tls/CertificateChainCleaner;)V", "certificatePinner", "Lokhttp3/CertificatePinner;", "getCertificatePinner$okhttp", "()Lokhttp3/CertificatePinner;", "setCertificatePinner$okhttp", "(Lokhttp3/CertificatePinner;)V", "connectTimeout", "getConnectTimeout$okhttp", "setConnectTimeout$okhttp", "connectionPool", "Lokhttp3/ConnectionPool;", "getConnectionPool$okhttp", "()Lokhttp3/ConnectionPool;", "setConnectionPool$okhttp", "(Lokhttp3/ConnectionPool;)V", "connectionSpecs", HttpUrl.FRAGMENT_ENCODE_SET, "Lokhttp3/ConnectionSpec;", "getConnectionSpecs$okhttp", "()Ljava/util/List;", "setConnectionSpecs$okhttp", "(Ljava/util/List;)V", "cookieJar", "Lokhttp3/CookieJar;", "getCookieJar$okhttp", "()Lokhttp3/CookieJar;", "setCookieJar$okhttp", "(Lokhttp3/CookieJar;)V", "dispatcher", "Lokhttp3/Dispatcher;", "getDispatcher$okhttp", "()Lokhttp3/Dispatcher;", "setDispatcher$okhttp", "(Lokhttp3/Dispatcher;)V", "dns", "Lokhttp3/Dns;", "getDns$okhttp", "()Lokhttp3/Dns;", "setDns$okhttp", "(Lokhttp3/Dns;)V", "eventListenerFactory", "Lokhttp3/EventListener$Factory;", "getEventListenerFactory$okhttp", "()Lokhttp3/EventListener$Factory;", "setEventListenerFactory$okhttp", "(Lokhttp3/EventListener$Factory;)V", "followRedirects", HttpUrl.FRAGMENT_ENCODE_SET, "getFollowRedirects$okhttp", "()Z", "setFollowRedirects$okhttp", "(Z)V", "followSslRedirects", "getFollowSslRedirects$okhttp", "setFollowSslRedirects$okhttp", "hostnameVerifier", "Ljavax/net/ssl/HostnameVerifier;", "getHostnameVerifier$okhttp", "()Ljavax/net/ssl/HostnameVerifier;", "setHostnameVerifier$okhttp", "(Ljavax/net/ssl/HostnameVerifier;)V", "interceptors", HttpUrl.FRAGMENT_ENCODE_SET, "Lokhttp3/Interceptor;", "getInterceptors$okhttp", "minWebSocketMessageToCompress", HttpUrl.FRAGMENT_ENCODE_SET, "getMinWebSocketMessageToCompress$okhttp", "()J", "setMinWebSocketMessageToCompress$okhttp", "(J)V", "networkInterceptors", "getNetworkInterceptors$okhttp", "pingInterval", "getPingInterval$okhttp", "setPingInterval$okhttp", "protocols", "Lokhttp3/Protocol;", "getProtocols$okhttp", "setProtocols$okhttp", "proxy", "Ljava/net/Proxy;", "getProxy$okhttp", "()Ljava/net/Proxy;", "setProxy$okhttp", "(Ljava/net/Proxy;)V", "proxyAuthenticator", "getProxyAuthenticator$okhttp", "setProxyAuthenticator$okhttp", "proxySelector", "Ljava/net/ProxySelector;", "getProxySelector$okhttp", "()Ljava/net/ProxySelector;", "setProxySelector$okhttp", "(Ljava/net/ProxySelector;)V", "readTimeout", "getReadTimeout$okhttp", "setReadTimeout$okhttp", "retryOnConnectionFailure", "getRetryOnConnectionFailure$okhttp", "setRetryOnConnectionFailure$okhttp", "routeDatabase", "Lokhttp3/internal/connection/RouteDatabase;", "getRouteDatabase$okhttp", "()Lokhttp3/internal/connection/RouteDatabase;", "setRouteDatabase$okhttp", "(Lokhttp3/internal/connection/RouteDatabase;)V", "socketFactory", "Ljavax/net/SocketFactory;", "getSocketFactory$okhttp", "()Ljavax/net/SocketFactory;", "setSocketFactory$okhttp", "(Ljavax/net/SocketFactory;)V", "sslSocketFactoryOrNull", "Ljavax/net/ssl/SSLSocketFactory;", "getSslSocketFactoryOrNull$okhttp", "()Ljavax/net/ssl/SSLSocketFactory;", "setSslSocketFactoryOrNull$okhttp", "(Ljavax/net/ssl/SSLSocketFactory;)V", "writeTimeout", "getWriteTimeout$okhttp", "setWriteTimeout$okhttp", "x509TrustManagerOrNull", "Ljavax/net/ssl/X509TrustManager;", "getX509TrustManagerOrNull$okhttp", "()Ljavax/net/ssl/X509TrustManager;", "setX509TrustManagerOrNull$okhttp", "(Ljavax/net/ssl/X509TrustManager;)V", "addInterceptor", "block", "Lkotlin/Function1;", "Lokhttp3/Interceptor$Chain;", "Lkotlin/ParameterName;", "name", "chain", "Lokhttp3/Response;", "-addInterceptor", "interceptor", "addNetworkInterceptor", "-addNetworkInterceptor", "build", "duration", "Ljava/time/Duration;", "timeout", "unit", "Ljava/util/concurrent/TimeUnit;", "eventListener", "Lokhttp3/EventListener;", "followProtocolRedirects", "bytes", "interval", "sslSocketFactory", "trustManager", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOkHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1079:1\n1#2:1080\n*E\n"})
public final class OkHttpClient$Builder {
    private Authenticator authenticator;
    private Cache cache;
    private int callTimeout;
    private CertificateChainCleaner certificateChainCleaner;
    private CertificatePinner certificatePinner;
    private int connectTimeout;
    private ConnectionPool connectionPool;
    private List<ConnectionSpec> connectionSpecs;
    private CookieJar cookieJar;
    private Dispatcher dispatcher;
    private Dns dns;
    private EventListener$Factory eventListenerFactory;
    private boolean followRedirects;
    private boolean followSslRedirects;
    private HostnameVerifier hostnameVerifier;
    private final List<Interceptor> interceptors;
    private long minWebSocketMessageToCompress;
    private final List<Interceptor> networkInterceptors;
    private int pingInterval;
    private List<? extends Protocol> protocols;
    private Proxy proxy;
    private Authenticator proxyAuthenticator;
    private ProxySelector proxySelector;
    private int readTimeout;
    private boolean retryOnConnectionFailure;
    private RouteDatabase routeDatabase;
    private SocketFactory socketFactory;
    private SSLSocketFactory sslSocketFactoryOrNull;
    private int writeTimeout;
    private X509TrustManager x509TrustManagerOrNull;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OkHttpClient$Builder(OkHttpClient okHttpClient) {
        this();
        okHttpClient.getClass();
        this.dispatcher = okHttpClient.dispatcher();
        this.connectionPool = okHttpClient.connectionPool();
        CollectionsKt.c(this.interceptors, okHttpClient.interceptors());
        CollectionsKt.c(this.networkInterceptors, okHttpClient.networkInterceptors());
        this.eventListenerFactory = okHttpClient.eventListenerFactory();
        this.retryOnConnectionFailure = okHttpClient.retryOnConnectionFailure();
        this.authenticator = okHttpClient.authenticator();
        this.followRedirects = okHttpClient.followRedirects();
        this.followSslRedirects = okHttpClient.followSslRedirects();
        this.cookieJar = okHttpClient.cookieJar();
        this.cache = okHttpClient.cache();
        this.dns = okHttpClient.dns();
        this.proxy = okHttpClient.proxy();
        this.proxySelector = okHttpClient.proxySelector();
        this.proxyAuthenticator = okHttpClient.proxyAuthenticator();
        this.socketFactory = okHttpClient.socketFactory();
        this.sslSocketFactoryOrNull = OkHttpClient.access$getSslSocketFactoryOrNull$p(okHttpClient);
        this.x509TrustManagerOrNull = okHttpClient.getX509TrustManager();
        this.connectionSpecs = okHttpClient.connectionSpecs();
        this.protocols = okHttpClient.protocols();
        this.hostnameVerifier = okHttpClient.hostnameVerifier();
        this.certificatePinner = okHttpClient.certificatePinner();
        this.certificateChainCleaner = okHttpClient.getCertificateChainCleaner();
        this.callTimeout = okHttpClient.callTimeoutMillis();
        this.connectTimeout = okHttpClient.connectTimeoutMillis();
        this.readTimeout = okHttpClient.readTimeoutMillis();
        this.writeTimeout = okHttpClient.writeTimeoutMillis();
        this.pingInterval = okHttpClient.pingIntervalMillis();
        this.minWebSocketMessageToCompress = okHttpClient.getMinWebSocketMessageToCompress();
        this.routeDatabase = okHttpClient.getRouteDatabase();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmName(name = "-addInterceptor")
    /* JADX INFO: renamed from: -addInterceptor, reason: not valid java name */
    public final OkHttpClient$Builder m291addInterceptor(Function1<? super Interceptor$Chain, Response> block) {
        block.getClass();
        return addInterceptor(new OkHttpClient$Builder$addInterceptor$2(block));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmName(name = "-addNetworkInterceptor")
    /* JADX INFO: renamed from: -addNetworkInterceptor, reason: not valid java name */
    public final OkHttpClient$Builder m292addNetworkInterceptor(Function1<? super Interceptor$Chain, Response> block) {
        block.getClass();
        return addNetworkInterceptor(new OkHttpClient$Builder$addNetworkInterceptor$2(block));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder addInterceptor(Interceptor interceptor) {
        interceptor.getClass();
        this.interceptors.add(interceptor);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder addNetworkInterceptor(Interceptor interceptor) {
        interceptor.getClass();
        this.networkInterceptors.add(interceptor);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder authenticator(Authenticator authenticator) {
        authenticator.getClass();
        this.authenticator = authenticator;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient build() {
        return new OkHttpClient(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder cache(Cache cache) {
        this.cache = cache;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder callTimeout(Duration duration) {
        duration.getClass();
        callTimeout(f.c(duration), TimeUnit.MILLISECONDS);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder certificatePinner(CertificatePinner certificatePinner) {
        certificatePinner.getClass();
        if (!Intrinsics.areEqual(certificatePinner, this.certificatePinner)) {
            this.routeDatabase = null;
        }
        this.certificatePinner = certificatePinner;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder connectTimeout(Duration duration) {
        duration.getClass();
        connectTimeout(f.c(duration), TimeUnit.MILLISECONDS);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder connectionPool(ConnectionPool connectionPool) {
        connectionPool.getClass();
        this.connectionPool = connectionPool;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder connectionSpecs(List<ConnectionSpec> connectionSpecs) {
        connectionSpecs.getClass();
        if (!Intrinsics.areEqual(connectionSpecs, this.connectionSpecs)) {
            this.routeDatabase = null;
        }
        this.connectionSpecs = Util.toImmutableList(connectionSpecs);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder cookieJar(CookieJar cookieJar) {
        cookieJar.getClass();
        this.cookieJar = cookieJar;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder dispatcher(Dispatcher dispatcher) {
        dispatcher.getClass();
        this.dispatcher = dispatcher;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder dns(Dns dns) {
        dns.getClass();
        if (!Intrinsics.areEqual(dns, this.dns)) {
            this.routeDatabase = null;
        }
        this.dns = dns;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder eventListener(EventListener eventListener) {
        eventListener.getClass();
        this.eventListenerFactory = Util.asFactory(eventListener);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder eventListenerFactory(EventListener$Factory eventListenerFactory) {
        eventListenerFactory.getClass();
        this.eventListenerFactory = eventListenerFactory;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder followRedirects(boolean followRedirects) {
        this.followRedirects = followRedirects;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder followSslRedirects(boolean followProtocolRedirects) {
        this.followSslRedirects = followProtocolRedirects;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getAuthenticator$okhttp, reason: from getter */
    public final Authenticator getAuthenticator() {
        return this.authenticator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getCache$okhttp, reason: from getter */
    public final Cache getCache() {
        return this.cache;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getCallTimeout$okhttp, reason: from getter */
    public final int getCallTimeout() {
        return this.callTimeout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getCertificateChainCleaner$okhttp, reason: from getter */
    public final CertificateChainCleaner getCertificateChainCleaner() {
        return this.certificateChainCleaner;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getCertificatePinner$okhttp, reason: from getter */
    public final CertificatePinner getCertificatePinner() {
        return this.certificatePinner;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getConnectTimeout$okhttp, reason: from getter */
    public final int getConnectTimeout() {
        return this.connectTimeout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getConnectionPool$okhttp, reason: from getter */
    public final ConnectionPool getConnectionPool() {
        return this.connectionPool;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<ConnectionSpec> getConnectionSpecs$okhttp() {
        return this.connectionSpecs;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getCookieJar$okhttp, reason: from getter */
    public final CookieJar getCookieJar() {
        return this.cookieJar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getDispatcher$okhttp, reason: from getter */
    public final Dispatcher getDispatcher() {
        return this.dispatcher;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getDns$okhttp, reason: from getter */
    public final Dns getDns() {
        return this.dns;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getEventListenerFactory$okhttp, reason: from getter */
    public final EventListener$Factory getEventListenerFactory() {
        return this.eventListenerFactory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getFollowRedirects$okhttp, reason: from getter */
    public final boolean getFollowRedirects() {
        return this.followRedirects;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getFollowSslRedirects$okhttp, reason: from getter */
    public final boolean getFollowSslRedirects() {
        return this.followSslRedirects;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getHostnameVerifier$okhttp, reason: from getter */
    public final HostnameVerifier getHostnameVerifier() {
        return this.hostnameVerifier;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<Interceptor> getInterceptors$okhttp() {
        return this.interceptors;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getMinWebSocketMessageToCompress$okhttp, reason: from getter */
    public final long getMinWebSocketMessageToCompress() {
        return this.minWebSocketMessageToCompress;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<Interceptor> getNetworkInterceptors$okhttp() {
        return this.networkInterceptors;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getPingInterval$okhttp, reason: from getter */
    public final int getPingInterval() {
        return this.pingInterval;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: java.util.List<? extends okhttp3.Protocol>, java.util.List<okhttp3.Protocol> */
    public final List<Protocol> getProtocols$okhttp() {
        return this.protocols;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getProxy$okhttp, reason: from getter */
    public final Proxy getProxy() {
        return this.proxy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getProxyAuthenticator$okhttp, reason: from getter */
    public final Authenticator getProxyAuthenticator() {
        return this.proxyAuthenticator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getProxySelector$okhttp, reason: from getter */
    public final ProxySelector getProxySelector() {
        return this.proxySelector;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getReadTimeout$okhttp, reason: from getter */
    public final int getReadTimeout() {
        return this.readTimeout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getRetryOnConnectionFailure$okhttp, reason: from getter */
    public final boolean getRetryOnConnectionFailure() {
        return this.retryOnConnectionFailure;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getRouteDatabase$okhttp, reason: from getter */
    public final RouteDatabase getRouteDatabase() {
        return this.routeDatabase;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getSocketFactory$okhttp, reason: from getter */
    public final SocketFactory getSocketFactory() {
        return this.socketFactory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getSslSocketFactoryOrNull$okhttp, reason: from getter */
    public final SSLSocketFactory getSslSocketFactoryOrNull() {
        return this.sslSocketFactoryOrNull;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getWriteTimeout$okhttp, reason: from getter */
    public final int getWriteTimeout() {
        return this.writeTimeout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getX509TrustManagerOrNull$okhttp, reason: from getter */
    public final X509TrustManager getX509TrustManagerOrNull() {
        return this.x509TrustManagerOrNull;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder hostnameVerifier(HostnameVerifier hostnameVerifier) {
        hostnameVerifier.getClass();
        if (!Intrinsics.areEqual(hostnameVerifier, this.hostnameVerifier)) {
            this.routeDatabase = null;
        }
        this.hostnameVerifier = hostnameVerifier;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<Interceptor> interceptors() {
        return this.interceptors;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder minWebSocketMessageToCompress(long bytes) {
        if (bytes >= 0) {
            this.minWebSocketMessageToCompress = bytes;
            return this;
        }
        i.d(a.h(bytes, "minWebSocketMessageToCompress must be positive: "));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<Interceptor> networkInterceptors() {
        return this.networkInterceptors;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder pingInterval(Duration duration) {
        duration.getClass();
        pingInterval(f.c(duration), TimeUnit.MILLISECONDS);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder protocols(List<? extends Protocol> protocols) {
        protocols.getClass();
        List mutableList = CollectionsKt.toMutableList(protocols);
        Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        if (!mutableList.contains(protocol) && !mutableList.contains(Protocol.HTTP_1_1)) {
            i.e(mutableList, "protocols must contain h2_prior_knowledge or http/1.1: ");
            return null;
        }
        if (mutableList.contains(protocol) && mutableList.size() > 1) {
            i.e(mutableList, "protocols containing h2_prior_knowledge cannot use other protocols: ");
            return null;
        }
        if (mutableList.contains(Protocol.HTTP_1_0)) {
            i.e(mutableList, "protocols must not contain http/1.0: ");
            return null;
        }
        if (mutableList.contains(null)) {
            j1.i.k("protocols must not contain null");
            return null;
        }
        mutableList.remove(Protocol.SPDY_3);
        if (!Intrinsics.areEqual(mutableList, this.protocols)) {
            this.routeDatabase = null;
        }
        List<? extends Protocol> listUnmodifiableList = Collections.unmodifiableList(mutableList);
        listUnmodifiableList.getClass();
        this.protocols = listUnmodifiableList;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder proxy(Proxy proxy) {
        if (!Intrinsics.areEqual(proxy, this.proxy)) {
            this.routeDatabase = null;
        }
        this.proxy = proxy;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder proxyAuthenticator(Authenticator proxyAuthenticator) {
        proxyAuthenticator.getClass();
        if (!Intrinsics.areEqual(proxyAuthenticator, this.proxyAuthenticator)) {
            this.routeDatabase = null;
        }
        this.proxyAuthenticator = proxyAuthenticator;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder proxySelector(ProxySelector proxySelector) {
        proxySelector.getClass();
        if (!Intrinsics.areEqual(proxySelector, this.proxySelector)) {
            this.routeDatabase = null;
        }
        this.proxySelector = proxySelector;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder readTimeout(Duration duration) {
        duration.getClass();
        readTimeout(f.c(duration), TimeUnit.MILLISECONDS);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder retryOnConnectionFailure(boolean retryOnConnectionFailure) {
        this.retryOnConnectionFailure = retryOnConnectionFailure;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setAuthenticator$okhttp(Authenticator authenticator) {
        authenticator.getClass();
        this.authenticator = authenticator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setCache$okhttp(Cache cache) {
        this.cache = cache;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setCallTimeout$okhttp(int i) {
        this.callTimeout = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setCertificateChainCleaner$okhttp(CertificateChainCleaner certificateChainCleaner) {
        this.certificateChainCleaner = certificateChainCleaner;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setCertificatePinner$okhttp(CertificatePinner certificatePinner) {
        certificatePinner.getClass();
        this.certificatePinner = certificatePinner;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setConnectTimeout$okhttp(int i) {
        this.connectTimeout = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setConnectionPool$okhttp(ConnectionPool connectionPool) {
        connectionPool.getClass();
        this.connectionPool = connectionPool;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setConnectionSpecs$okhttp(List<ConnectionSpec> list) {
        list.getClass();
        this.connectionSpecs = list;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setCookieJar$okhttp(CookieJar cookieJar) {
        cookieJar.getClass();
        this.cookieJar = cookieJar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setDispatcher$okhttp(Dispatcher dispatcher) {
        dispatcher.getClass();
        this.dispatcher = dispatcher;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setDns$okhttp(Dns dns) {
        dns.getClass();
        this.dns = dns;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setEventListenerFactory$okhttp(EventListener$Factory eventListener$Factory) {
        eventListener$Factory.getClass();
        this.eventListenerFactory = eventListener$Factory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setFollowRedirects$okhttp(boolean z) {
        this.followRedirects = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setFollowSslRedirects$okhttp(boolean z) {
        this.followSslRedirects = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setHostnameVerifier$okhttp(HostnameVerifier hostnameVerifier) {
        hostnameVerifier.getClass();
        this.hostnameVerifier = hostnameVerifier;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setMinWebSocketMessageToCompress$okhttp(long j) {
        this.minWebSocketMessageToCompress = j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setPingInterval$okhttp(int i) {
        this.pingInterval = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setProtocols$okhttp(List<? extends Protocol> list) {
        list.getClass();
        this.protocols = list;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setProxy$okhttp(Proxy proxy) {
        this.proxy = proxy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setProxyAuthenticator$okhttp(Authenticator authenticator) {
        authenticator.getClass();
        this.proxyAuthenticator = authenticator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setProxySelector$okhttp(ProxySelector proxySelector) {
        this.proxySelector = proxySelector;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setReadTimeout$okhttp(int i) {
        this.readTimeout = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setRetryOnConnectionFailure$okhttp(boolean z) {
        this.retryOnConnectionFailure = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setRouteDatabase$okhttp(RouteDatabase routeDatabase) {
        this.routeDatabase = routeDatabase;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSocketFactory$okhttp(SocketFactory socketFactory) {
        socketFactory.getClass();
        this.socketFactory = socketFactory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSslSocketFactoryOrNull$okhttp(SSLSocketFactory sSLSocketFactory) {
        this.sslSocketFactoryOrNull = sSLSocketFactory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setWriteTimeout$okhttp(int i) {
        this.writeTimeout = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setX509TrustManagerOrNull$okhttp(X509TrustManager x509TrustManager) {
        this.x509TrustManagerOrNull = x509TrustManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder socketFactory(SocketFactory socketFactory) {
        socketFactory.getClass();
        if (socketFactory instanceof SSLSocketFactory) {
            j1.i.k("socketFactory instanceof SSLSocketFactory");
            return null;
        }
        if (!Intrinsics.areEqual(socketFactory, this.socketFactory)) {
            this.routeDatabase = null;
        }
        this.socketFactory = socketFactory;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated(level = DeprecationLevel.ERROR, message = "Use the sslSocketFactory overload that accepts a X509TrustManager.")
    public final OkHttpClient$Builder sslSocketFactory(SSLSocketFactory sslSocketFactory) {
        sslSocketFactory.getClass();
        if (!Intrinsics.areEqual(sslSocketFactory, this.sslSocketFactoryOrNull)) {
            this.routeDatabase = null;
        }
        this.sslSocketFactoryOrNull = sslSocketFactory;
        Platform$Companion platform$Companion = Platform.Companion;
        X509TrustManager x509TrustManagerTrustManager = platform$Companion.get().trustManager(sslSocketFactory);
        if (x509TrustManagerTrustManager == null) {
            StringBuilder sb = new StringBuilder("Unable to extract the trust manager on ");
            sb.append(platform$Companion.get());
            b.p(sb, ", sslSocketFactory is ", sslSocketFactory.getClass());
            return null;
        }
        this.x509TrustManagerOrNull = x509TrustManagerTrustManager;
        Platform platform = platform$Companion.get();
        X509TrustManager x509TrustManager = this.x509TrustManagerOrNull;
        x509TrustManager.getClass();
        this.certificateChainCleaner = platform.buildCertificateChainCleaner(x509TrustManager);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final OkHttpClient$Builder writeTimeout(Duration duration) {
        duration.getClass();
        writeTimeout(f.c(duration), TimeUnit.MILLISECONDS);
        return this;
    }

    public final OkHttpClient$Builder callTimeout(long timeout, TimeUnit unit) {
        unit.getClass();
        this.callTimeout = Util.checkDuration("timeout", timeout, unit);
        return this;
    }

    public final OkHttpClient$Builder connectTimeout(long timeout, TimeUnit unit) {
        unit.getClass();
        this.connectTimeout = Util.checkDuration("timeout", timeout, unit);
        return this;
    }

    public final OkHttpClient$Builder pingInterval(long interval, TimeUnit unit) {
        unit.getClass();
        this.pingInterval = Util.checkDuration("interval", interval, unit);
        return this;
    }

    public final OkHttpClient$Builder readTimeout(long timeout, TimeUnit unit) {
        unit.getClass();
        this.readTimeout = Util.checkDuration("timeout", timeout, unit);
        return this;
    }

    public final OkHttpClient$Builder writeTimeout(long timeout, TimeUnit unit) {
        unit.getClass();
        this.writeTimeout = Util.checkDuration("timeout", timeout, unit);
        return this;
    }

    public final OkHttpClient$Builder sslSocketFactory(SSLSocketFactory sslSocketFactory, X509TrustManager trustManager) {
        sslSocketFactory.getClass();
        trustManager.getClass();
        if (!Intrinsics.areEqual(sslSocketFactory, this.sslSocketFactoryOrNull) || !Intrinsics.areEqual(trustManager, this.x509TrustManagerOrNull)) {
            this.routeDatabase = null;
        }
        this.sslSocketFactoryOrNull = sslSocketFactory;
        this.certificateChainCleaner = CertificateChainCleaner.Companion.get(trustManager);
        this.x509TrustManagerOrNull = trustManager;
        return this;
    }

    public OkHttpClient$Builder() {
        this.dispatcher = new Dispatcher();
        this.connectionPool = new ConnectionPool();
        this.interceptors = new ArrayList();
        this.networkInterceptors = new ArrayList();
        this.eventListenerFactory = Util.asFactory(EventListener.NONE);
        this.retryOnConnectionFailure = true;
        Authenticator authenticator = Authenticator.NONE;
        this.authenticator = authenticator;
        this.followRedirects = true;
        this.followSslRedirects = true;
        this.cookieJar = CookieJar.NO_COOKIES;
        this.dns = Dns.SYSTEM;
        this.proxyAuthenticator = authenticator;
        SocketFactory socketFactory = SocketFactory.getDefault();
        socketFactory.getClass();
        this.socketFactory = socketFactory;
        OkHttpClient$Companion okHttpClient$Companion = OkHttpClient.Companion;
        this.connectionSpecs = okHttpClient$Companion.getDEFAULT_CONNECTION_SPECS$okhttp();
        this.protocols = okHttpClient$Companion.getDEFAULT_PROTOCOLS$okhttp();
        this.hostnameVerifier = OkHostnameVerifier.INSTANCE;
        this.certificatePinner = CertificatePinner.DEFAULT;
        this.connectTimeout = 10000;
        this.readTimeout = 10000;
        this.writeTimeout = 10000;
        this.minWebSocketMessageToCompress = 1024L;
    }
}
