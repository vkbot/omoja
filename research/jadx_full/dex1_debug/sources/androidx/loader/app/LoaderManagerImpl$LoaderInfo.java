package androidx.loader.app;

import ai.onnxruntime.a;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.DebugUtils;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.loader.content.Loader;
import androidx.loader.content.Loader$OnLoadCompleteListener;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LoaderManagerImpl$LoaderInfo<D> extends MutableLiveData<D> implements Loader$OnLoadCompleteListener<D> {

    @Nullable
    private final Bundle mArgs;
    private final int mId;
    private LifecycleOwner mLifecycleOwner;

    @NonNull
    private final Loader<D> mLoader;
    private LoaderManagerImpl$LoaderObserver<D> mObserver;
    private Loader<D> mPriorLoader;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LoaderManagerImpl$LoaderInfo(int i9, @Nullable Bundle bundle, @NonNull Loader<D> loader, @Nullable Loader<D> loader2) {
        this.mId = i9;
        this.mArgs = bundle;
        this.mLoader = loader;
        this.mPriorLoader = loader2;
        loader.registerListener(i9, this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public Loader<D> destroy(boolean z8) {
        if (LoaderManagerImpl.DEBUG) {
            Log.v("LoaderManager", "  Destroying: " + this);
        }
        this.mLoader.cancelLoad();
        this.mLoader.abandon();
        LoaderManagerImpl$LoaderObserver<D> loaderManagerImpl$LoaderObserver = this.mObserver;
        if (loaderManagerImpl$LoaderObserver != null) {
            removeObserver(loaderManagerImpl$LoaderObserver);
            if (z8) {
                loaderManagerImpl$LoaderObserver.reset();
            }
        }
        this.mLoader.unregisterListener(this);
        if ((loaderManagerImpl$LoaderObserver == null || loaderManagerImpl$LoaderObserver.hasDeliveredData()) && !z8) {
            return this.mLoader;
        }
        this.mLoader.reset();
        return this.mPriorLoader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.mId);
        printWriter.print(" mArgs=");
        printWriter.println(this.mArgs);
        printWriter.print(str);
        printWriter.print("mLoader=");
        printWriter.println(this.mLoader);
        this.mLoader.dump(a.C(str, "  "), fileDescriptor, printWriter, strArr);
        if (this.mObserver != null) {
            printWriter.print(str);
            printWriter.print("mCallbacks=");
            printWriter.println(this.mObserver);
            this.mObserver.dump(a.C(str, "  "), printWriter);
        }
        printWriter.print(str);
        printWriter.print("mData=");
        printWriter.println(getLoader().dataToString(getValue()));
        printWriter.print(str);
        printWriter.print("mStarted=");
        printWriter.println(hasActiveObservers());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Loader<D> getLoader() {
        return this.mLoader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isCallbackWaitingForData() {
        LoaderManagerImpl$LoaderObserver<D> loaderManagerImpl$LoaderObserver;
        return (!hasActiveObservers() || (loaderManagerImpl$LoaderObserver = this.mObserver) == null || loaderManagerImpl$LoaderObserver.hasDeliveredData()) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void markForRedelivery() {
        LifecycleOwner lifecycleOwner = this.mLifecycleOwner;
        LoaderManagerImpl$LoaderObserver<D> loaderManagerImpl$LoaderObserver = this.mObserver;
        if (lifecycleOwner == null || loaderManagerImpl$LoaderObserver == null) {
            return;
        }
        super.removeObserver(loaderManagerImpl$LoaderObserver);
        observe(lifecycleOwner, loaderManagerImpl$LoaderObserver);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LiveData
    public void onActive() {
        if (LoaderManagerImpl.DEBUG) {
            Log.v("LoaderManager", "  Starting: " + this);
        }
        this.mLoader.startLoading();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LiveData
    public void onInactive() {
        if (LoaderManagerImpl.DEBUG) {
            Log.v("LoaderManager", "  Stopping: " + this);
        }
        this.mLoader.stopLoading();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.loader.content.Loader$OnLoadCompleteListener
    public void onLoadComplete(@NonNull Loader<D> loader, @Nullable D d) {
        if (LoaderManagerImpl.DEBUG) {
            Log.v("LoaderManager", "onLoadComplete: " + this);
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            setValue(d);
            return;
        }
        if (LoaderManagerImpl.DEBUG) {
            Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
        }
        postValue(d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: androidx.lifecycle.Observer<? super D> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.lifecycle.LiveData
    public void removeObserver(@NonNull Observer<? super D> observer) {
        super.removeObserver(observer);
        this.mLifecycleOwner = null;
        this.mObserver = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @MainThread
    public Loader<D> setCallback(@NonNull LifecycleOwner lifecycleOwner, @NonNull LoaderManager$LoaderCallbacks<D> loaderManager$LoaderCallbacks) {
        LoaderManagerImpl$LoaderObserver<D> loaderManagerImpl$LoaderObserver = new LoaderManagerImpl$LoaderObserver<>(this.mLoader, loaderManager$LoaderCallbacks);
        observe(lifecycleOwner, loaderManagerImpl$LoaderObserver);
        LoaderManagerImpl$LoaderObserver<D> loaderManagerImpl$LoaderObserver2 = this.mObserver;
        if (loaderManagerImpl$LoaderObserver2 != null) {
            removeObserver(loaderManagerImpl$LoaderObserver2);
        }
        this.mLifecycleOwner = lifecycleOwner;
        this.mObserver = loaderManagerImpl$LoaderObserver;
        return this.mLoader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
    public void setValue(D d) {
        super.setValue(d);
        Loader<D> loader = this.mPriorLoader;
        if (loader != null) {
            loader.reset();
            this.mPriorLoader = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("LoaderInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" #");
        sb.append(this.mId);
        sb.append(" : ");
        DebugUtils.buildShortClassTag(this.mLoader, sb);
        sb.append("}}");
        return sb.toString();
    }
}
