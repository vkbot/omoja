package com.android.server.autofill.ui;

import android.content.IntentSender;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.service.autofill.IInlineSuggestionUi;
import android.service.autofill.IInlineSuggestionUiCallback;
import android.service.autofill.ISurfacePackageResultCallback;
import android.util.Slog;
import android.view.SurfaceControlViewHost;
import com.android.internal.view.inline.IInlineContentCallback;
import com.android.server.autofill.Helper;

/* JADX INFO: loaded from: classes.dex */
final class RemoteInlineSuggestionUi {
    private static final long RELEASE_REMOTE_VIEW_HOST_DELAY_MS = 200;
    private static final String TAG = RemoteInlineSuggestionUi.class.getSimpleName();
    private int mActualHeight;
    private int mActualWidth;
    private Runnable mDelayedReleaseViewRunnable;
    private final Handler mHandler;
    private final int mHeight;
    private IInlineContentCallback mInlineContentCallback;
    private IInlineSuggestionUi mInlineSuggestionUi;
    private final RemoteInlineSuggestionViewConnector mRemoteInlineSuggestionViewConnector;
    private final int mWidth;
    private int mRefCount = 0;
    private boolean mWaitingForUiCreation = false;
    private final InlineSuggestionUiCallbackImpl mInlineSuggestionUiCallback = new InlineSuggestionUiCallbackImpl(this, null);

    RemoteInlineSuggestionUi(RemoteInlineSuggestionViewConnector remoteInlineSuggestionViewConnector, int width, int height, Handler handler) {
        this.mHandler = handler;
        this.mRemoteInlineSuggestionViewConnector = remoteInlineSuggestionViewConnector;
        this.mWidth = width;
        this.mHeight = height;
    }

    void setInlineContentCallback(final IInlineContentCallback inlineContentCallback) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$RemoteInlineSuggestionUi$0_JeOqFYsoiyQ8r1ioPO8CPyqyU
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setInlineContentCallback$0$RemoteInlineSuggestionUi(inlineContentCallback);
            }
        });
    }

    public /* synthetic */ void lambda$setInlineContentCallback$0$RemoteInlineSuggestionUi(IInlineContentCallback inlineContentCallback) {
        this.mInlineContentCallback = inlineContentCallback;
    }

    void requestSurfacePackage() {
        this.mHandler.post(new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$RemoteInlineSuggestionUi$lxkdyqGc8deEw691WdWG3VTVrvI
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.handleRequestSurfacePackage();
            }
        });
    }

    public /* synthetic */ void lambda$surfacePackageReleased$1$RemoteInlineSuggestionUi() {
        handleUpdateRefCount(-1);
    }

    void surfacePackageReleased() {
        this.mHandler.post(new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$RemoteInlineSuggestionUi$PxoYnRr2ZWbgSy1sKaN-0GD_Mag
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$surfacePackageReleased$1$RemoteInlineSuggestionUi();
            }
        });
    }

    boolean match(int width, int height) {
        return this.mWidth == width && this.mHeight == height;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRequestSurfacePackage() {
        cancelPendingReleaseViewRequest();
        IInlineSuggestionUi iInlineSuggestionUi = this.mInlineSuggestionUi;
        if (iInlineSuggestionUi == null) {
            if (this.mWaitingForUiCreation) {
                if (Helper.sDebug) {
                    Slog.d(TAG, "Inline suggestion ui is not ready");
                    return;
                }
                return;
            } else {
                this.mRemoteInlineSuggestionViewConnector.renderSuggestion(this.mWidth, this.mHeight, this.mInlineSuggestionUiCallback);
                this.mWaitingForUiCreation = true;
                return;
            }
        }
        try {
            iInlineSuggestionUi.getSurfacePackage(new AnonymousClass1());
        } catch (RemoteException e) {
            Slog.w(TAG, "RemoteException calling getSurfacePackage.");
        }
    }

    /* JADX INFO: renamed from: com.android.server.autofill.ui.RemoteInlineSuggestionUi$1, reason: invalid class name */
    class AnonymousClass1 extends ISurfacePackageResultCallback.Stub {
        AnonymousClass1() {
        }

        public void onResult(final SurfaceControlViewHost.SurfacePackage result) {
            RemoteInlineSuggestionUi.this.mHandler.post(new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$RemoteInlineSuggestionUi$1$BQphjwPc7EH4P2tQ7P4664BMxio
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onResult$0$RemoteInlineSuggestionUi$1(result);
                }
            });
        }

        public /* synthetic */ void lambda$onResult$0$RemoteInlineSuggestionUi$1(SurfaceControlViewHost.SurfacePackage result) {
            if (Helper.sVerbose) {
                Slog.v(RemoteInlineSuggestionUi.TAG, "Sending refreshed SurfacePackage to IME");
            }
            try {
                RemoteInlineSuggestionUi.this.mInlineContentCallback.onContent(result, RemoteInlineSuggestionUi.this.mActualWidth, RemoteInlineSuggestionUi.this.mActualHeight);
                RemoteInlineSuggestionUi.this.handleUpdateRefCount(1);
            } catch (RemoteException e) {
                Slog.w(RemoteInlineSuggestionUi.TAG, "RemoteException calling onContent");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUpdateRefCount(int delta) {
        cancelPendingReleaseViewRequest();
        int i = this.mRefCount + delta;
        this.mRefCount = i;
        if (i <= 0) {
            Runnable runnable = new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$RemoteInlineSuggestionUi$KMo6hTINel081e-zSnvvpMPORpI
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$handleUpdateRefCount$2$RemoteInlineSuggestionUi();
                }
            };
            this.mDelayedReleaseViewRunnable = runnable;
            this.mHandler.postDelayed(runnable, RELEASE_REMOTE_VIEW_HOST_DELAY_MS);
        }
    }

    public /* synthetic */ void lambda$handleUpdateRefCount$2$RemoteInlineSuggestionUi() {
        if (this.mInlineSuggestionUi != null) {
            try {
                if (Helper.sVerbose) {
                    Slog.v(TAG, "releasing the host");
                }
                this.mInlineSuggestionUi.releaseSurfaceControlViewHost();
                this.mInlineSuggestionUi = null;
            } catch (RemoteException e) {
                Slog.w(TAG, "RemoteException calling releaseSurfaceControlViewHost");
            }
        }
        this.mDelayedReleaseViewRunnable = null;
    }

    private void cancelPendingReleaseViewRequest() {
        Runnable runnable = this.mDelayedReleaseViewRunnable;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
            this.mDelayedReleaseViewRunnable = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleInlineSuggestionUiReady(IInlineSuggestionUi content, SurfaceControlViewHost.SurfacePackage surfacePackage, int width, int height) {
        this.mInlineSuggestionUi = content;
        this.mRefCount = 0;
        this.mWaitingForUiCreation = false;
        this.mActualWidth = width;
        this.mActualHeight = height;
        if (this.mInlineContentCallback != null) {
            try {
                if (Helper.sVerbose) {
                    Slog.v(TAG, "Sending new UI content to IME");
                }
                handleUpdateRefCount(1);
                this.mInlineContentCallback.onContent(surfacePackage, this.mActualWidth, this.mActualHeight);
            } catch (RemoteException e) {
                Slog.w(TAG, "RemoteException calling onContent");
            }
        }
        if (surfacePackage != null) {
            surfacePackage.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnClick() {
        this.mRemoteInlineSuggestionViewConnector.onClick();
        IInlineContentCallback iInlineContentCallback = this.mInlineContentCallback;
        if (iInlineContentCallback != null) {
            try {
                iInlineContentCallback.onClick();
            } catch (RemoteException e) {
                Slog.w(TAG, "RemoteException calling onClick");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnLongClick() {
        IInlineContentCallback iInlineContentCallback = this.mInlineContentCallback;
        if (iInlineContentCallback != null) {
            try {
                iInlineContentCallback.onLongClick();
            } catch (RemoteException e) {
                Slog.w(TAG, "RemoteException calling onLongClick");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnError() {
        this.mRemoteInlineSuggestionViewConnector.onError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnTransferTouchFocusToImeWindow(IBinder sourceInputToken, int displayId) {
        this.mRemoteInlineSuggestionViewConnector.onTransferTouchFocusToImeWindow(sourceInputToken, displayId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnStartIntentSender(IntentSender intentSender) {
        this.mRemoteInlineSuggestionViewConnector.onStartIntentSender(intentSender);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class InlineSuggestionUiCallbackImpl extends IInlineSuggestionUiCallback.Stub {
        private InlineSuggestionUiCallbackImpl() {
        }

        /* synthetic */ InlineSuggestionUiCallbackImpl(RemoteInlineSuggestionUi x0, AnonymousClass1 x1) {
            this();
        }

        public void onClick() {
            Handler handler = RemoteInlineSuggestionUi.this.mHandler;
            final RemoteInlineSuggestionUi remoteInlineSuggestionUi = RemoteInlineSuggestionUi.this;
            handler.post(new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$hFv8W8dW2hYL2D2fhAjcrL-W66Y
                @Override // java.lang.Runnable
                public final void run() {
                    remoteInlineSuggestionUi.handleOnClick();
                }
            });
        }

        public void onLongClick() {
            Handler handler = RemoteInlineSuggestionUi.this.mHandler;
            final RemoteInlineSuggestionUi remoteInlineSuggestionUi = RemoteInlineSuggestionUi.this;
            handler.post(new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$OUz6HnULnbu1DsqIkAd2QStwE7Y
                @Override // java.lang.Runnable
                public final void run() {
                    remoteInlineSuggestionUi.handleOnLongClick();
                }
            });
        }

        public /* synthetic */ void lambda$onContent$2$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl(IInlineSuggestionUi content, SurfaceControlViewHost.SurfacePackage surface, int width, int height) {
            RemoteInlineSuggestionUi.this.handleInlineSuggestionUiReady(content, surface, width, height);
        }

        public void onContent(final IInlineSuggestionUi content, final SurfaceControlViewHost.SurfacePackage surface, final int width, final int height) {
            RemoteInlineSuggestionUi.this.mHandler.post(new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$m3D_YaKi1m_5oEDOcGEbZo66nPw
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onContent$2$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl(content, surface, width, height);
                }
            });
        }

        public void onError() {
            Handler handler = RemoteInlineSuggestionUi.this.mHandler;
            final RemoteInlineSuggestionUi remoteInlineSuggestionUi = RemoteInlineSuggestionUi.this;
            handler.post(new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$C0xUqEd_mdLG3ueu6_xVMeKLEB4
                @Override // java.lang.Runnable
                public final void run() {
                    remoteInlineSuggestionUi.handleOnError();
                }
            });
        }

        public /* synthetic */ void lambda$onTransferTouchFocusToImeWindow$4$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl(IBinder sourceInputToken, int displayId) {
            RemoteInlineSuggestionUi.this.handleOnTransferTouchFocusToImeWindow(sourceInputToken, displayId);
        }

        public void onTransferTouchFocusToImeWindow(final IBinder sourceInputToken, final int displayId) {
            RemoteInlineSuggestionUi.this.mHandler.post(new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$oYksl59U_Vzx_1qg0bLu1UQfk5k
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onTransferTouchFocusToImeWindow$4$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl(sourceInputToken, displayId);
                }
            });
        }

        public /* synthetic */ void lambda$onStartIntentSender$5$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl(IntentSender intentSender) {
            RemoteInlineSuggestionUi.this.handleOnStartIntentSender(intentSender);
        }

        public void onStartIntentSender(final IntentSender intentSender) {
            RemoteInlineSuggestionUi.this.mHandler.post(new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$orLUY0za7G6mvNAv2w1Xd2DLLIA
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onStartIntentSender$5$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl(intentSender);
                }
            });
        }
    }
}
