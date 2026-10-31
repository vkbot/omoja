package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.Keep;
import b1.u;
import com.google.firebase.components.ComponentRegistrar;
import d2.h;
import f5.b0;
import f6.d;
import java.util.Arrays;
import java.util.List;
import q4.a;
import t4.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Keep
public class AbtRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-abt";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ a a(h hVar) {
        return lambda$getComponents$0(hVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ a lambda$getComponents$0(b bVar) {
        return new a((Context) bVar.b(Context.class), bVar.c(b0.class));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<t4.a> getComponents() {
        d dVarA = t4.a.a(a.class);
        dVarA.f2261a = LIBRARY_NAME;
        dVarA.a(t4.h.a(Context.class));
        dVarA.a(new t4.h(0, 1, b0.class));
        dVarA.f2263f = new org.apache.commons.net.ftp.a(4);
        return Arrays.asList(dVarA.b(), u.d(LIBRARY_NAME, "21.1.1"));
    }
}
