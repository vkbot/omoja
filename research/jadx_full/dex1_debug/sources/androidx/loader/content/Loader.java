package androidx.loader.content;

import ai.onnxruntime.a;
import android.content.Context;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.DebugUtils;
import j1.i;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Loader<D> {
    Context mContext;
    int mId;
    Loader$OnLoadCompleteListener<D> mListener;
    Loader$OnLoadCanceledListener<D> mOnLoadCanceledListener;
    boolean mStarted = false;
    boolean mAbandoned = false;
    boolean mReset = true;
    boolean mContentChanged = false;
    boolean mProcessingChange = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Loader(@NonNull Context context) {
        this.mContext = context.getApplicationContext();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void abandon() {
        this.mAbandoned = true;
        onAbandon();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public boolean cancelLoad() {
        return onCancelLoad();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void commitContentChanged() {
        this.mProcessingChange = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public String dataToString(@Nullable D d) {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.buildShortClassTag(d, sb);
        sb.append("}");
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void deliverCancellation() {
        Loader$OnLoadCanceledListener<D> loader$OnLoadCanceledListener = this.mOnLoadCanceledListener;
        if (loader$OnLoadCanceledListener != null) {
            loader$OnLoadCanceledListener.onLoadCanceled(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void deliverResult(@Nullable D d) {
        Loader$OnLoadCompleteListener<D> loader$OnLoadCompleteListener = this.mListener;
        if (loader$OnLoadCompleteListener != null) {
            loader$OnLoadCompleteListener.onLoadComplete(this, d);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.mId);
        printWriter.print(" mListener=");
        printWriter.println(this.mListener);
        if (this.mStarted || this.mContentChanged || this.mProcessingChange) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.mStarted);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.mContentChanged);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.mProcessingChange);
        }
        if (this.mAbandoned || this.mReset) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.mAbandoned);
            printWriter.print(" mReset=");
            printWriter.println(this.mReset);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void forceLoad() {
        onForceLoad();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Context getContext() {
        return this.mContext;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getId() {
        return this.mId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAbandoned() {
        return this.mAbandoned;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isReset() {
        return this.mReset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isStarted() {
        return this.mStarted;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public boolean onCancelLoad() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void onContentChanged() {
        if (this.mStarted) {
            forceLoad();
        } else {
            this.mContentChanged = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void registerListener(int i9, @NonNull Loader$OnLoadCompleteListener<D> loader$OnLoadCompleteListener) {
        if (this.mListener != null) {
            i.l("There is already a listener registered");
        } else {
            this.mListener = loader$OnLoadCompleteListener;
            this.mId = i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void registerOnLoadCanceledListener(@NonNull Loader$OnLoadCanceledListener<D> loader$OnLoadCanceledListener) {
        if (this.mOnLoadCanceledListener == null) {
            this.mOnLoadCanceledListener = loader$OnLoadCanceledListener;
        } else {
            i.l("There is already a listener registered");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void reset() {
        onReset();
        this.mReset = true;
        this.mStarted = false;
        this.mAbandoned = false;
        this.mContentChanged = false;
        this.mProcessingChange = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void rollbackContentChanged() {
        if (this.mProcessingChange) {
            onContentChanged();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public final void startLoading() {
        this.mStarted = true;
        this.mReset = false;
        this.mAbandoned = false;
        onStartLoading();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void stopLoading() {
        this.mStarted = false;
        onStopLoading();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean takeContentChanged() {
        boolean z8 = this.mContentChanged;
        this.mContentChanged = false;
        this.mProcessingChange |= z8;
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.buildShortClassTag(this, sb);
        sb.append(" id=");
        return a.o(sb, "}", this.mId);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void unregisterListener(@NonNull Loader$OnLoadCompleteListener<D> loader$OnLoadCompleteListener) {
        Loader$OnLoadCompleteListener<D> loader$OnLoadCompleteListener2 = this.mListener;
        if (loader$OnLoadCompleteListener2 == null) {
            i.l("No listener register");
        } else if (loader$OnLoadCompleteListener2 == loader$OnLoadCompleteListener) {
            this.mListener = null;
        } else {
            i.k("Attempting to unregister the wrong listener");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public void unregisterOnLoadCanceledListener(@NonNull Loader$OnLoadCanceledListener<D> loader$OnLoadCanceledListener) {
        Loader$OnLoadCanceledListener<D> loader$OnLoadCanceledListener2 = this.mOnLoadCanceledListener;
        if (loader$OnLoadCanceledListener2 == null) {
            i.l("No listener register");
        } else if (loader$OnLoadCanceledListener2 == loader$OnLoadCanceledListener) {
            this.mOnLoadCanceledListener = null;
        } else {
            i.k("Attempting to unregister the wrong listener");
        }
    }

    @MainThread
    public void onAbandon() {
    }

    @MainThread
    public void onForceLoad() {
    }

    @MainThread
    public void onReset() {
    }

    @MainThread
    public void onStartLoading() {
    }

    @MainThread
    public void onStopLoading() {
    }
}
