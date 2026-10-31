package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import java.util.ArrayList;
import java.util.HashSet;
import p025c0.AbstractC0947p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
final class LifecycleLifecycle implements InterfaceC1062h, LifecycleObserver {

    /* JADX INFO: renamed from: b */
    public final HashSet f1149b = new HashSet();

    /* JADX INFO: renamed from: c */
    public final Lifecycle f1150c;

    public LifecycleLifecycle(Lifecycle lifecycle) {
        this.f1150c = lifecycle;
        lifecycle.addObserver(this);
    }

    @Override // com.bumptech.glide.manager.InterfaceC1062h
    /* JADX INFO: renamed from: a */
    public final void mo1334a(InterfaceC1063i interfaceC1063i) {
        this.f1149b.add(interfaceC1063i);
        Lifecycle lifecycle = this.f1150c;
        if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
            interfaceC1063i.mo1337c();
        } else if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            interfaceC1063i.onStart();
        } else {
            interfaceC1063i.mo1338e();
        }
    }

    @Override // com.bumptech.glide.manager.InterfaceC1062h
    /* JADX INFO: renamed from: b */
    public final void mo1335b(InterfaceC1063i interfaceC1063i) {
        this.f1149b.remove(interfaceC1063i);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy(@NonNull LifecycleOwner lifecycleOwner) {
        ArrayList arrayListM1088e = AbstractC0947p.m1088e(this.f1149b);
        int size = arrayListM1088e.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayListM1088e.get(i10);
            i10++;
            ((InterfaceC1063i) obj).mo1337c();
        }
        lifecycleOwner.getLifecycle().removeObserver(this);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart(@NonNull LifecycleOwner lifecycleOwner) {
        ArrayList arrayListM1088e = AbstractC0947p.m1088e(this.f1149b);
        int size = arrayListM1088e.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayListM1088e.get(i10);
            i10++;
            ((InterfaceC1063i) obj).onStart();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop(@NonNull LifecycleOwner lifecycleOwner) {
        ArrayList arrayListM1088e = AbstractC0947p.m1088e(this.f1149b);
        int size = arrayListM1088e.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayListM1088e.get(i10);
            i10++;
            ((InterfaceC1063i) obj).mo1338e();
        }
    }
}
