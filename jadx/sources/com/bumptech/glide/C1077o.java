package com.bumptech.glide;

import com.bumptech.glide.manager.C1074t;
import com.bumptech.glide.manager.InterfaceC1055a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import p025c0.AbstractC0947p;
import p244y.InterfaceC3618c;

/* JADX INFO: renamed from: com.bumptech.glide.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1077o implements InterfaceC1055a {

    /* JADX INFO: renamed from: a */
    public final C1074t f1189a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ ComponentCallbacks2C1078p f1190b;

    public C1077o(ComponentCallbacks2C1078p componentCallbacks2C1078p, C1074t c1074t) {
        this.f1190b = componentCallbacks2C1078p;
        this.f1189a = c1074t;
    }

    @Override // com.bumptech.glide.manager.InterfaceC1055a
    /* JADX INFO: renamed from: a */
    public final void mo1336a(boolean z9) {
        if (z9) {
            synchronized (this.f1190b) {
                C1074t c1074t = this.f1189a;
                ArrayList arrayListM1088e = AbstractC0947p.m1088e((Set) c1074t.f1184d);
                int size = arrayListM1088e.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayListM1088e.get(i10);
                    i10++;
                    InterfaceC3618c interfaceC3618c = (InterfaceC3618c) obj;
                    if (!interfaceC3618c.mo5787j() && !interfaceC3618c.mo5785h()) {
                        interfaceC3618c.clear();
                        if (c1074t.f1183c) {
                            ((HashSet) c1074t.f1185e).add(interfaceC3618c);
                        } else {
                            interfaceC3618c.mo5786i();
                        }
                    }
                }
            }
        }
    }
}
