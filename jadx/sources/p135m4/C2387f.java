package p135m4;

import com.bumptech.glide.AbstractC1030c;

/* JADX INFO: renamed from: m4.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2387f extends AbstractC1030c {
    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: c */
    public final boolean mo1264c(AbstractC2394m abstractC2394m, C2385d c2385d, C2385d c2385d2) {
        synchronized (abstractC2394m) {
            try {
                if (abstractC2394m.f6475c != c2385d) {
                    return false;
                }
                abstractC2394m.f6475c = c2385d2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: d */
    public final boolean mo1265d(AbstractC2394m abstractC2394m, Object obj, Object obj2) {
        synchronized (abstractC2394m) {
            try {
                if (abstractC2394m.f6474b != obj) {
                    return false;
                }
                abstractC2394m.f6474b = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: e */
    public final boolean mo1266e(AbstractC2394m abstractC2394m, C2393l c2393l, C2393l c2393l2) {
        synchronized (abstractC2394m) {
            try {
                if (abstractC2394m.f6476d != c2393l) {
                    return false;
                }
                abstractC2394m.f6476d = c2393l2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: k */
    public final C2385d mo1267k(AbstractC2394m abstractC2394m) {
        C2385d c2385d;
        C2385d c2385d2 = C2385d.f6452d;
        synchronized (abstractC2394m) {
            try {
                c2385d = abstractC2394m.f6475c;
                if (c2385d != c2385d2) {
                    abstractC2394m.f6475c = c2385d2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2385d;
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: l */
    public final C2393l mo1268l(AbstractC2394m abstractC2394m) {
        C2393l c2393l;
        C2393l c2393l2 = C2393l.f6467c;
        synchronized (abstractC2394m) {
            try {
                c2393l = abstractC2394m.f6476d;
                if (c2393l != c2393l2) {
                    abstractC2394m.f6476d = c2393l2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2393l;
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: q */
    public final void mo1269q(C2393l c2393l, C2393l c2393l2) {
        c2393l.f6469b = c2393l2;
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: r */
    public final void mo1270r(C2393l c2393l, Thread thread) {
        c2393l.f6468a = thread;
    }
}
