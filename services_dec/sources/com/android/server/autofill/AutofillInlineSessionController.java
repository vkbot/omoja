package com.android.server.autofill;

import android.content.ComponentName;
import android.os.Bundle;
import android.os.Handler;
import android.view.autofill.AutofillId;
import android.view.inputmethod.InlineSuggestionsRequest;
import com.android.server.autofill.ui.InlineFillUi;
import com.android.server.inputmethod.InputMethodManagerInternal;
import java.util.Optional;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
final class AutofillInlineSessionController {
    private final ComponentName mComponentName;
    private final Handler mHandler;
    private InlineFillUi mInlineFillUi;
    private final InputMethodManagerInternal mInputMethodManagerInternal;
    private final Object mLock;
    private AutofillInlineSuggestionsRequestSession mSession;
    private final InlineFillUi.InlineUiEventCallback mUiCallback;
    private final int mUserId;

    AutofillInlineSessionController(InputMethodManagerInternal inputMethodManagerInternal, int userId, ComponentName componentName, Handler handler, Object lock, InlineFillUi.InlineUiEventCallback callback) {
        this.mInputMethodManagerInternal = inputMethodManagerInternal;
        this.mUserId = userId;
        this.mComponentName = componentName;
        this.mHandler = handler;
        this.mLock = lock;
        this.mUiCallback = callback;
    }

    void onCreateInlineSuggestionsRequestLocked(AutofillId autofillId, Consumer<InlineSuggestionsRequest> requestConsumer, Bundle uiExtras) {
        AutofillInlineSuggestionsRequestSession autofillInlineSuggestionsRequestSession = this.mSession;
        if (autofillInlineSuggestionsRequestSession != null) {
            autofillInlineSuggestionsRequestSession.destroySessionLocked();
        }
        this.mInlineFillUi = null;
        AutofillInlineSuggestionsRequestSession autofillInlineSuggestionsRequestSession2 = new AutofillInlineSuggestionsRequestSession(this.mInputMethodManagerInternal, this.mUserId, this.mComponentName, this.mHandler, this.mLock, autofillId, requestConsumer, uiExtras, this.mUiCallback);
        this.mSession = autofillInlineSuggestionsRequestSession2;
        autofillInlineSuggestionsRequestSession2.onCreateInlineSuggestionsRequestLocked();
    }

    void destroyLocked(AutofillId autofillId) {
        AutofillInlineSuggestionsRequestSession autofillInlineSuggestionsRequestSession = this.mSession;
        if (autofillInlineSuggestionsRequestSession != null) {
            autofillInlineSuggestionsRequestSession.onInlineSuggestionsResponseLocked(InlineFillUi.emptyUi(autofillId));
            this.mSession.destroySessionLocked();
            this.mSession = null;
        }
        this.mInlineFillUi = null;
    }

    Optional<InlineSuggestionsRequest> getInlineSuggestionsRequestLocked() {
        AutofillInlineSuggestionsRequestSession autofillInlineSuggestionsRequestSession = this.mSession;
        if (autofillInlineSuggestionsRequestSession != null) {
            return autofillInlineSuggestionsRequestSession.getInlineSuggestionsRequestLocked();
        }
        return Optional.empty();
    }

    boolean hideInlineSuggestionsUiLocked(AutofillId autofillId) {
        AutofillInlineSuggestionsRequestSession autofillInlineSuggestionsRequestSession = this.mSession;
        if (autofillInlineSuggestionsRequestSession != null) {
            return autofillInlineSuggestionsRequestSession.onInlineSuggestionsResponseLocked(InlineFillUi.emptyUi(autofillId));
        }
        return false;
    }

    void disableFilterMatching(AutofillId autofillId) {
        InlineFillUi inlineFillUi = this.mInlineFillUi;
        if (inlineFillUi != null && inlineFillUi.getAutofillId().equals(autofillId)) {
            this.mInlineFillUi.disableFilterMatching();
        }
    }

    void resetInlineFillUiLocked() {
        this.mInlineFillUi = null;
        AutofillInlineSuggestionsRequestSession autofillInlineSuggestionsRequestSession = this.mSession;
        if (autofillInlineSuggestionsRequestSession != null) {
            autofillInlineSuggestionsRequestSession.resetInlineFillUiLocked();
        }
    }

    boolean filterInlineFillUiLocked(AutofillId autofillId, String filterText) {
        InlineFillUi inlineFillUi = this.mInlineFillUi;
        if (inlineFillUi != null && inlineFillUi.getAutofillId().equals(autofillId)) {
            this.mInlineFillUi.setFilterText(filterText);
            return requestImeToShowInlineSuggestionsLocked();
        }
        return false;
    }

    boolean setInlineFillUiLocked(InlineFillUi inlineFillUi) {
        this.mInlineFillUi = inlineFillUi;
        return requestImeToShowInlineSuggestionsLocked();
    }

    private boolean requestImeToShowInlineSuggestionsLocked() {
        InlineFillUi inlineFillUi;
        AutofillInlineSuggestionsRequestSession autofillInlineSuggestionsRequestSession = this.mSession;
        if (autofillInlineSuggestionsRequestSession != null && (inlineFillUi = this.mInlineFillUi) != null) {
            return autofillInlineSuggestionsRequestSession.onInlineSuggestionsResponseLocked(inlineFillUi);
        }
        return false;
    }
}
