package p157o7;

import com.bumptech.glide.AbstractC1034g;
import java.text.MessageFormat;
import java.util.logging.Level;
import p148n7.AbstractC2503e;
import p148n7.C2492a0;
import p148n7.C2548w;
import p148n7.EnumC2546v;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2671m extends AbstractC2503e {

    /* JADX INFO: renamed from: b */
    public final C2683o f7620b;

    /* JADX INFO: renamed from: c */
    public final C2722u2 f7621c;

    public C2671m(C2683o c2683o, C2722u2 c2722u2) {
        this.f7620b = c2683o;
        AbstractC2587b.m4042i(c2722u2, "time");
        this.f7621c = c2722u2;
    }

    /* JADX INFO: renamed from: F */
    public static Level m4187F(int i10) {
        int iM1296c = AbstractC1034g.m1296c(i10);
        if (iM1296c != 1) {
            return (iM1296c == 2 || iM1296c == 3) ? Level.FINE : Level.FINEST;
        }
        return Level.FINER;
    }

    /* JADX INFO: renamed from: E */
    public final boolean m4188E(int i10) {
        if (i10 == 1) {
            return false;
        }
        synchronized (this.f7620b.f7647a) {
        }
        return false;
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: m */
    public final void mo3905m(int i10, String str) {
        EnumC2546v enumC2546v;
        C2683o c2683o = this.f7620b;
        C2492a0 c2492a0 = c2683o.f7648b;
        Level levelM4187F = m4187F(i10);
        if (C2683o.f7646c.isLoggable(levelM4187F)) {
            C2683o.m4191a(c2492a0, levelM4187F, str);
        }
        if (!m4188E(i10) || i10 == 1) {
            return;
        }
        int iM1296c = AbstractC1034g.m1296c(i10);
        if (iM1296c != 2) {
            enumC2546v = iM1296c != 3 ? EnumC2546v.f7033b : EnumC2546v.f7035d;
        } else {
            enumC2546v = EnumC2546v.f7034c;
        }
        EnumC2546v enumC2546v2 = enumC2546v;
        long jM4245q = this.f7621c.m4245q();
        AbstractC2587b.m4042i(str, "description");
        new C2548w(str, enumC2546v2, jM4245q, null);
        synchronized (c2683o.f7647a) {
        }
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: n */
    public final void mo3906n(int i10, String str, Object... objArr) {
        mo3905m(i10, (m4188E(i10) || C2683o.f7646c.isLoggable(m4187F(i10))) ? MessageFormat.format(str, objArr) : null);
    }
}
