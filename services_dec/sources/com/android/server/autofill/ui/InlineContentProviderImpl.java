package com.android.server.autofill.ui;

import android.os.Handler;
import android.util.Slog;
import com.android.internal.view.inline.IInlineContentCallback;
import com.android.internal.view.inline.IInlineContentProvider;
import com.android.server.FgThread;
import com.android.server.autofill.Helper;

/* JADX INFO: loaded from: classes.dex */
final class InlineContentProviderImpl extends IInlineContentProvider.Stub {
    private static final String TAG = InlineContentProviderImpl.class.getSimpleName();
    private final Handler mHandler = FgThread.getHandler();
    private boolean mProvideContentCalled = false;
    private RemoteInlineSuggestionUi mRemoteInlineSuggestionUi;
    private final RemoteInlineSuggestionViewConnector mRemoteInlineSuggestionViewConnector;

    InlineContentProviderImpl(RemoteInlineSuggestionViewConnector remoteInlineSuggestionViewConnector, RemoteInlineSuggestionUi remoteInlineSuggestionUi) {
        this.mRemoteInlineSuggestionViewConnector = remoteInlineSuggestionViewConnector;
        this.mRemoteInlineSuggestionUi = remoteInlineSuggestionUi;
    }

    public InlineContentProviderImpl copy() {
        return new InlineContentProviderImpl(this.mRemoteInlineSuggestionViewConnector, this.mRemoteInlineSuggestionUi);
    }

    public void provideContent(final int width, final int height, final IInlineContentCallback callback) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$InlineContentProviderImpl$MO0MULXauDTPFsfz8mq3vmRWpKs
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$provideContent$0$InlineContentProviderImpl(width, height, callback);
            }
        });
    }

    public void requestSurfacePackage() {
        this.mHandler.post(new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$InlineContentProviderImpl$YlJzGVDaLSN0r4YiqXhcOCsPuso
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.handleGetSurfacePackage();
            }
        });
    }

    public void onSurfacePackageReleased() {
        this.mHandler.post(new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$InlineContentProviderImpl$AOo0mjndosCde0qHPXTOWkTplRk
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.handleOnSurfacePackageReleased();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: handleProvideContent, reason: merged with bridge method [inline-methods] */
    public void lambda$provideContent$0$InlineContentProviderImpl(int width, int height, IInlineContentCallback callback) {
        if (Helper.sVerbose) {
            Slog.v(TAG, "handleProvideContent");
        }
        if (this.mProvideContentCalled) {
            return;
        }
        this.mProvideContentCalled = true;
        RemoteInlineSuggestionUi remoteInlineSuggestionUi = this.mRemoteInlineSuggestionUi;
        if (remoteInlineSuggestionUi == null || !remoteInlineSuggestionUi.match(width, height)) {
            this.mRemoteInlineSuggestionUi = new RemoteInlineSuggestionUi(this.mRemoteInlineSuggestionViewConnector, width, height, this.mHandler);
        }
        this.mRemoteInlineSuggestionUi.setInlineContentCallback(callback);
        this.mRemoteInlineSuggestionUi.requestSurfacePackage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleGetSurfacePackage() {
        RemoteInlineSuggestionUi remoteInlineSuggestionUi;
        if (Helper.sVerbose) {
            Slog.v(TAG, "handleGetSurfacePackage");
        }
        if (!this.mProvideContentCalled || (remoteInlineSuggestionUi = this.mRemoteInlineSuggestionUi) == null) {
            return;
        }
        remoteInlineSuggestionUi.requestSurfacePackage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnSurfacePackageReleased() {
        RemoteInlineSuggestionUi remoteInlineSuggestionUi;
        if (Helper.sVerbose) {
            Slog.v(TAG, "handleOnSurfacePackageReleased");
        }
        if (!this.mProvideContentCalled || (remoteInlineSuggestionUi = this.mRemoteInlineSuggestionUi) == null) {
            return;
        }
        remoteInlineSuggestionUi.surfacePackageReleased();
    }
}
