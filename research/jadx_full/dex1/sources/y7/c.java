package y7;

import android.os.Handler;
import android.os.Message;
import java.util.concurrent.TimeUnit;
import x7.j;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f6142b;
    public volatile boolean c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(Handler handler) {
        this.f6142b = handler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.j
    public final z7.a a(Runnable runnable, TimeUnit timeUnit) {
        c8.b bVar = c8.b.f543b;
        if (TimeUnit.NANOSECONDS == null) {
            n0.b.n("unit == null");
            return null;
        }
        if (this.c) {
            return bVar;
        }
        Handler handler = this.f6142b;
        d dVar = new d(handler, runnable);
        Message messageObtain = Message.obtain(handler, dVar);
        messageObtain.obj = this;
        this.f6142b.sendMessageDelayed(messageObtain, 0L);
        if (!this.c) {
            return dVar;
        }
        this.f6142b.removeCallbacks(dVar);
        return bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        this.c = true;
        this.f6142b.removeCallbacksAndMessages(this);
    }
}
