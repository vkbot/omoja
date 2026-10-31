package o7;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f4117b;
    public final Object c;
    public Object d;
    public Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a() {
        this.f4117b = new Object();
        this.c = new com.bumptech.glide.manager.t(6);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.v0
    public void b(t7.a aVar) {
        t4 t4Var = (t4) this.c;
        o4.b.m(((byte[]) this.d) == null, "writePayload should not be called multiple times");
        try {
            this.d = k4.g.b(aVar);
            n7.e[] eVarArr = t4Var.f4457a;
            n7.e[] eVarArr2 = t4Var.f4457a;
            for (n7.e eVar : eVarArr) {
                eVar.t(0);
            }
            byte[] bArr = (byte[]) this.d;
            long length = bArr.length;
            long length2 = bArr.length;
            for (n7.e eVar2 : t4Var.f4457a) {
                eVar2.u(0, length, length2);
            }
            long length3 = ((byte[]) this.d).length;
            for (n7.e eVar3 : eVarArr2) {
                eVar3.v(length3);
            }
            long length4 = ((byte[]) this.d).length;
            for (n7.e eVar4 : eVarArr2) {
                eVar4.w(length4);
            }
        } catch (IOException e) {
            n0.b.w(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.v0
    public void close() {
        this.f4116a = true;
        o4.b.m(((byte[]) this.d) != null, "Lack of request message. GET request is only supported for unary requests");
        ((p7.k) ((b) this.e)).f4655n.l((n7.v0) this.f4117b, (byte[]) this.d);
        this.d = null;
        this.f4117b = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object d() {
        Object obj;
        synchronized (this.f4117b) {
            try {
                if (!this.f4116a) {
                    throw new IllegalStateException("Task is not yet complete");
                }
                Exception exc = (Exception) this.e;
                if (exc != null) {
                    throw new a8.a(7, exc);
                }
                obj = this.d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean e() {
        boolean z8;
        synchronized (this.f4117b) {
            z8 = false;
            if (this.f4116a && ((Exception) this.e) == null) {
                z8 = true;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void f(Exception exc) {
        synchronized (this.f4117b) {
            h();
            this.f4116a = true;
            this.e = exc;
        }
        ((com.bumptech.glide.manager.t) this.c).n(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void g(Object obj) {
        synchronized (this.f4117b) {
            h();
            this.f4116a = true;
            this.d = obj;
        }
        ((com.bumptech.glide.manager.t) this.c).n(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void h() {
        boolean z8;
        Exception exc;
        String strConcat;
        if (this.f4116a) {
            synchronized (this.f4117b) {
                z8 = this.f4116a;
            }
            if (!z8) {
                throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
            }
            synchronized (this.f4117b) {
                exc = (Exception) this.e;
            }
            if (exc == null) {
                strConcat = e() ? "result ".concat(String.valueOf(d())) : "unknown issue";
            } else {
                strConcat = "failure";
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void i() {
        synchronized (this.f4117b) {
            try {
                if (this.f4116a) {
                    ((com.bumptech.glide.manager.t) this.c).n(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.v0
    public boolean isClosed() {
        return this.f4116a;
    }

    public a(b bVar, n7.v0 v0Var, t4 t4Var) {
        this.e = bVar;
        o4.b.i(v0Var, "headers");
        this.f4117b = v0Var;
        this.c = t4Var;
    }

    @Override // o7.v0
    public void flush() {
    }

    @Override // o7.v0
    public v0 a(n7.h hVar) {
        return this;
    }

    @Override // o7.v0
    public void c(int i9) {
    }
}
