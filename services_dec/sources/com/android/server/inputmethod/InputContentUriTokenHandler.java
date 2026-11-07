package com.android.server.inputmethod;

import android.app.UriGrantsManager;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import com.android.internal.inputmethod.IInputContentUriToken;
import com.android.server.LocalServices;
import com.android.server.uri.UriGrantsManagerInternal;

/* JADX INFO: loaded from: classes.dex */
final class InputContentUriTokenHandler extends IInputContentUriToken.Stub {
    private final Object mLock = new Object();
    private IBinder mPermissionOwnerToken = null;
    private final int mSourceUid;
    private final int mSourceUserId;
    private final String mTargetPackage;
    private final int mTargetUserId;
    private final Uri mUri;

    InputContentUriTokenHandler(Uri contentUri, int sourceUid, String targetPackage, int sourceUserId, int targetUserId) {
        this.mUri = contentUri;
        this.mSourceUid = sourceUid;
        this.mTargetPackage = targetPackage;
        this.mSourceUserId = sourceUserId;
        this.mTargetUserId = targetUserId;
    }

    public void take() {
        synchronized (this.mLock) {
            if (this.mPermissionOwnerToken != null) {
                return;
            }
            IBinder iBinderNewUriPermissionOwner = ((UriGrantsManagerInternal) LocalServices.getService(UriGrantsManagerInternal.class)).newUriPermissionOwner("InputContentUriTokenHandler");
            this.mPermissionOwnerToken = iBinderNewUriPermissionOwner;
            doTakeLocked(iBinderNewUriPermissionOwner);
        }
    }

    private void doTakeLocked(IBinder permissionOwner) {
        long origId = Binder.clearCallingIdentity();
        try {
            try {
                UriGrantsManager.getService().grantUriPermissionFromOwner(permissionOwner, this.mSourceUid, this.mTargetPackage, this.mUri, 1, this.mSourceUserId, this.mTargetUserId);
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
            }
        } finally {
            Binder.restoreCallingIdentity(origId);
        }
    }

    public void release() {
        synchronized (this.mLock) {
            if (this.mPermissionOwnerToken == null) {
                return;
            }
            try {
                ((UriGrantsManagerInternal) LocalServices.getService(UriGrantsManagerInternal.class)).revokeUriPermissionFromOwner(this.mPermissionOwnerToken, this.mUri, 1, this.mSourceUserId);
                this.mPermissionOwnerToken = null;
            } catch (Throwable th) {
                this.mPermissionOwnerToken = null;
                throw th;
            }
        }
    }

    protected void finalize() throws Throwable {
        try {
            release();
        } finally {
            super/*java.lang.Object*/.finalize();
        }
    }
}
