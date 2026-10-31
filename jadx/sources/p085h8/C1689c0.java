package p085h8;

import p045d8.AbstractC1314b;
import p050e3.C1461d;
import p054e8.InterfaceC1498a;
import p158o8.AbstractC2753b;
import p158o8.EnumC2757f;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.c0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1689c0 extends AbstractC2753b {

    /* JADX INFO: renamed from: b */
    public final Object[] f4359b;

    /* JADX INFO: renamed from: c */
    public int f4360c;

    /* JADX INFO: renamed from: d */
    public volatile boolean f4361d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ int f4362e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC3587d f4363f;

    public C1689c0(InterfaceC3587d interfaceC3587d, Object[] objArr, int i10) {
        this.f4362e = i10;
        this.f4359b = objArr;
        this.f4363f = interfaceC3587d;
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        this.f4361d = true;
    }

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
        this.f4360c = this.f4359b.length;
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        if (EnumC2757f.m4278c(j10) && C1461d.m2502a(this, j10) == 0) {
            if (j10 == Long.MAX_VALUE) {
                switch (this.f4362e) {
                    case 0:
                        Object[] objArr = this.f4359b;
                        int length = objArr.length;
                        InterfaceC1498a interfaceC1498a = (InterfaceC1498a) this.f4363f;
                        int i10 = this.f4360c;
                        while (true) {
                            boolean z9 = this.f4361d;
                            if (i10 != length) {
                                if (!z9) {
                                    Object obj = objArr[i10];
                                    if (obj == null) {
                                        interfaceC1498a.onError(new NullPointerException("array element is null"));
                                    } else {
                                        interfaceC1498a.mo2580g(obj);
                                        i10++;
                                    }
                                }
                                break;
                            } else if (!z9) {
                                interfaceC1498a.mo2804a();
                                break;
                            }
                        }
                        break;
                    default:
                        Object[] objArr2 = this.f4359b;
                        int length2 = objArr2.length;
                        InterfaceC3587d interfaceC3587d = this.f4363f;
                        int i11 = this.f4360c;
                        while (true) {
                            boolean z10 = this.f4361d;
                            if (i11 != length2) {
                                if (!z10) {
                                    Object obj2 = objArr2[i11];
                                    if (obj2 == null) {
                                        interfaceC3587d.onError(new NullPointerException("array element is null"));
                                    } else {
                                        interfaceC3587d.mo2807e(obj2);
                                        i11++;
                                    }
                                }
                                break;
                            } else if (!z10) {
                                interfaceC3587d.mo2804a();
                                break;
                            }
                        }
                        break;
                }
            }
            switch (this.f4362e) {
                case 0:
                    Object[] objArr3 = this.f4359b;
                    int length3 = objArr3.length;
                    int i12 = this.f4360c;
                    InterfaceC1498a interfaceC1498a2 = (InterfaceC1498a) this.f4363f;
                    do {
                        long j11 = 0;
                        while (true) {
                            if (j11 != j10 && i12 != length3) {
                                if (!this.f4361d) {
                                    Object obj3 = objArr3[i12];
                                    if (obj3 == null) {
                                        interfaceC1498a2.onError(new NullPointerException("array element is null"));
                                    } else {
                                        if (interfaceC1498a2.mo2580g(obj3)) {
                                            j11++;
                                        }
                                        i12++;
                                    }
                                }
                                break;
                            } else if (i12 == length3) {
                                if (!this.f4361d) {
                                    interfaceC1498a2.mo2804a();
                                }
                                break;
                            } else {
                                j10 = get();
                                if (j11 == j10) {
                                }
                            }
                        }
                        this.f4360c = i12;
                        j10 = addAndGet(-j11);
                    } while (j10 != 0);
                    break;
                default:
                    Object[] objArr4 = this.f4359b;
                    int length4 = objArr4.length;
                    int i13 = this.f4360c;
                    InterfaceC3587d interfaceC3587d2 = this.f4363f;
                    do {
                        long j12 = 0;
                        while (true) {
                            if (j12 != j10 && i13 != length4) {
                                if (!this.f4361d) {
                                    Object obj4 = objArr4[i13];
                                    if (obj4 == null) {
                                        interfaceC3587d2.onError(new NullPointerException("array element is null"));
                                    } else {
                                        interfaceC3587d2.mo2807e(obj4);
                                        j12++;
                                        i13++;
                                    }
                                }
                                break;
                            } else if (i13 == length4) {
                                if (!this.f4361d) {
                                    interfaceC3587d2.mo2804a();
                                }
                                break;
                            } else {
                                j10 = get();
                                if (j12 == j10) {
                                }
                            }
                        }
                        this.f4360c = i13;
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
        return this.f4360c == this.f4359b.length;
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        int i10 = this.f4360c;
        Object[] objArr = this.f4359b;
        if (i10 == objArr.length) {
            return null;
        }
        this.f4360c = i10 + 1;
        Object obj = objArr[i10];
        AbstractC1314b.m2356a(obj, "array element is null");
        return obj;
    }
}
