package com.google.protobuf;

import java.util.List;

/* JADX INFO: renamed from: com.google.protobuf.i0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1155i0 extends AbstractC1158j0 {
    @Override // com.google.protobuf.AbstractC1158j0
    /* JADX INFO: renamed from: a */
    public final void mo1989a(Object obj, long j10) {
        AbstractC1132b abstractC1132b = (AbstractC1132b) ((InterfaceC1129a0) AbstractC1186s1.f2751c.m2098i(obj, j10));
        if (abstractC1132b.f2633b) {
            abstractC1132b.f2633b = false;
        }
    }

    @Override // com.google.protobuf.AbstractC1158j0
    /* JADX INFO: renamed from: b */
    public final void mo1990b(long j10, Object obj, Object obj2) {
        AbstractC1183r1 abstractC1183r1 = AbstractC1186s1.f2751c;
        InterfaceC1129a0 interfaceC1129a0Mo1896c = (InterfaceC1129a0) abstractC1183r1.m2098i(obj, j10);
        InterfaceC1129a0 interfaceC1129a0 = (InterfaceC1129a0) abstractC1183r1.m2098i(obj2, j10);
        int size = interfaceC1129a0Mo1896c.size();
        int size2 = interfaceC1129a0.size();
        if (size > 0 && size2 > 0) {
            if (!((AbstractC1132b) interfaceC1129a0Mo1896c).f2633b) {
                interfaceC1129a0Mo1896c = interfaceC1129a0Mo1896c.mo1896c(size2 + size);
            }
            interfaceC1129a0Mo1896c.addAll(interfaceC1129a0);
        }
        if (size > 0) {
            interfaceC1129a0 = interfaceC1129a0Mo1896c;
        }
        AbstractC1186s1.m2121p(j10, obj, interfaceC1129a0);
    }

    @Override // com.google.protobuf.AbstractC1158j0
    /* JADX INFO: renamed from: c */
    public final List mo1991c(Object obj, long j10) {
        InterfaceC1129a0 interfaceC1129a0 = (InterfaceC1129a0) AbstractC1186s1.f2751c.m2098i(obj, j10);
        if (((AbstractC1132b) interfaceC1129a0).f2633b) {
            return interfaceC1129a0;
        }
        int size = interfaceC1129a0.size();
        InterfaceC1129a0 interfaceC1129a0Mo1896c = interfaceC1129a0.mo1896c(size == 0 ? 10 : size * 2);
        AbstractC1186s1.m2121p(j10, obj, interfaceC1129a0Mo1896c);
        return interfaceC1129a0Mo1896c;
    }
}
