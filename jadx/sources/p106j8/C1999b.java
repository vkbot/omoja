package p106j8;

import com.bumptech.glide.AbstractC1031d;
import p000a.AbstractC0000a;
import p010a9.C0061w;
import p033c8.EnumC1011a;
import p242x7.InterfaceC3591h;
import p242x7.InterfaceC3596m;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: j8.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1999b implements InterfaceC3591h, InterfaceC3762a {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5444b;

    /* JADX INFO: renamed from: c */
    public final C0061w f5445c;

    /* JADX INFO: renamed from: d */
    public InterfaceC3762a f5446d;

    /* JADX INFO: renamed from: e */
    public boolean f5447e;

    /* JADX INFO: renamed from: f */
    public final Object f5448f;

    public /* synthetic */ C1999b(Object obj, C0061w c0061w, int i10) {
        this.f5444b = i10;
        this.f5448f = obj;
        this.f5445c = c0061w;
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: a */
    public final void mo2818a() {
        switch (this.f5444b) {
            case 0:
                InterfaceC3591h interfaceC3591h = (InterfaceC3591h) this.f5448f;
                if (!this.f5447e) {
                    this.f5447e = true;
                    interfaceC3591h.mo2820e(Boolean.FALSE);
                    interfaceC3591h.mo2818a();
                }
                break;
            default:
                if (!this.f5447e) {
                    this.f5447e = true;
                    ((InterfaceC3596m) this.f5448f).mo239c(Boolean.FALSE);
                }
                break;
        }
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: b */
    public final void mo2819b(InterfaceC3762a interfaceC3762a) {
        switch (this.f5444b) {
            case 0:
                if (EnumC1011a.m1219e(this.f5446d, interfaceC3762a)) {
                    this.f5446d = interfaceC3762a;
                    ((InterfaceC3591h) this.f5448f).mo2819b(this);
                }
                break;
            default:
                if (EnumC1011a.m1219e(this.f5446d, interfaceC3762a)) {
                    this.f5446d = interfaceC3762a;
                    ((InterfaceC3596m) this.f5448f).mo238b(this);
                }
                break;
        }
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        switch (this.f5444b) {
            case 0:
                this.f5446d.dispose();
                break;
            default:
                this.f5446d.dispose();
                break;
        }
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: e */
    public final void mo2820e(Object obj) {
        switch (this.f5444b) {
            case 0:
                InterfaceC3591h interfaceC3591h = (InterfaceC3591h) this.f5448f;
                if (!this.f5447e) {
                    try {
                        if (this.f5445c.test(obj)) {
                            this.f5447e = true;
                            this.f5446d.dispose();
                            interfaceC3591h.mo2820e(Boolean.TRUE);
                            interfaceC3591h.mo2818a();
                        }
                    } catch (Throwable th) {
                        AbstractC1031d.m1292v(th);
                        this.f5446d.dispose();
                        onError(th);
                        return;
                    }
                    break;
                }
                break;
            default:
                if (!this.f5447e) {
                    try {
                        if (this.f5445c.test(obj)) {
                            this.f5447e = true;
                            this.f5446d.dispose();
                            ((InterfaceC3596m) this.f5448f).mo239c(Boolean.TRUE);
                        }
                    } catch (Throwable th2) {
                        AbstractC1031d.m1292v(th2);
                        this.f5446d.dispose();
                        onError(th2);
                    }
                    break;
                }
                break;
        }
    }

    @Override // p242x7.InterfaceC3591h
    public final void onError(Throwable th) {
        switch (this.f5444b) {
            case 0:
                if (!this.f5447e) {
                    this.f5447e = true;
                    ((InterfaceC3591h) this.f5448f).onError(th);
                } else {
                    AbstractC0000a.m18s(th);
                }
                break;
            default:
                if (!this.f5447e) {
                    this.f5447e = true;
                    ((InterfaceC3596m) this.f5448f).onError(th);
                } else {
                    AbstractC0000a.m18s(th);
                }
                break;
        }
    }
}
