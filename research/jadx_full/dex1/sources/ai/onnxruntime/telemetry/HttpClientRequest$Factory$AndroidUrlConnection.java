package ai.onnxruntime.telemetry;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class HttpClientRequest$Factory$AndroidUrlConnection implements HttpClientRequest$Factory {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.telemetry.HttpClientRequest$Factory
    public HttpClientRequest create(@NonNull HttpClient httpClient, String str, String str2, byte[] bArr, String str3, @NonNull HttpClientRequest$Headers httpClientRequest$Headers) {
        return new Request(httpClient, str, str2, bArr, str3, httpClientRequest$Headers);
    }
}
