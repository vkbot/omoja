package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.net.ftp.C2930a;
import p003a2.InterfaceC0006c;
import p016b1.AbstractC0880u;
import p017b2.C0881a;
import p039d2.C1263s;
import p063f6.C1580d;
import p200t4.C3240a;
import p200t4.C3247h;
import p200t4.C3255p;
import p200t4.InterfaceC3241b;
import p220v4.InterfaceC3336a;
import p220v4.InterfaceC3337b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Keep
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InterfaceC0006c lambda$getComponents$0(InterfaceC3241b interfaceC3241b) {
        C1263s.m2260b((Context) interfaceC3241b.mo2240b(Context.class));
        return C1263s.m2259a().m2261c(C0881a.f648f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InterfaceC0006c lambda$getComponents$1(InterfaceC3241b interfaceC3241b) {
        C1263s.m2260b((Context) interfaceC3241b.mo2240b(Context.class));
        return C1263s.m2259a().m2261c(C0881a.f648f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InterfaceC0006c lambda$getComponents$2(InterfaceC3241b interfaceC3241b) {
        C1263s.m2260b((Context) interfaceC3241b.mo2240b(Context.class));
        return C1263s.m2259a().m2261c(C0881a.f647e);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @NonNull
    public List<C3240a> getComponents() {
        C1580d c1580dM5180a = C3240a.m5180a(InterfaceC0006c.class);
        c1580dM5180a.f3909a = LIBRARY_NAME;
        c1580dM5180a.m2664a(C3247h.m5187a(Context.class));
        c1580dM5180a.f3914f = new C2930a(12);
        C3240a c3240aM2665b = c1580dM5180a.m2665b();
        C1580d c1580dM5181b = C3240a.m5181b(new C3255p(InterfaceC3336a.class, InterfaceC0006c.class));
        c1580dM5181b.m2664a(C3247h.m5187a(Context.class));
        c1580dM5181b.f3914f = new C2930a(13);
        C3240a c3240aM2665b2 = c1580dM5181b.m2665b();
        C1580d c1580dM5181b2 = C3240a.m5181b(new C3255p(InterfaceC3337b.class, InterfaceC0006c.class));
        c1580dM5181b2.m2664a(C3247h.m5187a(Context.class));
        c1580dM5181b2.f3914f = new C2930a(14);
        return Arrays.asList(c3240aM2665b, c3240aM2665b2, c1580dM5181b2.m2665b(), AbstractC0880u.m997d(LIBRARY_NAME, "18.2.0"));
    }
}
