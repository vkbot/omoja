package p033c8;

import com.bumptech.glide.AbstractC1031d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import p009a8.C0031c;
import p028c3.C0983i;
import p139m8.RunnableC2425m;
import p171p8.AbstractC3002d;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: c8.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1013c implements InterfaceC3762a {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1017b;

    /* JADX INFO: renamed from: c */
    public volatile boolean f1018c;

    /* JADX INFO: renamed from: d */
    public Object f1019d;

    public /* synthetic */ C1013c(int i10) {
        this.f1017b = i10;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m1221a(InterfaceC3762a interfaceC3762a) {
        switch (this.f1017b) {
            case 0:
                if (!this.f1018c) {
                    synchronized (this) {
                        try {
                            if (!this.f1018c) {
                                LinkedList linkedList = (LinkedList) this.f1019d;
                                if (linkedList == null) {
                                    linkedList = new LinkedList();
                                    this.f1019d = linkedList;
                                }
                                linkedList.add(interfaceC3762a);
                                return true;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                interfaceC3762a.dispose();
                return false;
            default:
                if (!this.f1018c) {
                    synchronized (this) {
                        try {
                            if (!this.f1018c) {
                                C0983i c0983i = (C0983i) this.f1019d;
                                if (c0983i == null) {
                                    c0983i = new C0983i();
                                    int iNumberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(15));
                                    c0983i.f929a = iNumberOfLeadingZeros - 1;
                                    c0983i.f931c = (int) (0.75f * iNumberOfLeadingZeros);
                                    c0983i.f932d = new Object[iNumberOfLeadingZeros];
                                    this.f1019d = c0983i;
                                }
                                c0983i.m1104a(interfaceC3762a);
                                return true;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
                interfaceC3762a.dispose();
                return false;
        }
    }

    /* JADX INFO: renamed from: b */
    public final boolean m1222b(InterfaceC3762a interfaceC3762a) {
        Object obj;
        switch (this.f1017b) {
            case 0:
                boolean z9 = false;
                if (!this.f1018c) {
                    synchronized (this) {
                        try {
                            if (!this.f1018c) {
                                LinkedList linkedList = (LinkedList) this.f1019d;
                                if (linkedList != null && linkedList.remove(interfaceC3762a)) {
                                    z9 = true;
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    break;
                }
                return z9;
            default:
                if (this.f1018c) {
                    return false;
                }
                synchronized (this) {
                    try {
                        if (this.f1018c) {
                            return false;
                        }
                        C0983i c0983i = (C0983i) this.f1019d;
                        if (c0983i != null) {
                            Object[] objArr = (Object[]) c0983i.f932d;
                            int i10 = c0983i.f929a;
                            int iHashCode = interfaceC3762a.hashCode() * (-1640531527);
                            int i11 = (iHashCode ^ (iHashCode >>> 16)) & i10;
                            Object obj2 = objArr[i11];
                            if (obj2 != null) {
                                if (obj2.equals(interfaceC3762a)) {
                                    c0983i.m1127x(i11, i10, objArr);
                                } else {
                                    do {
                                        i11 = (i11 + 1) & i10;
                                        obj = objArr[i11];
                                        if (obj == null) {
                                        }
                                    } while (!obj.equals(interfaceC3762a));
                                    c0983i.m1127x(i11, i10, objArr);
                                }
                                return true;
                            }
                        }
                        return false;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
        }
    }

    /* JADX INFO: renamed from: c */
    public final boolean m1223c(InterfaceC3762a interfaceC3762a) {
        switch (this.f1017b) {
            case 0:
                if (!m1222b(interfaceC3762a)) {
                    return false;
                }
                ((RunnableC2425m) interfaceC3762a).dispose();
                return true;
            default:
                if (!m1222b(interfaceC3762a)) {
                    return false;
                }
                interfaceC3762a.dispose();
                return true;
        }
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        switch (this.f1017b) {
            case 0:
                if (this.f1018c) {
                    return;
                }
                synchronized (this) {
                    try {
                        if (!this.f1018c) {
                            this.f1018c = true;
                            LinkedList linkedList = (LinkedList) this.f1019d;
                            ArrayList arrayList = null;
                            this.f1019d = null;
                            if (linkedList != null) {
                                Iterator it = linkedList.iterator();
                                while (it.hasNext()) {
                                    try {
                                        ((InterfaceC3762a) it.next()).dispose();
                                    } catch (Throwable th) {
                                        AbstractC1031d.m1292v(th);
                                        if (arrayList == null) {
                                            arrayList = new ArrayList();
                                        }
                                        arrayList.add(th);
                                    }
                                }
                                if (arrayList != null) {
                                    if (arrayList.size() != 1) {
                                        throw new C0031c(arrayList);
                                    }
                                    throw AbstractC3002d.m4815c((Throwable) arrayList.get(0));
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return;
            default:
                if (this.f1018c) {
                    return;
                }
                synchronized (this) {
                    try {
                        if (!this.f1018c) {
                            this.f1018c = true;
                            C0983i c0983i = (C0983i) this.f1019d;
                            ArrayList arrayList2 = null;
                            this.f1019d = null;
                            if (c0983i != null) {
                                for (Object obj : (Object[]) c0983i.f932d) {
                                    if (obj instanceof InterfaceC3762a) {
                                        try {
                                            ((InterfaceC3762a) obj).dispose();
                                        } catch (Throwable th3) {
                                            AbstractC1031d.m1292v(th3);
                                            if (arrayList2 == null) {
                                                arrayList2 = new ArrayList();
                                            }
                                            arrayList2.add(th3);
                                        }
                                    }
                                }
                                if (arrayList2 != null) {
                                    if (arrayList2.size() != 1) {
                                        throw new C0031c(arrayList2);
                                    }
                                    throw AbstractC3002d.m4815c((Throwable) arrayList2.get(0));
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        throw th4;
                    }
                }
                return;
        }
    }
}
