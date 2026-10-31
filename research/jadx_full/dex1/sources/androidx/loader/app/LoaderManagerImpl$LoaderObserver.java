package androidx.loader.app;

import android.util.Log;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Observer;
import androidx.loader.content.Loader;
import java.io.PrintWriter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LoaderManagerImpl$LoaderObserver<D> implements Observer<D> {

    @NonNull
    private final LoaderManager$LoaderCallbacks<D> mCallback;
    private boolean mDeliveredData = false;

    @NonNull
    private final Loader<D> mLoader;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LoaderManagerImpl$LoaderObserver(@NonNull Loader<D> loader, @NonNull LoaderManager$LoaderCallbacks<D> loaderManager$LoaderCallbacks) {
        this.mLoader = loader;
        this.mCallback = loaderManager$LoaderCallbacks;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dump(String str, PrintWriter printWriter) {
        printWriter.print(str);
        printWriter.print("mDeliveredData=");
        printWriter.println(this.mDeliveredData);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasDeliveredData() {
        return this.mDeliveredData;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.Observer
    public void onChanged(@Nullable D d) {
        if (LoaderManagerImpl.DEBUG) {
            Log.v("LoaderManager", "  onLoadFinished in " + this.mLoader + ": " + this.mLoader.dataToString(d));
        }
        this.mCallback.onLoadFinished(this.mLoader, d);
        this.mDeliveredData = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void reset() {
        if (this.mDeliveredData) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v("LoaderManager", "  Resetting: " + this.mLoader);
            }
            this.mCallback.onLoaderReset(this.mLoader);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return this.mCallback.toString();
    }
}
