package s1;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f5049a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(b bVar) {
        this.f5049a = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        b bVar = this.f5049a;
        if (bVar.f5057j) {
            return;
        }
        bVar.f5054g = ((y) iBinder).c;
        bVar.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        b bVar = this.f5049a;
        bVar.f5054g = null;
        bVar.f5062o = -1;
        bVar.f5060m = true;
        bVar.f(e0.m.h(new byte[]{-68, -54, 89, 17, -19, 36, -9, 35, -68, -45, 88, 37, 28, 116, -103, 65, -42, -69, 55, 116, -127, -124, -9, 47, -67, -23, 89, 30, -20, 31, -10, 31, -67, -20, 88, 53, -20, 25}, new byte[]{108, 107, -119, -92, 60, -92, 39, -111}));
    }
}
