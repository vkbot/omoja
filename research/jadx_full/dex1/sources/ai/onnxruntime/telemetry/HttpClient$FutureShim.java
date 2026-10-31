package ai.onnxruntime.telemetry;

import androidx.annotation.Keep;
import java.util.concurrent.FutureTask;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class HttpClient$FutureShim extends FutureTask<Boolean> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HttpClient$FutureShim(HttpClientRequest httpClientRequest) {
        super(httpClientRequest, Boolean.TRUE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.FutureTask, java.util.concurrent.Future
    @Keep
    public boolean cancel(boolean z8) {
        return super.cancel(z8);
    }
}
