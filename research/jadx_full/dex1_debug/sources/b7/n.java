package b7;

import android.graphics.Rect;
import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c7.g f376a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public HandlerThread f377b;
    public Handler c;
    public k d;
    public final Handler e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Rect f378f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f379g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f380h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b4.k f381i = new b4.k(1, this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final r5.c f382j = new r5.c(3, this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n(c7.g gVar, k kVar, Handler handler) {
        a.a.y();
        this.f376a = gVar;
        this.d = kVar;
        this.e = handler;
    }
}
