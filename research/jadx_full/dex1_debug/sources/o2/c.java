package o2;

import android.view.View;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4040f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4041g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4042h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4043i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f4044j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f4045k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4046l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4047m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f4049o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f4050p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f4051q;
    public boolean r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4038a = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4039b = Integer.MAX_VALUE;
    public int c = Integer.MIN_VALUE;
    public int d = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ArrayList f4048n = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int a() {
        return this.f4042h - this.f4043i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(View view, int i9, int i10, int i11, int i12) {
        b bVar = (b) view.getLayoutParams();
        this.f4038a = Math.min(this.f4038a, (view.getLeft() - bVar.g()) - i9);
        this.f4039b = Math.min(this.f4039b, (view.getTop() - bVar.h()) - i10);
        this.c = Math.max(this.c, bVar.l() + view.getRight() + i11);
        this.d = Math.max(this.d, bVar.f() + view.getBottom() + i12);
    }
}
