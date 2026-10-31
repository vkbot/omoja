package com.google.firebase.concurrent;

import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import s4.a;
import s4.b;
import s4.c;
import t4.d;
import t4.l;
import t4.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ExecutorsRegistrar implements ComponentRegistrar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f1464a = new l(new d(2));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final l f1465b = new l(new d(3));
    public static final l c = new l(new d(4));
    public static final l d = new l(new d(5));

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        p pVar = new p(a.class, ScheduledExecutorService.class);
        p[] pVarArr = {new p(a.class, ExecutorService.class), new p(a.class, Executor.class)};
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(pVar);
        for (p pVar2 : pVarArr) {
            e3.d.c(pVar2, "Null interface");
        }
        Collections.addAll(hashSet, pVarArr);
        t4.a aVar = new t4.a(null, new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new org.apache.commons.net.ftp.a(8), hashSet3);
        p pVar3 = new p(b.class, ScheduledExecutorService.class);
        p[] pVarArr2 = {new p(b.class, ExecutorService.class), new p(b.class, Executor.class)};
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        HashSet hashSet6 = new HashSet();
        hashSet4.add(pVar3);
        for (p pVar4 : pVarArr2) {
            e3.d.c(pVar4, "Null interface");
        }
        Collections.addAll(hashSet4, pVarArr2);
        t4.a aVar2 = new t4.a(null, new HashSet(hashSet4), new HashSet(hashSet5), 0, 0, new org.apache.commons.net.ftp.a(9), hashSet6);
        p pVar5 = new p(c.class, ScheduledExecutorService.class);
        p[] pVarArr3 = {new p(c.class, ExecutorService.class), new p(c.class, Executor.class)};
        HashSet hashSet7 = new HashSet();
        HashSet hashSet8 = new HashSet();
        HashSet hashSet9 = new HashSet();
        hashSet7.add(pVar5);
        for (p pVar6 : pVarArr3) {
            e3.d.c(pVar6, "Null interface");
        }
        Collections.addAll(hashSet7, pVarArr3);
        t4.a aVar3 = new t4.a(null, new HashSet(hashSet7), new HashSet(hashSet8), 0, 0, new org.apache.commons.net.ftp.a(10), hashSet9);
        f6.d dVarB = t4.a.b(new p(s4.d.class, Executor.class));
        dVarB.f2263f = new org.apache.commons.net.ftp.a(11);
        return Arrays.asList(aVar, aVar2, aVar3, dVarB.b());
    }
}
