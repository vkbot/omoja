package androidx.core.view;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleOwner;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface MenuHost {
    void addMenuProvider(@NonNull MenuProvider menuProvider);

    void addMenuProvider(@NonNull MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner);

    void addMenuProvider(@NonNull MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle$State lifecycle$State);

    void invalidateMenu();

    void removeMenuProvider(@NonNull MenuProvider menuProvider);
}
