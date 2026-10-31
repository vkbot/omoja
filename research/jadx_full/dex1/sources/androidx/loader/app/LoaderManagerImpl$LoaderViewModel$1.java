package androidx.loader.app;

import androidx.annotation.NonNull;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider$Factory;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LoaderManagerImpl$LoaderViewModel$1 implements ViewModelProvider$Factory {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.ViewModelProvider$Factory
    @NonNull
    public <T extends ViewModel> T create(@NonNull Class<T> cls) {
        return new LoaderManagerImpl$LoaderViewModel();
    }
}
