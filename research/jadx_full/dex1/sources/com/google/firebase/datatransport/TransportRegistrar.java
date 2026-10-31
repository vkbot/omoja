package com.google.firebase.datatransport;

import a2.c;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import b1.u;
import b2.a;
import com.google.firebase.components.ComponentRegistrar;
import d2.h;
import d2.s;
import f6.d;
import java.util.Arrays;
import java.util.List;
import t4.b;
import t4.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Keep
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ c a(h hVar) {
        return lambda$getComponents$2(hVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ c b(h hVar) {
        return lambda$getComponents$1(hVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ c c(h hVar) {
        return lambda$getComponents$0(hVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ c lambda$getComponents$0(b bVar) {
        s.b((Context) bVar.b(Context.class));
        return s.a().c(a.f296f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ c lambda$getComponents$1(b bVar) {
        s.b((Context) bVar.b(Context.class));
        return s.a().c(a.f296f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ c lambda$getComponents$2(b bVar) {
        s.b((Context) bVar.b(Context.class));
        return s.a().c(a.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.firebase.components.ComponentRegistrar
    @NonNull
    public List<t4.a> getComponents() {
        d dVarA = t4.a.a(c.class);
        dVarA.f2261a = LIBRARY_NAME;
        dVarA.a(t4.h.a(Context.class));
        dVarA.f2263f = new org.apache.commons.net.ftp.a(12);
        t4.a aVarB = dVarA.b();
        d dVarB = t4.a.b(new p(v4.a.class, c.class));
        dVarB.a(t4.h.a(Context.class));
        dVarB.f2263f = new org.apache.commons.net.ftp.a(13);
        t4.a aVarB2 = dVarB.b();
        d dVarB2 = t4.a.b(new p(v4.b.class, c.class));
        dVarB2.a(t4.h.a(Context.class));
        dVarB2.f2263f = new org.apache.commons.net.ftp.a(14);
        return Arrays.asList(aVarB, aVarB2, dVarB2.b(), u.d(LIBRARY_NAME, "18.2.0"));
    }
}
