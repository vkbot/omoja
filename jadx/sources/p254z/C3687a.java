package p254z;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.example.navistart.R;
import java.util.ArrayList;
import p025c0.AbstractC0938g;
import p099j1.C1929i;
import p244y.C3621f;
import p244y.InterfaceC3618c;

/* JADX INFO: renamed from: z.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3687a implements InterfaceC3690d {

    /* JADX INFO: renamed from: b */
    public final ImageView f10917b;

    /* JADX INFO: renamed from: c */
    public final C3691e f10918c;

    /* JADX INFO: renamed from: d */
    public Animatable f10919d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ int f10920e;

    public C3687a(ImageView imageView, int i10) {
        this.f10920e = i10;
        AbstractC0938g.m1072c(imageView, "Argument must not be null");
        this.f10917b = imageView;
        this.f10918c = new C3691e(imageView);
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: a */
    public final void mo1369a(C3621f c3621f) throws Throwable {
        C3691e c3691e = this.f10918c;
        ArrayList arrayList = c3691e.f10929b;
        View view = c3691e.f10928a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int iM5913a = c3691e.m5913a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        int iM5913a2 = c3691e.m5913a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iM5913a > 0 || iM5913a == Integer.MIN_VALUE) && (iM5913a2 > 0 || iM5913a2 == Integer.MIN_VALUE)) {
            c3621f.m5795m(iM5913a, iM5913a2);
            return;
        }
        if (!arrayList.contains(c3621f)) {
            arrayList.add(c3621f);
        }
        if (c3691e.f10930c == null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            ViewTreeObserverOnPreDrawListenerC3688b viewTreeObserverOnPreDrawListenerC3688b = new ViewTreeObserverOnPreDrawListenerC3688b(c3691e);
            c3691e.f10930c = viewTreeObserverOnPreDrawListenerC3688b;
            viewTreeObserver.addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC3688b);
        }
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: b */
    public final void mo1370b(Object obj) {
        m5911k(obj);
        if (!(obj instanceof Animatable)) {
            this.f10919d = null;
            return;
        }
        Animatable animatable = (Animatable) obj;
        this.f10919d = animatable;
        animatable.start();
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: d */
    public final void mo1371d(Drawable drawable) {
        m5911k(null);
        this.f10919d = null;
        this.f10917b.setImageDrawable(drawable);
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    /* JADX INFO: renamed from: e */
    public final void mo1338e() {
        Animatable animatable = this.f10919d;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: f */
    public final void mo1372f(C3621f c3621f) {
        this.f10918c.f10929b.remove(c3621f);
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: g */
    public final void mo1373g(Drawable drawable) {
        m5911k(null);
        this.f10919d = null;
        this.f10917b.setImageDrawable(drawable);
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: h */
    public final void mo1374h(InterfaceC3618c interfaceC3618c) {
        this.f10917b.setTag(R.id.glide_custom_view_target_tag, interfaceC3618c);
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: i */
    public final InterfaceC3618c mo1375i() {
        Object tag = this.f10917b.getTag(R.id.glide_custom_view_target_tag);
        if (tag == null) {
            return null;
        }
        if (tag instanceof InterfaceC3618c) {
            return (InterfaceC3618c) tag;
        }
        C1929i.m3029k("You must not call setTag() on a view Glide is targeting");
        return null;
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: j */
    public final void mo1376j(Drawable drawable) {
        C3691e c3691e = this.f10918c;
        ViewTreeObserver viewTreeObserver = c3691e.f10928a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(c3691e.f10930c);
        }
        c3691e.f10930c = null;
        c3691e.f10929b.clear();
        Animatable animatable = this.f10919d;
        if (animatable != null) {
            animatable.stop();
        }
        m5911k(null);
        this.f10919d = null;
        this.f10917b.setImageDrawable(drawable);
    }

    /* JADX INFO: renamed from: k */
    public final void m5911k(Object obj) {
        switch (this.f10920e) {
            case 0:
                this.f10917b.setImageBitmap((Bitmap) obj);
                break;
            default:
                this.f10917b.setImageDrawable((Drawable) obj);
                break;
        }
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    public final void onStart() {
        Animatable animatable = this.f10919d;
        if (animatable != null) {
            animatable.start();
        }
    }

    public final String toString() {
        return "Target for: " + this.f10917b;
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    /* JADX INFO: renamed from: c */
    public final void mo1337c() {
    }
}
