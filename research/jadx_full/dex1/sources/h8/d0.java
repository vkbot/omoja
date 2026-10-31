package h8;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d0 extends o8.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Iterator f2539b;
    public volatile boolean c;
    public boolean d;
    public final /* synthetic */ int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final x7.d f2540f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d0(x7.d dVar, Iterator it, int i9) {
        this.e = i9;
        this.f2539b = it;
        this.f2540f = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        this.c = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final void clear() {
        this.f2539b = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        if (o8.f.c(j9) && e3.d.a(this, j9) == 0) {
            if (j9 == Long.MAX_VALUE) {
                switch (this.e) {
                    case 0:
                        Iterator it = this.f2539b;
                        e8.a aVar = (e8.a) this.f2540f;
                        while (!this.c) {
                            try {
                                Object next = it.next();
                                if (this.c) {
                                    break;
                                } else if (next == null) {
                                    aVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                                    break;
                                } else {
                                    aVar.g(next);
                                    if (this.c) {
                                        break;
                                    } else {
                                        try {
                                            if (!it.hasNext()) {
                                                if (!this.c) {
                                                    aVar.a();
                                                }
                                                break;
                                            }
                                        } catch (Throwable th) {
                                            com.bumptech.glide.d.v(th);
                                            aVar.onError(th);
                                            return;
                                        }
                                    }
                                }
                            } catch (Throwable th2) {
                                com.bumptech.glide.d.v(th2);
                                aVar.onError(th2);
                            }
                        }
                        break;
                    default:
                        Iterator it2 = this.f2539b;
                        x7.d dVar = this.f2540f;
                        while (!this.c) {
                            try {
                                Object next2 = it2.next();
                                if (this.c) {
                                    break;
                                } else if (next2 == null) {
                                    dVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                                    break;
                                } else {
                                    dVar.e(next2);
                                    if (this.c) {
                                        break;
                                    } else {
                                        try {
                                            if (!it2.hasNext()) {
                                                if (!this.c) {
                                                    dVar.a();
                                                }
                                                break;
                                            }
                                        } catch (Throwable th3) {
                                            com.bumptech.glide.d.v(th3);
                                            dVar.onError(th3);
                                            return;
                                        }
                                    }
                                }
                            } catch (Throwable th4) {
                                com.bumptech.glide.d.v(th4);
                                dVar.onError(th4);
                                return;
                            }
                        }
                        break;
                }
            }
            switch (this.e) {
                case 0:
                    Iterator it3 = this.f2539b;
                    e8.a aVar2 = (e8.a) this.f2540f;
                    do {
                        long j10 = 0;
                        while (true) {
                            if (j10 == j9) {
                                j9 = get();
                                if (j10 == j9) {
                                }
                            } else if (this.c) {
                                break;
                            } else {
                                try {
                                    Object next3 = it3.next();
                                    if (this.c) {
                                        break;
                                    } else if (next3 == null) {
                                        aVar2.onError(new NullPointerException("Iterator.next() returned a null value"));
                                        break;
                                    } else {
                                        boolean zG = aVar2.g(next3);
                                        if (this.c) {
                                            break;
                                        } else {
                                            try {
                                                if (!it3.hasNext()) {
                                                    if (!this.c) {
                                                        aVar2.a();
                                                    }
                                                    break;
                                                } else if (zG) {
                                                    j10++;
                                                }
                                            } catch (Throwable th5) {
                                                com.bumptech.glide.d.v(th5);
                                                aVar2.onError(th5);
                                                return;
                                            }
                                        }
                                    }
                                } catch (Throwable th6) {
                                    com.bumptech.glide.d.v(th6);
                                    aVar2.onError(th6);
                                    return;
                                }
                            }
                        }
                        j9 = addAndGet(-j10);
                    } while (j9 != 0);
                    break;
                default:
                    Iterator it4 = this.f2539b;
                    x7.d dVar2 = this.f2540f;
                    do {
                        long j11 = 0;
                        while (true) {
                            if (j11 != j9) {
                                if (!this.c) {
                                    try {
                                        Object next4 = it4.next();
                                        if (!this.c) {
                                            if (next4 == null) {
                                                dVar2.onError(new NullPointerException("Iterator.next() returned a null value"));
                                            } else {
                                                dVar2.e(next4);
                                                if (!this.c) {
                                                    try {
                                                        if (it4.hasNext()) {
                                                            j11++;
                                                        } else if (!this.c) {
                                                            dVar2.a();
                                                        }
                                                    } catch (Throwable th7) {
                                                        com.bumptech.glide.d.v(th7);
                                                        dVar2.onError(th7);
                                                        return;
                                                    }
                                                }
                                            }
                                        }
                                    } catch (Throwable th8) {
                                        com.bumptech.glide.d.v(th8);
                                        dVar2.onError(th8);
                                        return;
                                    }
                                }
                                break;
                            } else {
                                j9 = get();
                                if (j11 == j9) {
                                }
                            }
                        }
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
        Iterator it = this.f2539b;
        return it == null || !it.hasNext();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() {
        Iterator it = this.f2539b;
        if (it == null) {
            return null;
        }
        if (!this.d) {
            this.d = true;
        } else if (!it.hasNext()) {
            return null;
        }
        Object next = this.f2539b.next();
        d8.b.a(next, "Iterator.next() returned a null value");
        return next;
    }
}
