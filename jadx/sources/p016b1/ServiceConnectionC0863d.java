package p016b1;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: renamed from: b1.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ServiceConnectionC0863d implements ServiceConnection {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C0865f f546a;

    public ServiceConnectionC0863d(C0865f c0865f) {
        this.f546a = c0865f;
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onNullBinding(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C0865f c0865f = this.f546a;
        c0865f.f565m = false;
        c0865f.f564l = true;
        c0865f.f559g = iBinder;
        C0865f c0865f2 = this.f546a;
        c0865f2.f554b.removeCallbacks(c0865f2.f567o);
        this.f546a.m919a();
        C0865f c0865f3 = this.f546a;
        c0865f3.f554b.removeCallbacks(c0865f3.f568p);
        if (c0865f3.f557e.isEmpty() || c0865f3.f559g == null) {
            return;
        }
        c0865f3.f554b.post(c0865f3.f568p);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f546a.f559g = null;
        C0865f c0865f = this.f546a;
        c0865f.f554b.removeCallbacks(c0865f.f568p);
        this.f546a.m920c();
        this.f546a.m921d();
    }
}
