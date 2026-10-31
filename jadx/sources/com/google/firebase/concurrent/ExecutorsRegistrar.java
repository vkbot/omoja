package com.google.firebase.concurrent;

import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import org.apache.commons.net.ftp.C2930a;
import p050e3.C1461d;
import p063f6.C1580d;
import p193s4.InterfaceC3205a;
import p193s4.InterfaceC3206b;
import p193s4.InterfaceC3207c;
import p193s4.InterfaceC3208d;
import p200t4.C3240a;
import p200t4.C3243d;
import p200t4.C3251l;
import p200t4.C3255p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ExecutorsRegistrar implements ComponentRegistrar {

    /* JADX INFO: renamed from: a */
    public static final C3251l f2617a = new C3251l(new C3243d(2));

    /* JADX INFO: renamed from: b */
    public static final C3251l f2618b = new C3251l(new C3243d(3));

    /* JADX INFO: renamed from: c */
    public static final C3251l f2619c = new C3251l(new C3243d(4));

    /* JADX INFO: renamed from: d */
    public static final C3251l f2620d = new C3251l(new C3243d(5));

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        C3255p c3255p = new C3255p(InterfaceC3205a.class, ScheduledExecutorService.class);
        C3255p[] c3255pArr = {new C3255p(InterfaceC3205a.class, ExecutorService.class), new C3255p(InterfaceC3205a.class, Executor.class)};
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(c3255p);
        for (C3255p c3255p2 : c3255pArr) {
            C1461d.m2504c(c3255p2, "Null interface");
        }
        Collections.addAll(hashSet, c3255pArr);
        C3240a c3240a = new C3240a(null, new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new C2930a(8), hashSet3);
        C3255p c3255p3 = new C3255p(InterfaceC3206b.class, ScheduledExecutorService.class);
        C3255p[] c3255pArr2 = {new C3255p(InterfaceC3206b.class, ExecutorService.class), new C3255p(InterfaceC3206b.class, Executor.class)};
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        HashSet hashSet6 = new HashSet();
        hashSet4.add(c3255p3);
        for (C3255p c3255p4 : c3255pArr2) {
            C1461d.m2504c(c3255p4, "Null interface");
        }
        Collections.addAll(hashSet4, c3255pArr2);
        C3240a c3240a2 = new C3240a(null, new HashSet(hashSet4), new HashSet(hashSet5), 0, 0, new C2930a(9), hashSet6);
        C3255p c3255p5 = new C3255p(InterfaceC3207c.class, ScheduledExecutorService.class);
        C3255p[] c3255pArr3 = {new C3255p(InterfaceC3207c.class, ExecutorService.class), new C3255p(InterfaceC3207c.class, Executor.class)};
        HashSet hashSet7 = new HashSet();
        HashSet hashSet8 = new HashSet();
        HashSet hashSet9 = new HashSet();
        hashSet7.add(c3255p5);
        for (C3255p c3255p6 : c3255pArr3) {
            C1461d.m2504c(c3255p6, "Null interface");
        }
        Collections.addAll(hashSet7, c3255pArr3);
        C3240a c3240a3 = new C3240a(null, new HashSet(hashSet7), new HashSet(hashSet8), 0, 0, new C2930a(10), hashSet9);
        C1580d c1580dM5181b = C3240a.m5181b(new C3255p(InterfaceC3208d.class, Executor.class));
        c1580dM5181b.f3914f = new C2930a(11);
        return Arrays.asList(c3240a, c3240a2, c3240a3, c1580dM5181b.m2665b());
    }
}
