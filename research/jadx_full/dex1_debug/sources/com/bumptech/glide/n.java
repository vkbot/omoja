package com.bumptech.glide;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n implements z.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final z.c f617b;
    public final View c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n(ImageView imageView) {
        c0.g.c(imageView, "Argument must not be null");
        this.c = imageView;
        this.f617b = new z.c(imageView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final void a(y.f fVar) throws Throwable {
        z.c cVar = this.f617b;
        ArrayList arrayList = cVar.f6148b;
        View view = cVar.f6147a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        int iA = cVar.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
        ViewGroup$LayoutParams layoutParams2 = view.getLayoutParams();
        int iA2 = cVar.a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iA > 0 || iA == Integer.MIN_VALUE) && (iA2 > 0 || iA2 == Integer.MIN_VALUE)) {
            fVar.m(iA, iA2);
            return;
        }
        if (!arrayList.contains(fVar)) {
            arrayList.add(fVar);
        }
        if (cVar.c == null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            z.b bVar = new z.b(cVar);
            cVar.c = bVar;
            viewTreeObserver.addOnPreDrawListener(bVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final void f(y.f fVar) {
        this.f617b.f6148b.remove(fVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final void h(y.c cVar) {
        this.c.setTag(2131296799, cVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final y.c i() {
        Object tag = this.c.getTag(2131296799);
        if (tag == null) {
            return null;
        }
        if (tag instanceof y.c) {
            return (y.c) tag;
        }
        j1.i.k("You must not pass non-R.id ids to setTag(id)");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final void j(Drawable drawable) {
        z.c cVar = this.f617b;
        ViewTreeObserver viewTreeObserver = cVar.f6147a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(cVar.c);
        }
        cVar.c = null;
        cVar.f6148b.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "Target for: " + this.c;
    }

    @Override // com.bumptech.glide.manager.i
    public final void c() {
    }

    @Override // com.bumptech.glide.manager.i
    public final void e() {
    }

    @Override // com.bumptech.glide.manager.i
    public final void onStart() {
    }

    @Override // z.d
    public final void b(Object obj) {
    }

    @Override // z.d
    public final void d(Drawable drawable) {
    }

    @Override // z.d
    public final void g(Drawable drawable) {
    }
}
