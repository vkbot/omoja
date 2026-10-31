package p157o7;

import java.text.MessageFormat;
import java.util.logging.Level;
import p148n7.AbstractC2503e;
import p148n7.C2492a0;

/* JADX INFO: renamed from: o7.j1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2655j1 extends AbstractC2503e {

    /* JADX INFO: renamed from: b */
    public C2492a0 f7537b;

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: m */
    public final void mo3905m(int i10, String str) {
        C2492a0 c2492a0 = this.f7537b;
        Level levelM4187F = C2671m.m4187F(i10);
        if (C2683o.f7646c.isLoggable(levelM4187F)) {
            C2683o.m4191a(c2492a0, levelM4187F, str);
        }
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: n */
    public final void mo3906n(int i10, String str, Object... objArr) {
        C2492a0 c2492a0 = this.f7537b;
        Level levelM4187F = C2671m.m4187F(i10);
        if (C2683o.f7646c.isLoggable(levelM4187F)) {
            C2683o.m4191a(c2492a0, levelM4187F, MessageFormat.format(str, objArr));
        }
    }
}
