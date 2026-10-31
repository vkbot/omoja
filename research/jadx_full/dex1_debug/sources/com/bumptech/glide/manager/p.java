package com.bumptech.glide.manager;

import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f608a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p(t tVar) {
        this.f608a = tVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.a
    public final void a(boolean z8) {
        ArrayList arrayList;
        c0.p.a();
        synchronized (this.f608a) {
            arrayList = new ArrayList((HashSet) this.f608a.e);
        }
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            ((a) obj).a(z8);
        }
    }
}
