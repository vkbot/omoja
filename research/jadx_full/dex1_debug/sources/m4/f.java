package m4;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f extends com.bumptech.glide.c {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.c
    public final boolean c(m mVar, d dVar, d dVar2) {
        synchronized (mVar) {
            try {
                if (mVar.c != dVar) {
                    return false;
                }
                mVar.c = dVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.c
    public final boolean d(m mVar, Object obj, Object obj2) {
        synchronized (mVar) {
            try {
                if (mVar.f3662b != obj) {
                    return false;
                }
                mVar.f3662b = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.c
    public final boolean e(m mVar, l lVar, l lVar2) {
        synchronized (mVar) {
            try {
                if (mVar.d != lVar) {
                    return false;
                }
                mVar.d = lVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.c
    public final d k(m mVar) {
        d dVar;
        d dVar2 = d.d;
        synchronized (mVar) {
            try {
                dVar = mVar.c;
                if (dVar != dVar2) {
                    mVar.c = dVar2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.c
    public final l l(m mVar) {
        l lVar;
        l lVar2 = l.c;
        synchronized (mVar) {
            try {
                lVar = mVar.d;
                if (lVar != lVar2) {
                    mVar.d = lVar2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return lVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.c
    public final void q(l lVar, l lVar2) {
        lVar.f3658b = lVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.c
    public final void r(l lVar, Thread thread) {
        lVar.f3657a = thread;
    }
}
