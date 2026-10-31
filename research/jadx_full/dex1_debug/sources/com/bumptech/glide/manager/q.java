package com.bumptech.glide.manager;

import o7.e0;
import o7.p0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f609b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ q(Object obj, boolean z8, int i9) {
        this.f609b = i9;
        this.d = obj;
        this.c = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f609b) {
            case 0:
                r rVar = (r) this.d;
                c0.p.a();
                s sVar = (s) rVar.f611b;
                boolean z8 = sVar.f613b;
                boolean z9 = this.c;
                sVar.f613b = z9;
                if (z8 != z9) {
                    ((p) sVar.c).a(z9);
                }
                break;
            default:
                p0 p0Var = (p0) ((e0) this.d).c;
                if (this.c) {
                    p0Var.f4375l = true;
                    if (p0Var.f4372i > 0) {
                        i4.f fVar = p0Var.f4374k;
                        fVar.f2661a = false;
                        fVar.b();
                    }
                }
                p0Var.f4380q = false;
                break;
        }
    }
}
