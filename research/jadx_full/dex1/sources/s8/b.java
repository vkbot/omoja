package s8;

import c7.l;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p8.c;
import p8.d;
import p8.e;
import p8.f;
import x7.g;
import x7.h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends g implements h {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Object[] f5321h = new Object[0];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a[] f5322i = new a[0];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a[] f5323j = new a[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f5324b;
    public final AtomicReference c;
    public final Lock d;
    public final Lock e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicReference f5325f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f5326g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.d = reentrantReadWriteLock.readLock();
        this.e = reentrantReadWriteLock.writeLock();
        this.c = new AtomicReference(f5322i);
        this.f5324b = new AtomicReference();
        this.f5325f = new AtomicReference();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void a() {
        AtomicReference atomicReference;
        c cVar = d.f4702a;
        do {
            atomicReference = this.f5325f;
            if (atomicReference.compareAndSet(null, cVar)) {
                AtomicReference atomicReference2 = this.c;
                a[] aVarArr = f5323j;
                a[] aVarArr2 = (a[]) atomicReference2.getAndSet(aVarArr);
                f fVar = f.f4704b;
                if (aVarArr2 != aVarArr) {
                    Lock lock = this.e;
                    lock.lock();
                    this.f5326g++;
                    this.f5324b.lazySet(fVar);
                    lock.unlock();
                }
                for (a aVar : aVarArr2) {
                    aVar.a(fVar, this.f5326g);
                }
                return;
            }
        } while (atomicReference.get() == null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void b(z7.a aVar) {
        if (this.f5325f.get() != null) {
            aVar.dispose();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v4, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // x7.g
    public final void d(h hVar) {
        l lVar;
        Object obj;
        a aVar = new a(hVar, this);
        hVar.b(aVar);
        AtomicReference atomicReference = this.c;
        while (true) {
            a[] aVarArr = (a[]) atomicReference.get();
            if (aVarArr == f5323j) {
                Throwable th = (Throwable) this.f5325f.get();
                if (th == d.f4702a) {
                    hVar.a();
                    return;
                } else {
                    hVar.onError(th);
                    return;
                }
            }
            int length = aVarArr.length;
            a[] aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
            do {
                if (atomicReference.compareAndSet(aVarArr, aVarArr2)) {
                    if (aVar.f5319h) {
                        f(aVar);
                        return;
                    }
                    if (aVar.f5319h) {
                        return;
                    }
                    synchronized (aVar) {
                        try {
                            if (aVar.f5319h) {
                                return;
                            }
                            if (aVar.d) {
                                return;
                            }
                            b bVar = aVar.c;
                            Lock lock = bVar.d;
                            lock.lock();
                            aVar.f5320i = bVar.f5326g;
                            Object obj2 = bVar.f5324b.get();
                            lock.unlock();
                            aVar.e = obj2 != null;
                            aVar.d = true;
                            if (obj2 == null || aVar.test(obj2)) {
                                return;
                            }
                            while (!aVar.f5319h) {
                                synchronized (aVar) {
                                    try {
                                        lVar = aVar.f5317f;
                                        if (lVar == null) {
                                            aVar.e = false;
                                            return;
                                        }
                                        aVar.f5317f = null;
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                                for (Object[] objArr = (Object[]) lVar.c; objArr != null; objArr = objArr[4]) {
                                    for (int i9 = 0; i9 < 4 && (obj = objArr[i9]) != null; i9++) {
                                        if (aVar.test(obj)) {
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
            } while (atomicReference.get() == aVarArr);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void e(Object obj) {
        d8.b.a(obj, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f5325f.get() != null) {
            return;
        }
        Lock lock = this.e;
        lock.lock();
        this.f5326g++;
        this.f5324b.lazySet(obj);
        lock.unlock();
        for (a aVar : (a[]) this.c.get()) {
            aVar.a(obj, this.f5326g);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v3, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    public final void f(a aVar) {
        a[] aVarArr;
        while (true) {
            AtomicReference atomicReference = this.c;
            a[] aVarArr2 = (a[]) atomicReference.get();
            int length = aVarArr2.length;
            if (length == 0) {
                return;
            }
            int i9 = 0;
            while (true) {
                if (i9 >= length) {
                    i9 = -1;
                    break;
                } else if (aVarArr2[i9] == aVar) {
                    break;
                } else {
                    i9++;
                }
            }
            if (i9 < 0) {
                return;
            }
            if (length == 1) {
                aVarArr = f5322i;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr2, 0, aVarArr3, 0, i9);
                System.arraycopy(aVarArr2, i9 + 1, aVarArr3, i9, (length - i9) - 1);
                aVarArr = aVarArr3;
            }
            while (!atomicReference.compareAndSet(aVarArr2, aVarArr)) {
                if (atomicReference.get() != aVarArr2) {
                }
            }
            return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void onError(Throwable th) {
        AtomicReference atomicReference;
        d8.b.a(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        do {
            atomicReference = this.f5325f;
            if (atomicReference.compareAndSet(null, th)) {
                e eVar = new e(th);
                AtomicReference atomicReference2 = this.c;
                a[] aVarArr = f5323j;
                a[] aVarArr2 = (a[]) atomicReference2.getAndSet(aVarArr);
                if (aVarArr2 != aVarArr) {
                    Lock lock = this.e;
                    lock.lock();
                    this.f5326g++;
                    this.f5324b.lazySet(eVar);
                    lock.unlock();
                }
                for (a aVar : aVarArr2) {
                    aVar.a(eVar, this.f5326g);
                }
                return;
            }
        } while (atomicReference.get() == null);
        a.a.s(th);
    }
}
