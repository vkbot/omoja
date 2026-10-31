package c7;

import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final ArrayList f507g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f509b;
    public final boolean c;
    public final Camera d;
    public final Handler e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a f510f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        ArrayList arrayList = new ArrayList(2);
        f507g = arrayList;
        arrayList.add("auto");
        arrayList.add("macro");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(Camera camera, j jVar) {
        b4.k kVar = new b4.k(2, this);
        this.f510f = new a(this);
        this.e = new Handler(kVar);
        this.d = camera;
        String focusMode = camera.getParameters().getFocusMode();
        jVar.getClass();
        boolean zContains = f507g.contains(focusMode);
        this.c = zContains;
        Log.i("b", "Current focus mode '" + focusMode + "'; use auto focus? " + zContains);
        this.f508a = false;
        b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void a() {
        if (!this.f508a && !this.e.hasMessages(1)) {
            Handler handler = this.e;
            handler.sendMessageDelayed(handler.obtainMessage(1), 2000L);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        if (!this.c || this.f508a || this.f509b) {
            return;
        }
        try {
            this.d.autoFocus(this.f510f);
            this.f509b = true;
        } catch (RuntimeException e) {
            Log.w("b", "Unexpected exception while focusing", e);
            a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        this.f508a = true;
        this.f509b = false;
        this.e.removeMessages(1);
        if (this.c) {
            try {
                this.d.cancelAutoFocus();
            } catch (RuntimeException e) {
                Log.w("b", "Unexpected exception while cancelling focusing", e);
            }
        }
    }
}
