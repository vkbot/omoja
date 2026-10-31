package p085h8;

import com.bumptech.glide.AbstractC1031d;
import java.util.Iterator;
import p045d8.AbstractC1314b;
import p050e3.C1461d;
import p054e8.InterfaceC1498a;
import p158o8.AbstractC2753b;
import p158o8.EnumC2757f;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.d0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1691d0 extends AbstractC2753b {

    /* JADX INFO: renamed from: b */
    public Iterator f4366b;

    /* JADX INFO: renamed from: c */
    public volatile boolean f4367c;

    /* JADX INFO: renamed from: d */
    public boolean f4368d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ int f4369e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC3587d f4370f;

    public C1691d0(InterfaceC3587d interfaceC3587d, Iterator it, int i10) {
        this.f4369e = i10;
        this.f4366b = it;
        this.f4370f = interfaceC3587d;
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        this.f4367c = true;
    }

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
        this.f4366b = null;
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        if (EnumC2757f.m4278c(j10) && C1461d.m2502a(this, j10) == 0) {
            if (j10 == Long.MAX_VALUE) {
                switch (this.f4369e) {
                    case 0:
                        Iterator it = this.f4366b;
                        InterfaceC1498a interfaceC1498a = (InterfaceC1498a) this.f4370f;
                        while (!this.f4367c) {
                            try {
                                Object next = it.next();
                                if (this.f4367c) {
                                    break;
                                } else if (next == null) {
                                    interfaceC1498a.onError(new NullPointerException("Iterator.next() returned a null value"));
                                    break;
                                } else {
                                    interfaceC1498a.mo2580g(next);
                                    if (this.f4367c) {
                                        break;
                                    } else {
                                        try {
                                            if (!it.hasNext()) {
                                                if (!this.f4367c) {
                                                    interfaceC1498a.mo2804a();
                                                }
                                                break;
                                            }
                                        } catch (Throwable th) {
                                            AbstractC1031d.m1292v(th);
                                            interfaceC1498a.onError(th);
                                            return;
                                        }
                                    }
                                }
                            } catch (Throwable th2) {
                                AbstractC1031d.m1292v(th2);
                                interfaceC1498a.onError(th2);
                            }
                        }
                        break;
                    default:
                        Iterator it2 = this.f4366b;
                        InterfaceC3587d interfaceC3587d = this.f4370f;
                        while (!this.f4367c) {
                            try {
                                Object next2 = it2.next();
                                if (this.f4367c) {
                                    break;
                                } else if (next2 == null) {
                                    interfaceC3587d.onError(new NullPointerException("Iterator.next() returned a null value"));
                                    break;
                                } else {
                                    interfaceC3587d.mo2807e(next2);
                                    if (this.f4367c) {
                                        break;
                                    } else {
                                        try {
                                            if (!it2.hasNext()) {
                                                if (!this.f4367c) {
                                                    interfaceC3587d.mo2804a();
                                                }
                                                break;
                                            }
                                        } catch (Throwable th3) {
                                            AbstractC1031d.m1292v(th3);
                                            interfaceC3587d.onError(th3);
                                            return;
                                        }
                                    }
                                }
                            } catch (Throwable th4) {
                                AbstractC1031d.m1292v(th4);
                                interfaceC3587d.onError(th4);
                                return;
                            }
                        }
                        break;
                }
            }
            switch (this.f4369e) {
                case 0:
                    Iterator it3 = this.f4366b;
                    InterfaceC1498a interfaceC1498a2 = (InterfaceC1498a) this.f4370f;
                    do {
                        long j11 = 0;
                        while (true) {
                            if (j11 == j10) {
                                j10 = get();
                                if (j11 == j10) {
                                }
                            } else if (this.f4367c) {
                                break;
                            } else {
                                try {
                                    Object next3 = it3.next();
                                    if (this.f4367c) {
                                        break;
                                    } else if (next3 == null) {
                                        interfaceC1498a2.onError(new NullPointerException("Iterator.next() returned a null value"));
                                        break;
                                    } else {
                                        boolean zMo2580g = interfaceC1498a2.mo2580g(next3);
                                        if (this.f4367c) {
                                            break;
                                        } else {
                                            try {
                                                if (!it3.hasNext()) {
                                                    if (!this.f4367c) {
                                                        interfaceC1498a2.mo2804a();
                                                    }
                                                    break;
                                                } else if (zMo2580g) {
                                                    j11++;
                                                }
                                            } catch (Throwable th5) {
                                                AbstractC1031d.m1292v(th5);
                                                interfaceC1498a2.onError(th5);
                                                return;
                                            }
                                        }
                                    }
                                } catch (Throwable th6) {
                                    AbstractC1031d.m1292v(th6);
                                    interfaceC1498a2.onError(th6);
                                    return;
                                }
                            }
                        }
                        j10 = addAndGet(-j11);
                    } while (j10 != 0);
                    break;
                default:
                    Iterator it4 = this.f4366b;
                    InterfaceC3587d interfaceC3587d2 = this.f4370f;
                    do {
                        long j12 = 0;
                        while (true) {
                            if (j12 != j10) {
                                if (!this.f4367c) {
                                    try {
                                        Object next4 = it4.next();
                                        if (!this.f4367c) {
                                            if (next4 == null) {
                                                interfaceC3587d2.onError(new NullPointerException("Iterator.next() returned a null value"));
                                            } else {
                                                interfaceC3587d2.mo2807e(next4);
                                                if (!this.f4367c) {
                                                    try {
                                                        if (it4.hasNext()) {
                                                            j12++;
                                                        } else if (!this.f4367c) {
                                                            interfaceC3587d2.mo2804a();
                                                        }
                                                    } catch (Throwable th7) {
                                                        AbstractC1031d.m1292v(th7);
                                                        interfaceC3587d2.onError(th7);
                                                        return;
                                                    }
                                                }
                                            }
                                        }
                                    } catch (Throwable th8) {
                                        AbstractC1031d.m1292v(th8);
                                        interfaceC3587d2.onError(th8);
                                        return;
                                    }
                                }
                                break;
                            } else {
                                j10 = get();
                                if (j12 == j10) {
                                }
                            }
                        }
                        j10 = addAndGet(-j12);
                    } while (j10 != 0);
                    break;
            }
        }
    }

    @Override // p054e8.InterfaceC1500c
    /* JADX INFO: renamed from: h */
    public final int mo1220h(int i10) {
        return 1;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean isEmpty() {
        Iterator it = this.f4366b;
        return it == null || !it.hasNext();
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        Iterator it = this.f4366b;
        if (it == null) {
            return null;
        }
        if (!this.f4368d) {
            this.f4368d = true;
        } else if (!it.hasNext()) {
            return null;
        }
        Object next = this.f4366b.next();
        AbstractC1314b.m2356a(next, "Iterator.next() returned a null value");
        return next;
    }
}
