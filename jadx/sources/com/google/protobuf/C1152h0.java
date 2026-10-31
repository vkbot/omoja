package com.google.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.google.protobuf.h0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1152h0 extends AbstractC1158j0 {

    /* JADX INFO: renamed from: c */
    public static final Class f2691c = Collections.unmodifiableList(Collections.EMPTY_LIST).getClass();

    /* JADX INFO: renamed from: d */
    public static List m1988d(int i10, long j10, Object obj) {
        List list = (List) AbstractC1186s1.f2751c.m2098i(obj, j10);
        if (list.isEmpty()) {
            List c1146f0 = list instanceof InterfaceC1149g0 ? new C1146f0(i10) : new ArrayList(i10);
            AbstractC1186s1.m2121p(j10, obj, c1146f0);
            return c1146f0;
        }
        if (f2691c.isAssignableFrom(list.getClass())) {
            ArrayList arrayList = new ArrayList(list.size() + i10);
            arrayList.addAll(list);
            AbstractC1186s1.m2121p(j10, obj, arrayList);
            return arrayList;
        }
        if (!(list instanceof C1171n1)) {
            return list;
        }
        C1146f0 c1146f1 = new C1146f0(list.size() + i10);
        c1146f1.addAll((C1171n1) list);
        AbstractC1186s1.m2121p(j10, obj, c1146f1);
        return c1146f1;
    }

    @Override // com.google.protobuf.AbstractC1158j0
    /* JADX INFO: renamed from: a */
    public final void mo1989a(Object obj, long j10) {
        Object objUnmodifiableList;
        List list = (List) AbstractC1186s1.f2751c.m2098i(obj, j10);
        if (list instanceof InterfaceC1149g0) {
            objUnmodifiableList = ((InterfaceC1149g0) list).mo1951S();
        } else if (f2691c.isAssignableFrom(list.getClass())) {
            return;
        } else {
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        AbstractC1186s1.m2121p(j10, obj, objUnmodifiableList);
    }

    @Override // com.google.protobuf.AbstractC1158j0
    /* JADX INFO: renamed from: b */
    public final void mo1990b(long j10, Object obj, Object obj2) {
        List list = (List) AbstractC1186s1.f2751c.m2098i(obj2, j10);
        List listM1988d = m1988d(list.size(), j10, obj);
        int size = listM1988d.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            listM1988d.addAll(list);
        }
        if (size > 0) {
            list = listM1988d;
        }
        AbstractC1186s1.m2121p(j10, obj, list);
    }

    @Override // com.google.protobuf.AbstractC1158j0
    /* JADX INFO: renamed from: c */
    public final List mo1991c(Object obj, long j10) {
        return m1988d(10, j10, obj);
    }
}
