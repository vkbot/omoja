package androidx.media;

import ai.onnxruntime.b;
import android.os.Bundle;
import androidx.annotation.Nullable;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaBrowserServiceCompat$Result<T> {
    private final Object mDebug;
    private boolean mDetachCalled;
    private int mFlags;
    private boolean mSendErrorCalled;
    private boolean mSendResultCalled;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaBrowserServiceCompat$Result(Object obj) {
        this.mDebug = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkExtraFields(@Nullable Bundle bundle) {
        if (bundle != null && bundle.containsKey("android.media.browse.extra.DOWNLOAD_PROGRESS")) {
            float f8 = bundle.getFloat("android.media.browse.extra.DOWNLOAD_PROGRESS");
            if (f8 < -1.0E-5f || f8 > 1.00001f) {
                i.k("The value of the EXTRA_DOWNLOAD_PROGRESS field must be a float number within [0.0, 1.0]");
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void detach() {
        if (this.mDetachCalled) {
            b.u(this.mDebug, "detach() called when detach() had already been called for: ");
            return;
        }
        if (this.mSendResultCalled) {
            b.u(this.mDebug, "detach() called when sendResult() had already been called for: ");
        } else if (this.mSendErrorCalled) {
            b.u(this.mDebug, "detach() called when sendError() had already been called for: ");
        } else {
            this.mDetachCalled = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getFlags() {
        return this.mFlags;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isDone() {
        return this.mDetachCalled || this.mSendResultCalled || this.mSendErrorCalled;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onErrorSent(@Nullable Bundle bundle) {
        throw new UnsupportedOperationException("It is not supported to send an error for " + this.mDebug);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onProgressUpdateSent(@Nullable Bundle bundle) {
        throw new UnsupportedOperationException("It is not supported to send an interim update for " + this.mDebug);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void sendError(@Nullable Bundle bundle) {
        if (this.mSendResultCalled || this.mSendErrorCalled) {
            b.u(this.mDebug, "sendError() called when either sendResult() or sendError() had already been called for: ");
        } else {
            this.mSendErrorCalled = true;
            onErrorSent(bundle);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void sendProgressUpdate(@Nullable Bundle bundle) {
        if (this.mSendResultCalled || this.mSendErrorCalled) {
            b.u(this.mDebug, "sendProgressUpdate() called when either sendResult() or sendError() had already been called for: ");
        } else {
            checkExtraFields(bundle);
            onProgressUpdateSent(bundle);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void sendResult(@Nullable T t) {
        if (this.mSendResultCalled || this.mSendErrorCalled) {
            b.u(this.mDebug, "sendResult() called when either sendResult() or sendError() had already been called for: ");
        } else {
            this.mSendResultCalled = true;
            onResultSent(t);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFlags(int i9) {
        this.mFlags = i9;
    }

    public void onResultSent(@Nullable T t) {
    }
}
