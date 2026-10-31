package p190s1;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: renamed from: s1.l0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3156l0 extends C3162o0 {

    /* JADX INFO: renamed from: b */
    public C3152j0 f9080b;

    /* JADX INFO: renamed from: c */
    public View f9081c;

    /* JADX INFO: renamed from: d */
    public TextView f9082d;

    /* JADX INFO: renamed from: e */
    public TextView f9083e;

    /* JADX INFO: renamed from: f */
    public TextureViewSurfaceTextureListenerC3135b f9084f;

    /* JADX INFO: renamed from: g */
    public boolean f9085g;

    /* JADX INFO: renamed from: h */
    public ImageView f9086h;

    /* JADX INFO: renamed from: i */
    public TextView f9087i;

    /* JADX INFO: renamed from: j */
    public ImageView f9088j;

    /* JADX INFO: renamed from: k */
    public TextView f9089k;

    /* JADX INFO: renamed from: l */
    public TextView f9090l;

    /* JADX INFO: renamed from: m */
    public TextView f9091m;

    /* JADX INFO: renamed from: n */
    public ImageView f9092n;

    /* JADX INFO: renamed from: o */
    public TextView f9093o;

    /* JADX INFO: renamed from: p */
    public TextView f9094p;

    /* JADX INFO: renamed from: q */
    public final View[] f9095q;

    public C3156l0(Context context) {
        super(context);
        this.f9095q = new View[3];
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f9084f == null || !this.f9085g) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return this.f9083e == null || motionEvent.getX() < ((float) this.f9083e.getLeft()) || motionEvent.getY() < ((float) this.f9083e.getTop());
    }
}
