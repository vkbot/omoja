package androidx.core.view;

import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e implements LifecycleEventObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MenuHostHelper f158b;
    public final /* synthetic */ Lifecycle$State c;
    public final /* synthetic */ MenuProvider d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(MenuHostHelper menuHostHelper, Lifecycle$State lifecycle$State, MenuProvider menuProvider) {
        this.f158b = menuHostHelper;
        this.c = lifecycle$State;
        this.d = menuProvider;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        MenuHostHelper.a(this.f158b, this.c, this.d, lifecycleOwner, lifecycle$Event);
    }
}
