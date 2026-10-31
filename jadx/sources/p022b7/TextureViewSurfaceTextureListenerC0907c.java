package p022b7;

import android.graphics.SurfaceTexture;
import android.view.TextureView;

/* JADX INFO: renamed from: b7.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class TextureViewSurfaceTextureListenerC0907c implements TextureView.SurfaceTextureListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ AbstractC0910f f704b;

    public TextureViewSurfaceTextureListenerC0907c(AbstractC0910f abstractC0910f) {
        this.f704b = abstractC0910f;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        onSurfaceTextureSizeChanged(surfaceTexture, i10, i11);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
        C0925u c0925u = new C0925u(i10, i11);
        AbstractC0910f abstractC0910f = this.f704b;
        abstractC0910f.f724q = c0925u;
        abstractC0910f.m1049e();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
