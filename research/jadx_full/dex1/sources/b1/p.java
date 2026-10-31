package b1;

import android.webkit.WebView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class p implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f273b;
    public final /* synthetic */ long c;
    public final /* synthetic */ long d;
    public final /* synthetic */ WebView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f274f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ boolean f275g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ long f276h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ p(r rVar, long j9, long j10, WebView webView, String str, boolean z8, long j11) {
        this.f273b = rVar;
        this.c = j9;
        this.d = j10;
        this.e = webView;
        this.f274f = str;
        this.f275g = z8;
        this.f276h = j11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        long j9;
        r rVar = this.f273b;
        long j10 = this.c;
        long j11 = this.d;
        WebView webView = this.e;
        String str = this.f274f;
        boolean z8 = this.f275g;
        long j12 = this.f276h;
        synchronized (rVar.f284i) {
            if (!rVar.f283h || j10 != rVar.f289n || j11 <= rVar.f288m) {
                rVar.g(j11, j10, false);
                return;
            }
            if (rVar.c != webView || !rVar.f280b) {
                rVar.g(j11, j10, false);
                return;
            }
            try {
                q qVar = new q(rVar, z8, j12, j11, j10);
                j9 = j11;
                try {
                    webView.evaluateJavascript(str, qVar);
                } catch (RuntimeException unused) {
                    rVar.g(j9, j10, false);
                }
            } catch (RuntimeException unused2) {
                j9 = j11;
            }
        }
    }
}
