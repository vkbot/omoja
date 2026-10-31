package com.bumptech.glide;

import p001a0.C0001a;
import p025c0.AbstractC0947p;
import p142n0.C2467b;

/* JADX INFO: renamed from: com.bumptech.glide.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1028a implements Cloneable {

    /* JADX INFO: renamed from: b */
    public C0001a f1064b;

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1028a clone() {
        try {
            return (C1028a) super.clone();
        } catch (CloneNotSupportedException e) {
            C2467b.m3833w(e);
            return null;
        }
    }

    /* JADX INFO: renamed from: b */
    public final boolean m1247b(Object obj) {
        if (obj instanceof C1028a) {
            return AbstractC0947p.m1085b(this.f1064b, ((C1028a) obj).f1064b);
        }
        return false;
    }

    /* JADX INFO: renamed from: c */
    public final int m1248c() {
        C0001a c0001a = this.f1064b;
        if (c0001a != null) {
            return c0001a.hashCode();
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C1028a) && m1247b(obj);
    }

    public final int hashCode() {
        return m1248c();
    }
}
