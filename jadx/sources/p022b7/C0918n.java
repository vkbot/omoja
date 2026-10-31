package p022b7;

import android.graphics.Rect;
import android.os.Handler;
import android.os.HandlerThread;
import p000a.AbstractC0000a;
import p019b4.C0900k;
import p032c7.C1003g;
import p184r5.C3105c;

/* JADX INFO: renamed from: b7.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0918n {

    /* JADX INFO: renamed from: a */
    public final C1003g f756a;

    /* JADX INFO: renamed from: b */
    public HandlerThread f757b;

    /* JADX INFO: renamed from: c */
    public Handler f758c;

    /* JADX INFO: renamed from: d */
    public C0915k f759d;

    /* JADX INFO: renamed from: e */
    public final Handler f760e;

    /* JADX INFO: renamed from: f */
    public Rect f761f;

    /* JADX INFO: renamed from: g */
    public boolean f762g = false;

    /* JADX INFO: renamed from: h */
    public final Object f763h = new Object();

    /* JADX INFO: renamed from: i */
    public final C0900k f764i = new C0900k(1, this);

    /* JADX INFO: renamed from: j */
    public final C3105c f765j = new C3105c(3, this);

    public C0918n(C1003g c1003g, C0915k c0915k, Handler handler) {
        AbstractC0000a.m24y();
        this.f756a = c1003g;
        this.f759d = c0915k;
        this.f760e = handler;
    }
}
