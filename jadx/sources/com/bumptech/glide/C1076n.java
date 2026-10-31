package com.bumptech.glide;

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
import p254z.C3689c;
import p254z.InterfaceC3690d;
import p254z.ViewTreeObserverOnPreDrawListenerC3688b;

/* JADX INFO: renamed from: com.bumptech.glide.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1076n implements InterfaceC3690d {

    /* JADX INFO: renamed from: b */
    public final C3689c f1187b;

    /* JADX INFO: renamed from: c */
    public final View f1188c;

    public C1076n(ImageView imageView) {
        AbstractC0938g.m1072c(imageView, "Argument must not be null");
        this.f1188c = imageView;
        this.f1187b = new C3689c(imageView);
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: a */
    public final void mo1369a(C3621f c3621f) throws Throwable {
        C3689c c3689c = this.f1187b;
        ArrayList arrayList = c3689c.f10925b;
        View view = c3689c.f10924a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int iM5912a = c3689c.m5912a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        int iM5912a2 = c3689c.m5912a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iM5912a > 0 || iM5912a == Integer.MIN_VALUE) && (iM5912a2 > 0 || iM5912a2 == Integer.MIN_VALUE)) {
            c3621f.m5795m(iM5912a, iM5912a2);
            return;
        }
        if (!arrayList.contains(c3621f)) {
            arrayList.add(c3621f);
        }
        if (c3689c.f10926c == null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            ViewTreeObserverOnPreDrawListenerC3688b viewTreeObserverOnPreDrawListenerC3688b = new ViewTreeObserverOnPreDrawListenerC3688b(c3689c);
            c3689c.f10926c = viewTreeObserverOnPreDrawListenerC3688b;
            viewTreeObserver.addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC3688b);
        }
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: f */
    public final void mo1372f(C3621f c3621f) {
        this.f1187b.f10925b.remove(c3621f);
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: h */
    public final void mo1374h(InterfaceC3618c interfaceC3618c) {
        this.f1188c.setTag(R.id.glide_custom_view_target_tag, interfaceC3618c);
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: i */
    public final InterfaceC3618c mo1375i() {
        Object tag = this.f1188c.getTag(R.id.glide_custom_view_target_tag);
        if (tag == null) {
            return null;
        }
        if (tag instanceof InterfaceC3618c) {
            return (InterfaceC3618c) tag;
        }
        C1929i.m3029k("You must not pass non-R.id ids to setTag(id)");
        return null;
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: j */
    public final void mo1376j(Drawable drawable) {
        C3689c c3689c = this.f1187b;
        ViewTreeObserver viewTreeObserver = c3689c.f10924a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(c3689c.f10926c);
        }
        c3689c.f10926c = null;
        c3689c.f10925b.clear();
    }

    public final String toString() {
        return "Target for: " + this.f1188c;
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    /* JADX INFO: renamed from: c */
    public final void mo1337c() {
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    /* JADX INFO: renamed from: e */
    public final void mo1338e() {
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    public final void onStart() {
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: b */
    public final void mo1370b(Object obj) {
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: d */
    public final void mo1371d(Drawable drawable) {
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: g */
    public final void mo1373g(Drawable drawable) {
    }
}
