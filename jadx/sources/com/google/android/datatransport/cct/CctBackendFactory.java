package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import p017b2.C0883c;
import p049e2.AbstractC1455c;
import p049e2.C1454b;
import p049e2.InterfaceC1457e;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Keep
public class CctBackendFactory {
    public InterfaceC1457e create(AbstractC1455c abstractC1455c) {
        C1454b c1454b = (C1454b) abstractC1455c;
        return new C0883c(c1454b.f3528a, c1454b.f3529b, c1454b.f3530c);
    }
}
