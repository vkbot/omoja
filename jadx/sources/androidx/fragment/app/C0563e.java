package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.savedstate.SavedStateRegistry;

/* JADX INFO: renamed from: androidx.fragment.app.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0563e implements SavedStateRegistry.SavedStateProvider {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f447a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f448b;

    public /* synthetic */ C0563e(int i10, Object obj) {
        this.f447a = i10;
        this.f448b = obj;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle saveState() {
        switch (this.f447a) {
            case 0:
                return ((FragmentActivity) this.f448b).lambda$init$0();
            case 1:
                return ((FragmentManager) this.f448b).lambda$attachController$4();
            default:
                return SavedStateHandle.savedStateProvider$lambda$0((SavedStateHandle) this.f448b);
        }
    }
}
