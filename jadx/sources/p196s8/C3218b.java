package p196s8;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p000a.AbstractC0000a;
import p032c7.C1008l;
import p045d8.AbstractC1314b;
import p171p8.AbstractC3002d;
import p171p8.C3001c;
import p171p8.C3003e;
import p171p8.EnumC3004f;
import p242x7.AbstractC3590g;
import p242x7.InterfaceC3591h;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: s8.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3218b extends AbstractC3590g implements InterfaceC3591h {

    /* JADX INFO: renamed from: h */
    public static final Object[] f9409h = new Object[0];

    /* JADX INFO: renamed from: i */
    public static final C3217a[] f9410i = new C3217a[0];

    /* JADX INFO: renamed from: j */
    public static final C3217a[] f9411j = new C3217a[0];

    /* JADX INFO: renamed from: b */
    public final AtomicReference f9412b;

    /* JADX INFO: renamed from: c */
    public final AtomicReference f9413c;

    /* JADX INFO: renamed from: d */
    public final Lock f9414d;

    /* JADX INFO: renamed from: e */
    public final Lock f9415e;

    /* JADX INFO: renamed from: f */
    public final AtomicReference f9416f;

    /* JADX INFO: renamed from: g */
    public long f9417g;

    public C3218b() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f9414d = reentrantReadWriteLock.readLock();
        this.f9415e = reentrantReadWriteLock.writeLock();
        this.f9413c = new AtomicReference(f9410i);
        this.f9412b = new AtomicReference();
        this.f9416f = new AtomicReference();
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: a */
    public final void mo2818a() {
        AtomicReference atomicReference;
        C3001c c3001c = AbstractC3002d.f8445a;
        do {
            atomicReference = this.f9416f;
            if (atomicReference.compareAndSet(null, c3001c)) {
                AtomicReference atomicReference2 = this.f9413c;
                C3217a[] c3217aArr = f9411j;
                C3217a[] c3217aArr2 = (C3217a[]) atomicReference2.getAndSet(c3217aArr);
                EnumC3004f enumC3004f = EnumC3004f.f8447b;
                if (c3217aArr2 != c3217aArr) {
                    Lock lock = this.f9415e;
                    lock.lock();
                    this.f9417g++;
                    this.f9412b.lazySet(enumC3004f);
                    lock.unlock();
                }
                for (C3217a c3217a : c3217aArr2) {
                    c3217a.m5155a(enumC3004f, this.f9417g);
                }
                return;
            }
        } while (atomicReference.get() == null);
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: b */
    public final void mo2819b(InterfaceC3762a interfaceC3762a) {
        if (this.f9416f.get() != null) {
            interfaceC3762a.dispose();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p242x7.AbstractC3590g
    /* JADX INFO: renamed from: d */
    public final void mo2897d(InterfaceC3591h interfaceC3591h) {
        C1008l c1008l;
        Object obj;
        C3217a c3217a = new C3217a(interfaceC3591h, this);
        interfaceC3591h.mo2819b(c3217a);
        AtomicReference atomicReference = this.f9413c;
        while (true) {
            C3217a[] c3217aArr = (C3217a[]) atomicReference.get();
            if (c3217aArr == f9411j) {
                Throwable th = (Throwable) this.f9416f.get();
                if (th == AbstractC3002d.f8445a) {
                    interfaceC3591h.mo2818a();
                    return;
                } else {
                    interfaceC3591h.onError(th);
                    return;
                }
            }
            int length = c3217aArr.length;
            C3217a[] c3217aArr2 = new C3217a[length + 1];
            System.arraycopy(c3217aArr, 0, c3217aArr2, 0, length);
            c3217aArr2[length] = c3217a;
            do {
                if (atomicReference.compareAndSet(c3217aArr, c3217aArr2)) {
                    if (c3217a.f9407h) {
                        m5156f(c3217a);
                        return;
                    }
                    if (c3217a.f9407h) {
                        return;
                    }
                    synchronized (c3217a) {
                        try {
                            if (c3217a.f9407h) {
                                return;
                            }
                            if (c3217a.f9403d) {
                                return;
                            }
                            C3218b c3218b = c3217a.f9402c;
                            Lock lock = c3218b.f9414d;
                            lock.lock();
                            c3217a.f9408i = c3218b.f9417g;
                            Object obj2 = c3218b.f9412b.get();
                            lock.unlock();
                            c3217a.f9404e = obj2 != null;
                            c3217a.f9403d = true;
                            if (obj2 == null || c3217a.test(obj2)) {
                                return;
                            }
                            while (!c3217a.f9407h) {
                                synchronized (c3217a) {
                                    try {
                                        c1008l = c3217a.f9405f;
                                        if (c1008l == null) {
                                            c3217a.f9404e = false;
                                            return;
                                        }
                                        c3217a.f9405f = null;
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                                for (Object[] objArr = (Object[]) c1008l.f1009c; objArr != null; objArr = objArr[4]) {
                                    for (int i10 = 0; i10 < 4 && (obj = objArr[i10]) != null; i10++) {
                                        if (c3217a.test(obj)) {
                                            break;
                                        }
                                    }
                                }
                            }
                            return;
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
            } while (atomicReference.get() == c3217aArr);
        }
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: e */
    public final void mo2820e(Object obj) {
        AbstractC1314b.m2356a(obj, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f9416f.get() != null) {
            return;
        }
        Lock lock = this.f9415e;
        lock.lock();
        this.f9417g++;
        this.f9412b.lazySet(obj);
        lock.unlock();
        for (C3217a c3217a : (C3217a[]) this.f9413c.get()) {
            c3217a.m5155a(obj, this.f9417g);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: f */
    public final void m5156f(C3217a c3217a) {
        C3217a[] c3217aArr;
        while (true) {
            AtomicReference atomicReference = this.f9413c;
            C3217a[] c3217aArr2 = (C3217a[]) atomicReference.get();
            int length = c3217aArr2.length;
            if (length == 0) {
                return;
            }
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    i10 = -1;
                    break;
                } else if (c3217aArr2[i10] == c3217a) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 < 0) {
                return;
            }
            if (length == 1) {
                c3217aArr = f9410i;
            } else {
                C3217a[] c3217aArr3 = new C3217a[length - 1];
                System.arraycopy(c3217aArr2, 0, c3217aArr3, 0, i10);
                System.arraycopy(c3217aArr2, i10 + 1, c3217aArr3, i10, (length - i10) - 1);
                c3217aArr = c3217aArr3;
            }
            while (!atomicReference.compareAndSet(c3217aArr2, c3217aArr)) {
                if (atomicReference.get() != c3217aArr2) {
                }
            }
            return;
        }
    }

    @Override // p242x7.InterfaceC3591h
    public final void onError(Throwable th) {
        AtomicReference atomicReference;
        AbstractC1314b.m2356a(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        do {
            atomicReference = this.f9416f;
            if (atomicReference.compareAndSet(null, th)) {
                C3003e c3003e = new C3003e(th);
                AtomicReference atomicReference2 = this.f9413c;
                C3217a[] c3217aArr = f9411j;
                C3217a[] c3217aArr2 = (C3217a[]) atomicReference2.getAndSet(c3217aArr);
                if (c3217aArr2 != c3217aArr) {
                    Lock lock = this.f9415e;
                    lock.lock();
                    this.f9417g++;
                    this.f9412b.lazySet(c3003e);
                    lock.unlock();
                }
                for (C3217a c3217a : c3217aArr2) {
                    c3217a.m5155a(c3003e, this.f9417g);
                }
                return;
            }
        } while (atomicReference.get() == null);
        AbstractC0000a.m18s(th);
    }
}
