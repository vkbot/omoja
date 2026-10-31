package com.google.protobuf;

import java.io.IOException;
import p028c3.C0983i;

/* JADX INFO: renamed from: com.google.protobuf.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1199x implements InterfaceC1200x0 {

    /* JADX INFO: renamed from: b */
    public static final C1175p f2793b = C1175p.m2056a();

    /* JADX INFO: renamed from: a */
    public final AbstractC1202y f2794a;

    public C1199x(AbstractC1202y abstractC1202y) {
        this.f2794a = abstractC1202y;
    }

    /* JADX INFO: renamed from: a */
    public final AbstractC1202y m2168a(AbstractC1157j abstractC1157j, C1175p c1175p) {
        AbstractC1202y abstractC1202yM2177k = this.f2794a.m2177k();
        try {
            C1203y0 c1203y0 = C1203y0.f2795c;
            c1203y0.getClass();
            InterfaceC1134b1 interfaceC1134b1M2179a = c1203y0.m2179a(abstractC1202yM2177k.getClass());
            C0983i c0983i = abstractC1157j.f2706c;
            if (c0983i == null) {
                c0983i = new C0983i(abstractC1157j);
            }
            interfaceC1134b1M2179a.mo1908h(abstractC1202yM2177k, c0983i, c1175p);
            interfaceC1134b1M2179a.mo1903c(abstractC1202yM2177k);
            return abstractC1202yM2177k;
        } catch (C1140d0 e) {
            if (e.f2654b) {
                throw new C1140d0(e.getMessage(), e);
            }
            throw e;
        } catch (C1156i1 e6) {
            throw new C1140d0(e6.getMessage());
        } catch (IOException e10) {
            if (e10.getCause() instanceof C1140d0) {
                throw ((C1140d0) e10.getCause());
            }
            throw new C1140d0(e10.getMessage(), e10);
        } catch (RuntimeException e11) {
            if (e11.getCause() instanceof C1140d0) {
                throw ((C1140d0) e11.getCause());
            }
            throw e11;
        }
    }
}
