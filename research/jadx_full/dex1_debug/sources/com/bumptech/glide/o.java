package com.bumptech.glide;

import com.bumptech.glide.manager.t;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o implements com.bumptech.glide.manager.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t f618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f619b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o(p pVar, t tVar) {
        this.f619b = pVar;
        this.f618a = tVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.a
    public final void a(boolean z8) {
        if (z8) {
            synchronized (this.f619b) {
                t tVar = this.f618a;
                ArrayList arrayListE = c0.p.e((Set) tVar.d);
                int size = arrayListE.size();
                int i9 = 0;
                while (i9 < size) {
                    Object obj = arrayListE.get(i9);
                    i9++;
                    y.c cVar = (y.c) obj;
                    if (!cVar.j() && !cVar.h()) {
                        cVar.clear();
                        if (tVar.c) {
                            ((HashSet) tVar.e).add(cVar);
                        } else {
                            cVar.i();
                        }
                    }
                }
            }
        }
    }
}
