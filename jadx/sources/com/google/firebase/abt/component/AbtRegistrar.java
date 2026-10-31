package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.net.ftp.C2930a;
import p016b1.AbstractC0880u;
import p062f5.C1541b0;
import p063f6.C1580d;
import p176q4.C3061a;
import p200t4.C3240a;
import p200t4.C3247h;
import p200t4.InterfaceC3241b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Keep
public class AbtRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-abt";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ C3061a lambda$getComponents$0(InterfaceC3241b interfaceC3241b) {
        return new C3061a((Context) interfaceC3241b.mo2240b(Context.class), interfaceC3241b.mo2241c(C1541b0.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<C3240a> getComponents() {
        C1580d c1580dM5180a = C3240a.m5180a(C3061a.class);
        c1580dM5180a.f3909a = LIBRARY_NAME;
        c1580dM5180a.m2664a(C3247h.m5187a(Context.class));
        c1580dM5180a.m2664a(new C3247h(0, 1, C1541b0.class));
        c1580dM5180a.f3914f = new C2930a(4);
        return Arrays.asList(c1580dM5180a.m2665b(), AbstractC0880u.m997d(LIBRARY_NAME, "21.1.1"));
    }
}
