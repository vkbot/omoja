package b1;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f233a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(f fVar) {
        this.f233a = fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.ServiceConnection
    public final void onNullBinding(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        f fVar = this.f233a;
        fVar.f247m = false;
        fVar.f246l = true;
        fVar.f241g = iBinder;
        f fVar2 = this.f233a;
        fVar2.f239b.removeCallbacks(fVar2.f249o);
        this.f233a.a();
        f fVar3 = this.f233a;
        fVar3.f239b.removeCallbacks(fVar3.f250p);
        if (fVar3.e.isEmpty() || fVar3.f241g == null) {
            return;
        }
        fVar3.f239b.post(fVar3.f250p);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f233a.f241g = null;
        f fVar = this.f233a;
        fVar.f239b.removeCallbacks(fVar.f250p);
        this.f233a.c();
        this.f233a.d();
    }
}
