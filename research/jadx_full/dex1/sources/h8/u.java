package h8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u extends n8.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f2599g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f2600h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u(e8.a aVar, Object obj, int i9) {
        super(aVar);
        this.f2599g = i9;
        this.f2600h = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        switch (this.f2599g) {
            case 0:
                if (!g(obj)) {
                    this.c.d(1L);
                }
                break;
            default:
                if (!this.e) {
                    int i9 = this.f3993f;
                    e8.a aVar = this.f3992b;
                    if (i9 != 0) {
                        aVar.e(null);
                    } else {
                        try {
                            Object objApply = ((b8.c) this.f2600h).apply(obj);
                            d8.b.a(objApply, "The mapper function returned a null value.");
                            aVar.e(objApply);
                        } catch (Throwable th) {
                            b(th);
                        }
                    }
                    break;
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0045, code lost:
    
        if (r1.g(r4) != false) goto L23;
     */
    @Override // e8.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean g(Object obj) {
        switch (this.f2599g) {
            case 0:
                if (!this.e) {
                    int i9 = this.f3993f;
                    e8.a aVar = this.f3992b;
                    if (i9 != 0) {
                        return aVar.g(null);
                    }
                    try {
                        if (((b8.d) this.f2600h).test(obj)) {
                        }
                    } catch (Throwable th) {
                        b(th);
                    }
                    break;
                }
                return false;
            default:
                if (this.e) {
                    return false;
                }
                try {
                    Object objApply = ((b8.c) this.f2600h).apply(obj);
                    d8.b.a(objApply, "The mapper function returned a null value.");
                    return this.f3992b.g(objApply);
                } catch (Throwable th2) {
                    b(th2);
                    return true;
                }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() {
        switch (this.f2599g) {
            case 0:
                e8.d dVar = this.d;
                b8.d dVar2 = (b8.d) this.f2600h;
                while (true) {
                    Object objPoll = dVar.poll();
                    if (objPoll == null) {
                        return null;
                    }
                    if (dVar2.test(objPoll)) {
                        return objPoll;
                    }
                    if (this.f3993f == 2) {
                        dVar.d(1L);
                    }
                }
                break;
            default:
                Object objPoll2 = this.d.poll();
                if (objPoll2 == null) {
                    return null;
                }
                Object objApply = ((b8.c) this.f2600h).apply(objPoll2);
                d8.b.a(objApply, "The mapper function returned a null value.");
                return objApply;
        }
    }
}
