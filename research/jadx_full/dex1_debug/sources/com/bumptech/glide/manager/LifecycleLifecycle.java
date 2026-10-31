package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
final class LifecycleLifecycle implements h, LifecycleObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f597b = new HashSet();
    public final Lifecycle c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LifecycleLifecycle(Lifecycle lifecycle) {
        this.c = lifecycle;
        lifecycle.addObserver(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.h
    public final void a(i iVar) {
        this.f597b.add(iVar);
        Lifecycle lifecycle = this.c;
        if (lifecycle.getState() == Lifecycle$State.DESTROYED) {
            iVar.c();
        } else if (lifecycle.getState().isAtLeast(Lifecycle$State.STARTED)) {
            iVar.onStart();
        } else {
            iVar.e();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.h
    public final void b(i iVar) {
        this.f597b.remove(iVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @OnLifecycleEvent(Lifecycle$Event.ON_DESTROY)
    public void onDestroy(@NonNull LifecycleOwner lifecycleOwner) {
        ArrayList arrayListE = c0.p.e(this.f597b);
        int size = arrayListE.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayListE.get(i9);
            i9++;
            ((i) obj).c();
        }
        lifecycleOwner.getLifecycle().removeObserver(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @OnLifecycleEvent(Lifecycle$Event.ON_START)
    public void onStart(@NonNull LifecycleOwner lifecycleOwner) {
        ArrayList arrayListE = c0.p.e(this.f597b);
        int size = arrayListE.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayListE.get(i9);
            i9++;
            ((i) obj).onStart();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @OnLifecycleEvent(Lifecycle$Event.ON_STOP)
    public void onStop(@NonNull LifecycleOwner lifecycleOwner) {
        ArrayList arrayListE = c0.p.e(this.f597b);
        int size = arrayListE.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayListE.get(i9);
            i9++;
            ((i) obj).e();
        }
    }
}
