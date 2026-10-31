package androidx.loader.app;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.DebugUtils;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.loader.content.Loader;
import j1.i;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class LoaderManagerImpl extends LoaderManager {
    static boolean DEBUG = false;
    static final String TAG = "LoaderManager";

    @NonNull
    private final LifecycleOwner mLifecycleOwner;

    @NonNull
    private final LoaderManagerImpl$LoaderViewModel mLoaderViewModel;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LoaderManagerImpl(@NonNull LifecycleOwner lifecycleOwner, @NonNull ViewModelStore viewModelStore) {
        this.mLifecycleOwner = lifecycleOwner;
        this.mLoaderViewModel = LoaderManagerImpl$LoaderViewModel.getInstance(viewModelStore);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @MainThread
    private <D> Loader<D> createAndInstallLoader(int i9, @Nullable Bundle bundle, @NonNull LoaderManager$LoaderCallbacks<D> loaderManager$LoaderCallbacks, @Nullable Loader<D> loader) {
        try {
            this.mLoaderViewModel.startCreatingLoader();
            Loader<D> loaderOnCreateLoader = loaderManager$LoaderCallbacks.onCreateLoader(i9, bundle);
            if (loaderOnCreateLoader == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (loaderOnCreateLoader.getClass().isMemberClass() && !Modifier.isStatic(loaderOnCreateLoader.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + loaderOnCreateLoader);
            }
            LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo = new LoaderManagerImpl$LoaderInfo(i9, bundle, loaderOnCreateLoader, loader);
            if (DEBUG) {
                Log.v(TAG, "  Created new loader " + loaderManagerImpl$LoaderInfo);
            }
            this.mLoaderViewModel.putLoader(i9, loaderManagerImpl$LoaderInfo);
            this.mLoaderViewModel.finishCreatingLoader();
            return loaderManagerImpl$LoaderInfo.setCallback(this.mLifecycleOwner, loaderManager$LoaderCallbacks);
        } catch (Throwable th) {
            this.mLoaderViewModel.finishCreatingLoader();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.loader.app.LoaderManager
    @MainThread
    public void destroyLoader(int i9) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            i.l("Called while creating a loader");
            return;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            i.l("destroyLoader must be called on the main thread");
            return;
        }
        if (DEBUG) {
            Log.v(TAG, "destroyLoader in " + this + " of " + i9);
        }
        LoaderManagerImpl$LoaderInfo loader = this.mLoaderViewModel.getLoader(i9);
        if (loader != null) {
            loader.destroy(true);
            this.mLoaderViewModel.removeLoader(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.loader.app.LoaderManager
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.mLoaderViewModel.dump(str, fileDescriptor, printWriter, strArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.loader.app.LoaderManager
    @Nullable
    public <D> Loader<D> getLoader(int i9) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            i.l("Called while creating a loader");
            return null;
        }
        LoaderManagerImpl$LoaderInfo<D> loader = this.mLoaderViewModel.getLoader(i9);
        if (loader != null) {
            return loader.getLoader();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.loader.app.LoaderManager
    public boolean hasRunningLoaders() {
        return this.mLoaderViewModel.hasRunningLoaders();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.loader.app.LoaderManager
    @NonNull
    @MainThread
    public <D> Loader<D> initLoader(int i9, @Nullable Bundle bundle, @NonNull LoaderManager$LoaderCallbacks<D> loaderManager$LoaderCallbacks) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            i.l("Called while creating a loader");
            return null;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            i.l("initLoader must be called on the main thread");
            return null;
        }
        LoaderManagerImpl$LoaderInfo<D> loader = this.mLoaderViewModel.getLoader(i9);
        if (DEBUG) {
            Log.v(TAG, "initLoader in " + this + ": args=" + bundle);
        }
        if (loader == null) {
            return createAndInstallLoader(i9, bundle, loaderManager$LoaderCallbacks, null);
        }
        if (DEBUG) {
            Log.v(TAG, "  Re-using existing loader " + loader);
        }
        return loader.setCallback(this.mLifecycleOwner, loaderManager$LoaderCallbacks);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.loader.app.LoaderManager
    public void markForRedelivery() {
        this.mLoaderViewModel.markForRedelivery();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.loader.app.LoaderManager
    @NonNull
    @MainThread
    public <D> Loader<D> restartLoader(int i9, @Nullable Bundle bundle, @NonNull LoaderManager$LoaderCallbacks<D> loaderManager$LoaderCallbacks) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            i.l("Called while creating a loader");
            return null;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            i.l("restartLoader must be called on the main thread");
            return null;
        }
        if (DEBUG) {
            Log.v(TAG, "restartLoader in " + this + ": args=" + bundle);
        }
        LoaderManagerImpl$LoaderInfo<D> loader = this.mLoaderViewModel.getLoader(i9);
        return createAndInstallLoader(i9, bundle, loaderManager$LoaderCallbacks, loader != null ? loader.destroy(false) : null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.buildShortClassTag(this.mLifecycleOwner, sb);
        sb.append("}}");
        return sb.toString();
    }
}
