package com.android.server.autofill.ui;

import android.content.IntentSender;
import android.os.IBinder;
import android.service.autofill.IInlineSuggestionUiCallback;
import android.service.autofill.InlinePresentation;
import android.util.Slog;
import com.android.server.LocalServices;
import com.android.server.autofill.Helper;
import com.android.server.autofill.RemoteInlineSuggestionRenderService;
import com.android.server.inputmethod.InputMethodManagerInternal;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
final class RemoteInlineSuggestionViewConnector {
    private static final String TAG = RemoteInlineSuggestionViewConnector.class.getSimpleName();
    private final int mDisplayId;
    private final IBinder mHostInputToken;
    private final InlinePresentation mInlinePresentation;
    private final Runnable mOnAutofillCallback;
    private final Runnable mOnErrorCallback;
    private final RemoteInlineSuggestionRenderService mRemoteRenderService;
    private final int mSessionId;
    private final Consumer<IntentSender> mStartIntentSenderFromClientApp;
    private final int mUserId;

    RemoteInlineSuggestionViewConnector(RemoteInlineSuggestionRenderService remoteRenderService, int userId, int sessionId, InlinePresentation inlinePresentation, IBinder hostInputToken, int displayId, Runnable onAutofillCallback, Runnable onErrorCallback, Consumer<IntentSender> startIntentSenderFromClientApp) {
        this.mRemoteRenderService = remoteRenderService;
        this.mInlinePresentation = inlinePresentation;
        this.mHostInputToken = hostInputToken;
        this.mDisplayId = displayId;
        this.mUserId = userId;
        this.mSessionId = sessionId;
        this.mOnAutofillCallback = onAutofillCallback;
        this.mOnErrorCallback = onErrorCallback;
        this.mStartIntentSenderFromClientApp = startIntentSenderFromClientApp;
    }

    public boolean renderSuggestion(int width, int height, IInlineSuggestionUiCallback callback) {
        if (Helper.sanitizeSlice(this.mInlinePresentation.getSlice()) == null) {
            if (Helper.sDebug) {
                Slog.d(TAG, "Skipped rendering inline suggestion.");
            }
            return false;
        }
        if (this.mRemoteRenderService == null) {
            return false;
        }
        if (Helper.sDebug) {
            Slog.d(TAG, "Request to recreate the UI");
        }
        this.mRemoteRenderService.renderSuggestion(callback, this.mInlinePresentation, width, height, this.mHostInputToken, this.mDisplayId, this.mUserId, this.mSessionId);
        return true;
    }

    public void onClick() {
        this.mOnAutofillCallback.run();
    }

    public void onError() {
        this.mOnErrorCallback.run();
    }

    public void onTransferTouchFocusToImeWindow(IBinder sourceInputToken, int displayId) {
        InputMethodManagerInternal inputMethodManagerInternal = (InputMethodManagerInternal) LocalServices.getService(InputMethodManagerInternal.class);
        if (!inputMethodManagerInternal.transferTouchFocusToImeWindow(sourceInputToken, displayId)) {
            Slog.e(TAG, "Cannot transfer touch focus from suggestion to IME");
            this.mOnErrorCallback.run();
        }
    }

    public void onStartIntentSender(IntentSender intentSender) {
        this.mStartIntentSenderFromClientApp.accept(intentSender);
    }
}
