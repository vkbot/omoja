package p032c7;

import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;
import p019b4.C0900k;

/* JADX INFO: renamed from: c7.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0998b {

    /* JADX INFO: renamed from: g */
    public static final ArrayList f960g;

    /* JADX INFO: renamed from: a */
    public boolean f961a;

    /* JADX INFO: renamed from: b */
    public boolean f962b;

    /* JADX INFO: renamed from: c */
    public final boolean f963c;

    /* JADX INFO: renamed from: d */
    public final Camera f964d;

    /* JADX INFO: renamed from: e */
    public final Handler f965e;

    /* JADX INFO: renamed from: f */
    public final C0997a f966f;

    static {
        ArrayList arrayList = new ArrayList(2);
        f960g = arrayList;
        arrayList.add("auto");
        arrayList.add("macro");
    }

    public C0998b(Camera camera, C1006j c1006j) {
        C0900k c0900k = new C0900k(2, this);
        this.f966f = new C0997a(this);
        this.f965e = new Handler(c0900k);
        this.f964d = camera;
        String focusMode = camera.getParameters().getFocusMode();
        c1006j.getClass();
        boolean zContains = f960g.contains(focusMode);
        this.f963c = zContains;
        Log.i("b", "Current focus mode '" + focusMode + "'; use auto focus? " + zContains);
        this.f961a = false;
        m1202b();
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m1201a() {
        if (!this.f961a && !this.f965e.hasMessages(1)) {
            Handler handler = this.f965e;
            handler.sendMessageDelayed(handler.obtainMessage(1), 2000L);
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1202b() {
        if (!this.f963c || this.f961a || this.f962b) {
            return;
        }
        try {
            this.f964d.autoFocus(this.f966f);
            this.f962b = true;
        } catch (RuntimeException e) {
            Log.w("b", "Unexpected exception while focusing", e);
            m1201a();
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1203c() {
        this.f961a = true;
        this.f962b = false;
        this.f965e.removeMessages(1);
        if (this.f963c) {
            try {
                this.f964d.cancelAutoFocus();
            } catch (RuntimeException e) {
                Log.w("b", "Unexpected exception while cancelling focusing", e);
            }
        }
    }
}
