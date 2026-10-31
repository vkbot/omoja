package z;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import c0.g;
import j1.i;
import java.util.ArrayList;
import y.f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f6145b;
    public final e c;
    public Animatable d;
    public final /* synthetic */ int e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(ImageView imageView, int i9) {
        this.e = i9;
        g.c(imageView, "Argument must not be null");
        this.f6145b = imageView;
        this.c = new e(imageView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final void a(f fVar) throws Throwable {
        e eVar = this.c;
        ArrayList arrayList = eVar.f6150b;
        View view = eVar.f6149a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        int iA = eVar.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
        ViewGroup$LayoutParams layoutParams2 = view.getLayoutParams();
        int iA2 = eVar.a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iA > 0 || iA == Integer.MIN_VALUE) && (iA2 > 0 || iA2 == Integer.MIN_VALUE)) {
            fVar.m(iA, iA2);
            return;
        }
        if (!arrayList.contains(fVar)) {
            arrayList.add(fVar);
        }
        if (eVar.c == null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            b bVar = new b(eVar);
            eVar.c = bVar;
            viewTreeObserver.addOnPreDrawListener(bVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final void b(Object obj) {
        k(obj);
        if (!(obj instanceof Animatable)) {
            this.d = null;
            return;
        }
        Animatable animatable = (Animatable) obj;
        this.d = animatable;
        animatable.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final void d(Drawable drawable) {
        k(null);
        this.d = null;
        this.f6145b.setImageDrawable(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.i
    public final void e() {
        Animatable animatable = this.d;
        if (animatable != null) {
            animatable.stop();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final void f(f fVar) {
        this.c.f6150b.remove(fVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final void g(Drawable drawable) {
        k(null);
        this.d = null;
        this.f6145b.setImageDrawable(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final void h(y.c cVar) {
        this.f6145b.setTag(2131296799, cVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final y.c i() {
        Object tag = this.f6145b.getTag(2131296799);
        if (tag == null) {
            return null;
        }
        if (tag instanceof y.c) {
            return (y.c) tag;
        }
        i.k("You must not call setTag() on a view Glide is targeting");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final void j(Drawable drawable) {
        e eVar = this.c;
        ViewTreeObserver viewTreeObserver = eVar.f6149a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(eVar.c);
        }
        eVar.c = null;
        eVar.f6150b.clear();
        Animatable animatable = this.d;
        if (animatable != null) {
            animatable.stop();
        }
        k(null);
        this.d = null;
        this.f6145b.setImageDrawable(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(Object obj) {
        switch (this.e) {
            case 0:
                this.f6145b.setImageBitmap((Bitmap) obj);
                break;
            default:
                this.f6145b.setImageDrawable((Drawable) obj);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.i
    public final void onStart() {
        Animatable animatable = this.d;
        if (animatable != null) {
            animatable.start();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "Target for: " + this.f6145b;
    }

    @Override // com.bumptech.glide.manager.i
    public final void c() {
    }
}
