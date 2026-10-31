package androidx.loader.app;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.loader.content.Loader;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface LoaderManager$LoaderCallbacks<D> {
    @NonNull
    @MainThread
    Loader<D> onCreateLoader(int i9, @Nullable Bundle bundle);

    @MainThread
    void onLoadFinished(@NonNull Loader<D> loader, D d);

    @MainThread
    void onLoaderReset(@NonNull Loader<D> loader);
}
