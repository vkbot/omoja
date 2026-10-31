package com.google.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h0 extends j0 {
    public static final Class c = Collections.unmodifiableList(Collections.EMPTY_LIST).getClass();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static List d(int i9, long j9, Object obj) {
        List list = (List) s1.c.i(obj, j9);
        if (list.isEmpty()) {
            List f0Var = list instanceof g0 ? new f0(i9) : new ArrayList(i9);
            s1.p(j9, obj, f0Var);
            return f0Var;
        }
        if (c.isAssignableFrom(list.getClass())) {
            ArrayList arrayList = new ArrayList(list.size() + i9);
            arrayList.addAll(list);
            s1.p(j9, obj, arrayList);
            return arrayList;
        }
        if (!(list instanceof n1)) {
            return list;
        }
        f0 f0Var2 = new f0(list.size() + i9);
        f0Var2.addAll((n1) list);
        s1.p(j9, obj, f0Var2);
        return f0Var2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j0
    public final void a(Object obj, long j9) {
        Object objUnmodifiableList;
        List list = (List) s1.c.i(obj, j9);
        if (list instanceof g0) {
            objUnmodifiableList = ((g0) list).S();
        } else if (c.isAssignableFrom(list.getClass())) {
            return;
        } else {
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        s1.p(j9, obj, objUnmodifiableList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j0
    public final void b(long j9, Object obj, Object obj2) {
        List list = (List) s1.c.i(obj2, j9);
        List listD = d(list.size(), j9, obj);
        int size = listD.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            listD.addAll(list);
        }
        if (size > 0) {
            list = listD;
        }
        s1.p(j9, obj, list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j0
    public final List c(Object obj, long j9) {
        return d(10, j9, obj);
    }
}
