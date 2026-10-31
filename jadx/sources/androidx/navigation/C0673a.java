package androidx.navigation;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.SavedStateRegistry;

/* JADX INFO: renamed from: androidx.navigation.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0673a implements LifecycleEventObserver {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f480b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f481c;

    public /* synthetic */ C0673a(int i10, Object obj) {
        this.f480b = i10;
        this.f481c = obj;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        switch (this.f480b) {
            case 0:
                NavController.lifecycleObserver$lambda$2((NavController) this.f481c, lifecycleOwner, event);
                break;
            default:
                SavedStateRegistry.performAttach$lambda$4((SavedStateRegistry) this.f481c, lifecycleOwner, event);
                break;
        }
    }
}
