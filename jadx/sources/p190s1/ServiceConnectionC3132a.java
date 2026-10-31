package p190s1;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: s1.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ServiceConnectionC3132a implements ServiceConnection {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ TextureViewSurfaceTextureListenerC3135b f8961a;

    public ServiceConnectionC3132a(TextureViewSurfaceTextureListenerC3135b textureViewSurfaceTextureListenerC3135b) {
        this.f8961a = textureViewSurfaceTextureListenerC3135b;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        TextureViewSurfaceTextureListenerC3135b textureViewSurfaceTextureListenerC3135b = this.f8961a;
        if (textureViewSurfaceTextureListenerC3135b.f8973j) {
            return;
        }
        textureViewSurfaceTextureListenerC3135b.f8970g = ((BinderC3181y) iBinder).f9262c;
        textureViewSurfaceTextureListenerC3135b.m4973a();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        TextureViewSurfaceTextureListenerC3135b textureViewSurfaceTextureListenerC3135b = this.f8961a;
        textureViewSurfaceTextureListenerC3135b.f8970g = null;
        textureViewSurfaceTextureListenerC3135b.f8978o = -1;
        textureViewSurfaceTextureListenerC3135b.f8976m = true;
        textureViewSurfaceTextureListenerC3135b.m4978f(AbstractC1387m.m2421h(new byte[]{-68, -54, 89, 17, -19, 36, -9, 35, -68, -45, 88, 37, 28, 116, -103, 65, -42, -69, 55, 116, -127, -124, -9, 47, -67, -23, 89, 30, -20, 31, -10, 31, -67, -20, 88, 53, -20, 25}, new byte[]{108, 107, -119, -92, 60, -92, 39, -111}));
    }
}
