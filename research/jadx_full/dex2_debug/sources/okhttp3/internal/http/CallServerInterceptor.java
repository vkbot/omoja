package okhttp3.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import l9.b;
import l9.z;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Interceptor$Chain;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Response$Builder;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.http2.ConnectionShutdownException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lokhttp3/internal/http/CallServerInterceptor;", "Lokhttp3/Interceptor;", "forWebSocket", HttpUrl.FRAGMENT_ENCODE_SET, "(Z)V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "shouldIgnoreAndWaitForRealResponse", "code", HttpUrl.FRAGMENT_ENCODE_SET, "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CallServerInterceptor implements Interceptor {
    private final boolean forWebSocket;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CallServerInterceptor(boolean z) {
        this.forWebSocket = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean shouldIgnoreAndWaitForRealResponse(int code) {
        if (code == 100) {
            return true;
        }
        return 102 <= code && code < 200;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:41:0x00b2 A[Catch: IOException -> 0x00b7, TryCatch #1 {IOException -> 0x00b7, blocks: (B:39:0x00a9, B:41:0x00b2, B:44:0x00ba, B:46:0x00e4, B:48:0x00ed, B:49:0x00f0, B:50:0x0114, B:54:0x011f, B:56:0x013e, B:58:0x014c, B:65:0x0162, B:67:0x0168, B:71:0x0175, B:73:0x018a, B:74:0x0192, B:75:0x019c, B:60:0x0157, B:55:0x012e), top: B:85:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00e4 A[Catch: IOException -> 0x00b7, TryCatch #1 {IOException -> 0x00b7, blocks: (B:39:0x00a9, B:41:0x00b2, B:44:0x00ba, B:46:0x00e4, B:48:0x00ed, B:49:0x00f0, B:50:0x0114, B:54:0x011f, B:56:0x013e, B:58:0x014c, B:65:0x0162, B:67:0x0168, B:71:0x0175, B:73:0x018a, B:74:0x0192, B:75:0x019c, B:60:0x0157, B:55:0x012e), top: B:85:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00ed A[Catch: IOException -> 0x00b7, TryCatch #1 {IOException -> 0x00b7, blocks: (B:39:0x00a9, B:41:0x00b2, B:44:0x00ba, B:46:0x00e4, B:48:0x00ed, B:49:0x00f0, B:50:0x0114, B:54:0x011f, B:56:0x013e, B:58:0x014c, B:65:0x0162, B:67:0x0168, B:71:0x0175, B:73:0x018a, B:74:0x0192, B:75:0x019c, B:60:0x0157, B:55:0x012e), top: B:85:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x012e A[Catch: IOException -> 0x00b7, TryCatch #1 {IOException -> 0x00b7, blocks: (B:39:0x00a9, B:41:0x00b2, B:44:0x00ba, B:46:0x00e4, B:48:0x00ed, B:49:0x00f0, B:50:0x0114, B:54:0x011f, B:56:0x013e, B:58:0x014c, B:65:0x0162, B:67:0x0168, B:71:0x0175, B:73:0x018a, B:74:0x0192, B:75:0x019c, B:60:0x0157, B:55:0x012e), top: B:85:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0157 A[Catch: IOException -> 0x00b7, TryCatch #1 {IOException -> 0x00b7, blocks: (B:39:0x00a9, B:41:0x00b2, B:44:0x00ba, B:46:0x00e4, B:48:0x00ed, B:49:0x00f0, B:50:0x0114, B:54:0x011f, B:56:0x013e, B:58:0x014c, B:65:0x0162, B:67:0x0168, B:71:0x0175, B:73:0x018a, B:74:0x0192, B:75:0x019c, B:60:0x0157, B:55:0x012e), top: B:85:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0162 A[Catch: IOException -> 0x00b7, TryCatch #1 {IOException -> 0x00b7, blocks: (B:39:0x00a9, B:41:0x00b2, B:44:0x00ba, B:46:0x00e4, B:48:0x00ed, B:49:0x00f0, B:50:0x0114, B:54:0x011f, B:56:0x013e, B:58:0x014c, B:65:0x0162, B:67:0x0168, B:71:0x0175, B:73:0x018a, B:74:0x0192, B:75:0x019c, B:60:0x0157, B:55:0x012e), top: B:85:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0168 A[Catch: IOException -> 0x00b7, TryCatch #1 {IOException -> 0x00b7, blocks: (B:39:0x00a9, B:41:0x00b2, B:44:0x00ba, B:46:0x00e4, B:48:0x00ed, B:49:0x00f0, B:50:0x0114, B:54:0x011f, B:56:0x013e, B:58:0x014c, B:65:0x0162, B:67:0x0168, B:71:0x0175, B:73:0x018a, B:74:0x0192, B:75:0x019c, B:60:0x0157, B:55:0x012e), top: B:85:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x016d  */
    /* JADX WARN: Code duplicated, block: B:71:0x0175 A[Catch: IOException -> 0x00b7, TryCatch #1 {IOException -> 0x00b7, blocks: (B:39:0x00a9, B:41:0x00b2, B:44:0x00ba, B:46:0x00e4, B:48:0x00ed, B:49:0x00f0, B:50:0x0114, B:54:0x011f, B:56:0x013e, B:58:0x014c, B:65:0x0162, B:67:0x0168, B:71:0x0175, B:73:0x018a, B:74:0x0192, B:75:0x019c, B:60:0x0157, B:55:0x012e), top: B:85:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x018a A[Catch: IOException -> 0x00b7, TryCatch #1 {IOException -> 0x00b7, blocks: (B:39:0x00a9, B:41:0x00b2, B:44:0x00ba, B:46:0x00e4, B:48:0x00ed, B:49:0x00f0, B:50:0x0114, B:54:0x011f, B:56:0x013e, B:58:0x014c, B:65:0x0162, B:67:0x0168, B:71:0x0175, B:73:0x018a, B:74:0x0192, B:75:0x019c, B:60:0x0157, B:55:0x012e), top: B:85:0x00a9 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor$Chain chain) throws Throwable {
        Response$Builder responseHeaders;
        Response responseBuild;
        int iCode;
        Response responseBuild2;
        ResponseBody responseBodyBody;
        long contentLength;
        boolean z;
        chain.getClass();
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Exchange exchange$okhttp = realInterceptorChain.getExchange();
        exchange$okhttp.getClass();
        Request request$okhttp = realInterceptorChain.getRequest();
        RequestBody requestBodyBody = request$okhttp.body();
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z2 = true;
        try {
            exchange$okhttp.writeRequestHeaders(request$okhttp);
            if (!HttpMethod.permitsRequestBody(request$okhttp.method()) || requestBodyBody == null) {
                exchange$okhttp.noRequestBody();
                responseHeaders = null;
            } else {
                if (StringsKt.s("100-continue", request$okhttp.header("Expect"))) {
                    exchange$okhttp.flushRequest();
                    responseHeaders = exchange$okhttp.readResponseHeaders(true);
                    try {
                        exchange$okhttp.responseHeadersStart();
                        z = false;
                    } catch (IOException e) {
                        e = e;
                        if ((e instanceof ConnectionShutdownException) || !exchange$okhttp.getHasFailure()) {
                            throw e;
                        }
                        if (responseHeaders == null) {
                            try {
                                responseHeaders = exchange$okhttp.readResponseHeaders(false);
                                responseHeaders.getClass();
                                if (z2) {
                                    exchange$okhttp.responseHeadersStart();
                                    z2 = false;
                                }
                            } catch (IOException e2) {
                                if (e == null) {
                                    throw e2;
                                }
                                ExceptionsKt.addSuppressed(e, e2);
                                throw e;
                            }
                        }
                        responseBuild = responseHeaders.request(request$okhttp).handshake(exchange$okhttp.getConnection().getHandshake()).sentRequestAtMillis(jCurrentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
                        iCode = responseBuild.code();
                        if (shouldIgnoreAndWaitForRealResponse(iCode)) {
                            Response$Builder responseHeaders2 = exchange$okhttp.readResponseHeaders(false);
                            responseHeaders2.getClass();
                            if (z2) {
                                exchange$okhttp.responseHeadersStart();
                            }
                            responseBuild = responseHeaders2.request(request$okhttp).handshake(exchange$okhttp.getConnection().getHandshake()).sentRequestAtMillis(jCurrentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
                            iCode = responseBuild.code();
                        }
                        exchange$okhttp.responseHeadersEnd(responseBuild);
                        if (this.forWebSocket) {
                            responseBuild2 = responseBuild.newBuilder().body(exchange$okhttp.openResponseBody(responseBuild)).build();
                        } else {
                            responseBuild2 = responseBuild.newBuilder().body(exchange$okhttp.openResponseBody(responseBuild)).build();
                        }
                        if (StringsKt.s("close", responseBuild2.request().header("Connection"))) {
                            exchange$okhttp.noNewExchangesOnConnection();
                        } else {
                            exchange$okhttp.noNewExchangesOnConnection();
                        }
                        if (iCode != 204) {
                            responseBodyBody = responseBuild2.body();
                            if (responseBodyBody != null) {
                                contentLength = responseBodyBody.get$contentLength();
                            } else {
                                contentLength = -1;
                            }
                            if (contentLength > 0) {
                                StringBuilder sb = new StringBuilder("HTTP ");
                                sb.append(iCode);
                                sb.append(" had non-zero Content-Length: ");
                                ResponseBody responseBodyBody2 = responseBuild2.body();
                                sb.append(responseBodyBody2 != null ? Long.valueOf(responseBodyBody2.get$contentLength()) : null);
                                throw new ProtocolException(sb.toString());
                            }
                        } else {
                            responseBodyBody = responseBuild2.body();
                            if (responseBodyBody != null) {
                                contentLength = responseBodyBody.get$contentLength();
                            } else {
                                contentLength = -1;
                            }
                            if (contentLength > 0) {
                                StringBuilder sb2 = new StringBuilder("HTTP ");
                                sb2.append(iCode);
                                sb2.append(" had non-zero Content-Length: ");
                                ResponseBody responseBodyBody3 = responseBuild2.body();
                                sb2.append(responseBodyBody3 != null ? Long.valueOf(responseBodyBody3.get$contentLength()) : null);
                                throw new ProtocolException(sb2.toString());
                            }
                        }
                        return responseBuild2;
                    }
                } else {
                    z = true;
                    responseHeaders = null;
                }
                try {
                    if (responseHeaders != null) {
                        exchange$okhttp.noRequestBody();
                        if (!exchange$okhttp.getConnection().isMultiplexed$okhttp()) {
                            exchange$okhttp.noNewExchangesOnConnection();
                        }
                    } else if (requestBodyBody.isDuplex()) {
                        exchange$okhttp.flushRequest();
                        requestBodyBody.writeTo(b.a(exchange$okhttp.createRequestBody(request$okhttp, true)));
                    } else {
                        z zVarA = b.a(exchange$okhttp.createRequestBody(request$okhttp, false));
                        requestBodyBody.writeTo(zVarA);
                        zVarA.close();
                    }
                    z2 = z;
                } catch (IOException e3) {
                    e = e3;
                    z2 = z;
                    if (e instanceof ConnectionShutdownException) {
                        throw e;
                    }
                    throw e;
                }
            }
            if (requestBodyBody == null || !requestBodyBody.isDuplex()) {
                exchange$okhttp.finishRequest();
            }
            e = null;
        } catch (IOException e4) {
            e = e4;
            responseHeaders = null;
        }
        if (responseHeaders == null) {
            responseHeaders = exchange$okhttp.readResponseHeaders(false);
            responseHeaders.getClass();
            if (z2) {
                exchange$okhttp.responseHeadersStart();
                z2 = false;
            }
        }
        responseBuild = responseHeaders.request(request$okhttp).handshake(exchange$okhttp.getConnection().getHandshake()).sentRequestAtMillis(jCurrentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
        iCode = responseBuild.code();
        if (shouldIgnoreAndWaitForRealResponse(iCode)) {
            Response$Builder responseHeaders3 = exchange$okhttp.readResponseHeaders(false);
            responseHeaders3.getClass();
            if (z2) {
                exchange$okhttp.responseHeadersStart();
            }
            responseBuild = responseHeaders3.request(request$okhttp).handshake(exchange$okhttp.getConnection().getHandshake()).sentRequestAtMillis(jCurrentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
            iCode = responseBuild.code();
        }
        exchange$okhttp.responseHeadersEnd(responseBuild);
        if (this.forWebSocket || iCode != 101) {
            responseBuild2 = responseBuild.newBuilder().body(exchange$okhttp.openResponseBody(responseBuild)).build();
        } else {
            responseBuild2 = responseBuild.newBuilder().body(Util.EMPTY_RESPONSE).build();
        }
        if (StringsKt.s("close", responseBuild2.request().header("Connection")) || StringsKt.s("close", Response.header$default(responseBuild2, "Connection", null, 2, null))) {
            exchange$okhttp.noNewExchangesOnConnection();
        }
        if (iCode != 204 || iCode == 205) {
            responseBodyBody = responseBuild2.body();
            if (responseBodyBody != null) {
                contentLength = responseBodyBody.get$contentLength();
            } else {
                contentLength = -1;
            }
            if (contentLength > 0) {
                StringBuilder sb3 = new StringBuilder("HTTP ");
                sb3.append(iCode);
                sb3.append(" had non-zero Content-Length: ");
                ResponseBody responseBodyBody4 = responseBuild2.body();
                sb3.append(responseBodyBody4 != null ? Long.valueOf(responseBodyBody4.get$contentLength()) : null);
                throw new ProtocolException(sb3.toString());
            }
        }
        return responseBuild2;
    }
}
