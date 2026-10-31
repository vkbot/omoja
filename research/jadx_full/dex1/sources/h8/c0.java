package h8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c0 extends o8.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f2535b;
    public int c;
    public volatile boolean d;
    public final /* synthetic */ int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final x7.d f2536f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c0(x7.d dVar, Object[] objArr, int i9) {
        this.e = i9;
        this.f2535b = objArr;
        this.f2536f = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        this.d = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final void clear() {
        this.c = this.f2535b.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        if (o8.f.c(j9) && e3.d.a(this, j9) == 0) {
            if (j9 == Long.MAX_VALUE) {
                switch (this.e) {
                    case 0:
                        Object[] objArr = this.f2535b;
                        int length = objArr.length;
                        e8.a aVar = (e8.a) this.f2536f;
                        int i9 = this.c;
                        while (true) {
                            boolean z8 = this.d;
                            if (i9 != length) {
                                if (!z8) {
                                    Object obj = objArr[i9];
                                    if (obj == null) {
                                        aVar.onError(new NullPointerException("array element is null"));
                                    } else {
                                        aVar.g(obj);
                                        i9++;
                                    }
                                }
                                break;
                            } else if (!z8) {
                                aVar.a();
                                break;
                            }
                        }
                        break;
                    default:
                        Object[] objArr2 = this.f2535b;
                        int length2 = objArr2.length;
                        x7.d dVar = this.f2536f;
                        int i10 = this.c;
                        while (true) {
                            boolean z9 = this.d;
                            if (i10 != length2) {
                                if (!z9) {
                                    Object obj2 = objArr2[i10];
                                    if (obj2 == null) {
                                        dVar.onError(new NullPointerException("array element is null"));
                                    } else {
                                        dVar.e(obj2);
                                        i10++;
                                    }
                                }
                                break;
                            } else if (!z9) {
                                dVar.a();
                                break;
                            }
                        }
                        break;
                }
            }
            switch (this.e) {
                case 0:
                    Object[] objArr3 = this.f2535b;
                    int length3 = objArr3.length;
                    int i11 = this.c;
                    e8.a aVar2 = (e8.a) this.f2536f;
                    do {
                        long j10 = 0;
                        while (true) {
                            if (j10 != j9 && i11 != length3) {
                                if (!this.d) {
                                    Object obj3 = objArr3[i11];
                                    if (obj3 == null) {
                                        aVar2.onError(new NullPointerException("array element is null"));
                                    } else {
                                        if (aVar2.g(obj3)) {
                                            j10++;
                                        }
                                        i11++;
                                    }
                                }
                                break;
                            } else if (i11 == length3) {
                                if (!this.d) {
                                    aVar2.a();
                                }
                                break;
                            } else {
                                j9 = get();
                                if (j10 == j9) {
                                }
                            }
                        }
                        this.c = i11;
                        j9 = addAndGet(-j10);
                    } while (j9 != 0);
                    break;
                default:
                    Object[] objArr4 = this.f2535b;
                    int length4 = objArr4.length;
                    int i12 = this.c;
                    x7.d dVar2 = this.f2536f;
                    do {
                        long j11 = 0;
                        while (true) {
                            if (j11 != j9 && i12 != length4) {
                                if (!this.d) {
                                    Object obj4 = objArr4[i12];
                                    if (obj4 == null) {
                                        dVar2.onError(new NullPointerException("array element is null"));
                                    } else {
                                        dVar2.e(obj4);
                                        j11++;
                                        i12++;
                                    }
                                }
                                break;
                            } else if (i12 == length4) {
                                if (!this.d) {
                                    dVar2.a();
                                }
                                break;
                            } else {
                                j9 = get();
                                if (j11 == j9) {
                                }
                            }
                        }
                        this.c = i12;
                        j9 = addAndGet(-j11);
                    } while (j9 != 0);
                    break;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.c
    public final int h(int i9) {
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean isEmpty() {
        return this.c == this.f2535b.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() {
        int i9 = this.c;
        Object[] objArr = this.f2535b;
        if (i9 == objArr.length) {
            return null;
        }
        this.c = i9 + 1;
        Object obj = objArr[i9];
        d8.b.a(obj, "array element is null");
        return obj;
    }
}
