package com.android.server.autofill;

import android.R;
import android.app.ActivityTaskManager;
import android.app.IAssistDataReceiver;
import android.app.assist.AssistStructure;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.metrics.LogMaker;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.os.SystemClock;
import android.service.autofill.AutofillFieldClassificationService;
import android.service.autofill.CompositeUserData;
import android.service.autofill.Dataset;
import android.service.autofill.FieldClassification;
import android.service.autofill.FieldClassificationUserData;
import android.service.autofill.FillContext;
import android.service.autofill.FillRequest;
import android.service.autofill.FillResponse;
import android.service.autofill.InlinePresentation;
import android.service.autofill.InternalSanitizer;
import android.service.autofill.SaveInfo;
import android.service.autofill.SaveRequest;
import android.service.autofill.UserData;
import android.service.autofill.ValueFinder;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.LocalLog;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TimeUtils;
import android.view.KeyEvent;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import android.view.autofill.IAutoFillManagerClient;
import android.view.autofill.IAutofillWindowPresenter;
import android.view.inputmethod.InlineSuggestionsRequest;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.function.QuintConsumer;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.autofill.ui.AutoFillUI;
import com.android.server.autofill.ui.InlineFillUi;
import com.android.server.autofill.ui.PendingUi;
import com.android.server.inputmethod.InputMethodManagerInternal;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.wm.ActivityTaskManagerInternal;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
final class Session implements RemoteFillService.FillServiceCallbacks, ViewState.Listener, AutoFillUI.AutoFillUiCallback, ValueFinder {
    static final int AUGMENTED_AUTOFILL_REQUEST_ID = 1;
    private static final String EXTRA_REQUEST_ID = "android.service.autofill.extra.REQUEST_ID";
    private static final String TAG = "AutofillSession";
    private static AtomicInteger sIdCounter = new AtomicInteger(2);
    public final int id;
    private IBinder mActivityToken;
    private Runnable mAugmentedAutofillDestroyer;
    private ArrayList<AutofillId> mAugmentedAutofillableIds;
    private ArrayList<LogMaker> mAugmentedRequestsLogs;
    private IAutoFillManagerClient mClient;
    private Bundle mClientState;
    private IBinder.DeathRecipient mClientVulture;
    private final boolean mCompatMode;
    private final ComponentName mComponentName;
    private ArrayList<FillContext> mContexts;
    private AutofillId mCurrentViewId;
    private boolean mDestroyed;
    private boolean mExpiredResponse;
    public final int mFlags;
    private boolean mForAugmentedAutofillOnly;
    private final Handler mHandler;
    private boolean mHasCallback;
    private final AutofillInlineSessionController mInlineSessionController;
    private boolean mIsSaving;
    private final Object mLock;
    private PendingUi mPendingSaveUi;
    private final RemoteFillService mRemoteFillService;
    private SparseArray<FillResponse> mResponses;
    private boolean mSaveOnAllViewsInvisible;
    private ArrayList<String> mSelectedDatasetIds;
    private final AutofillManagerServiceImpl mService;
    private final long mStartTime;
    private final AutoFillUI mUi;
    private final LocalLog mUiLatencyHistory;
    private long mUiShownTime;
    private AssistStructure.ViewNode mUrlBar;
    private final LocalLog mWtfHistory;
    public final int taskId;
    public final int uid;
    public final int userId;
    private final MetricsLogger mMetricsLogger = new MetricsLogger();
    private final ArrayMap<AutofillId, ViewState> mViewStates = new ArrayMap<>();
    private final SparseArray<LogMaker> mRequestLogs = new SparseArray<>(1);
    private final AssistDataReceiverImpl mAssistReceiver = new AssistDataReceiverImpl();

    void onSwitchInputMethodLocked() {
        if (!this.mExpiredResponse && shouldResetSessionStateOnInputMethodSwitch()) {
            this.mExpiredResponse = true;
            this.mAugmentedAutofillableIds = null;
            if (this.mForAugmentedAutofillOnly) {
                this.mCurrentViewId = null;
            }
        }
    }

    private boolean shouldResetSessionStateOnInputMethodSwitch() {
        if (this.mService.getRemoteInlineSuggestionRenderServiceLocked() == null) {
            return false;
        }
        if (isInlineSuggestionsEnabledByAutofillProviderLocked()) {
            return true;
        }
        ViewState state = this.mViewStates.get(this.mCurrentViewId);
        return (state == null || (state.getState() & 4096) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class AssistDataReceiverImpl extends IAssistDataReceiver.Stub {
        private CountDownLatch mCountDownLatch;
        private FillRequest mPendingFillRequest;
        private InlineSuggestionsRequest mPendingInlineSuggestionsRequest;

        private AssistDataReceiverImpl() {
            this.mCountDownLatch = new CountDownLatch(0);
        }

        Consumer<InlineSuggestionsRequest> newAutofillRequestLocked(final ViewState viewState, boolean isInlineRequest) {
            this.mCountDownLatch = new CountDownLatch(isInlineRequest ? 2 : 1);
            this.mPendingFillRequest = null;
            this.mPendingInlineSuggestionsRequest = null;
            if (isInlineRequest) {
                return new Consumer() { // from class: com.android.server.autofill.-$$Lambda$Session$AssistDataReceiverImpl$8ZuPj-FqTW0k9-Ckdp6ED5K6OdQ
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$newAutofillRequestLocked$0$Session$AssistDataReceiverImpl(viewState, (InlineSuggestionsRequest) obj);
                    }
                };
            }
            return null;
        }

        public /* synthetic */ void lambda$newAutofillRequestLocked$0$Session$AssistDataReceiverImpl(ViewState viewState, InlineSuggestionsRequest inlineSuggestionsRequest) {
            synchronized (Session.this.mLock) {
                if (this.mCountDownLatch.getCount() == 0) {
                    return;
                }
                this.mPendingInlineSuggestionsRequest = inlineSuggestionsRequest;
                this.mCountDownLatch.countDown();
                maybeRequestFillLocked();
                viewState.resetState(65536);
            }
        }

        void maybeRequestFillLocked() {
            if (this.mCountDownLatch.getCount() > 0 || this.mPendingFillRequest == null) {
                return;
            }
            if (this.mPendingInlineSuggestionsRequest != null) {
                this.mPendingFillRequest = new FillRequest(this.mPendingFillRequest.getId(), this.mPendingFillRequest.getFillContexts(), this.mPendingFillRequest.getClientState(), this.mPendingFillRequest.getFlags(), this.mPendingInlineSuggestionsRequest);
            }
            Session.this.mRemoteFillService.onFillRequest(this.mPendingFillRequest);
            this.mPendingInlineSuggestionsRequest = null;
            this.mPendingFillRequest = null;
        }

        public void onHandleAssistData(Bundle resultData) throws RemoteException {
            int flags;
            if (Session.this.mRemoteFillService != null) {
                AutofillId currentViewId = Session.this.mCurrentViewId;
                if (currentViewId == null) {
                    Slog.w(Session.TAG, "No current view id - session might have finished");
                    return;
                }
                AssistStructure structure = (AssistStructure) resultData.getParcelable(ActivityTaskManagerInternal.ASSIST_KEY_STRUCTURE);
                if (structure == null) {
                    Slog.e(Session.TAG, "No assist structure - app might have crashed providing it");
                    return;
                }
                Bundle receiverExtras = resultData.getBundle(ActivityTaskManagerInternal.ASSIST_KEY_RECEIVER_EXTRAS);
                if (receiverExtras == null) {
                    Slog.e(Session.TAG, "No receiver extras - app might have crashed providing it");
                    return;
                }
                int requestId = receiverExtras.getInt(Session.EXTRA_REQUEST_ID);
                if (Helper.sVerbose) {
                    Slog.v(Session.TAG, "New structure for requestId " + requestId + ": " + structure);
                }
                synchronized (Session.this.mLock) {
                    try {
                        structure.ensureDataForAutofill();
                        ArrayList<AutofillId> ids = Helper.getAutofillIds(structure, false);
                        for (int i = 0; i < ids.size(); i++) {
                            ids.get(i).setSessionId(Session.this.id);
                        }
                        int flags2 = structure.getFlags();
                        if (!Session.this.mCompatMode) {
                            flags = flags2;
                        } else {
                            String[] urlBarIds = Session.this.mService.getUrlBarResourceIdsForCompatMode(Session.this.mComponentName.getPackageName());
                            if (Helper.sDebug) {
                                Slog.d(Session.TAG, "url_bars in compat mode: " + Arrays.toString(urlBarIds));
                            }
                            if (urlBarIds != null) {
                                Session.this.mUrlBar = Helper.sanitizeUrlBar(structure, urlBarIds);
                                if (Session.this.mUrlBar != null) {
                                    AutofillId urlBarId = Session.this.mUrlBar.getAutofillId();
                                    if (Helper.sDebug) {
                                        Slog.d(Session.TAG, "Setting urlBar as id=" + urlBarId + " and domain " + Session.this.mUrlBar.getWebDomain());
                                    }
                                    ViewState viewState = new ViewState(urlBarId, Session.this, 512);
                                    Session.this.mViewStates.put(urlBarId, viewState);
                                }
                            }
                            flags = flags2 | 2;
                        }
                        structure.sanitizeForParceling(true);
                        if (Session.this.mContexts == null) {
                            Session.this.mContexts = new ArrayList(1);
                        }
                        Session.this.mContexts.add(new FillContext(requestId, structure, currentViewId));
                        Session.this.cancelCurrentRequestLocked();
                        int numContexts = Session.this.mContexts.size();
                        for (int i2 = 0; i2 < numContexts; i2++) {
                            Session.this.fillContextWithAllowedValuesLocked((FillContext) Session.this.mContexts.get(i2), flags);
                        }
                        ArrayList<FillContext> contexts = Session.this.mergePreviousSessionLocked(false);
                        FillRequest request = new FillRequest(requestId, contexts, Session.this.mClientState, flags, null);
                        if (this.mCountDownLatch.getCount() <= 0) {
                            Session.this.mRemoteFillService.onFillRequest(request);
                        } else {
                            this.mPendingFillRequest = request;
                            this.mCountDownLatch.countDown();
                            maybeRequestFillLocked();
                        }
                    } catch (RuntimeException e) {
                        Session.this.wtf(e, "Exception lazy loading assist structure for %s: %s", structure.getActivityComponent(), e);
                        return;
                    }
                }
                if (Session.this.mActivityToken != null) {
                    Session.this.mService.sendActivityAssistDataToContentCapture(Session.this.mActivityToken, resultData);
                    return;
                }
                return;
            }
            Session session = Session.this;
            session.wtf(null, "onHandleAssistData() called without a remote service. mForAugmentedAutofillOnly: %s", Boolean.valueOf(session.mForAugmentedAutofillOnly));
        }

        public void onHandleAssistScreenshot(Bitmap screenshot) {
        }
    }

    private AutofillId[] getIdsOfAllViewStatesLocked() {
        int numViewState = this.mViewStates.size();
        AutofillId[] ids = new AutofillId[numViewState];
        for (int i = 0; i < numViewState; i++) {
            ids[i] = this.mViewStates.valueAt(i).id;
        }
        return ids;
    }

    public String findByAutofillId(AutofillId id) {
        synchronized (this.mLock) {
            AutofillValue value = findValueLocked(id);
            if (value != null) {
                if (value.isText()) {
                    return value.getTextValue().toString();
                }
                if (value.isList()) {
                    CharSequence[] options = getAutofillOptionsFromContextsLocked(id);
                    if (options != null) {
                        int index = value.getListValue();
                        CharSequence option = options[index];
                        return option != null ? option.toString() : null;
                    }
                    Slog.w(TAG, "findByAutofillId(): no autofill options for id " + id);
                }
            }
            return null;
        }
    }

    public AutofillValue findRawValueByAutofillId(AutofillId id) {
        AutofillValue autofillValueFindValueLocked;
        synchronized (this.mLock) {
            autofillValueFindValueLocked = findValueLocked(id);
        }
        return autofillValueFindValueLocked;
    }

    private AutofillValue findValueLocked(AutofillId autofillId) {
        AutofillValue value = findValueFromThisSessionOnlyLocked(autofillId);
        if (value != null) {
            return getSanitizedValue(createSanitizers(getSaveInfoLocked()), autofillId, value);
        }
        ArrayList<Session> previousSessions = this.mService.getPreviousSessionsLocked(this);
        if (previousSessions != null) {
            if (Helper.sDebug) {
                Slog.d(TAG, "findValueLocked(): looking on " + previousSessions.size() + " previous sessions for autofillId " + autofillId);
            }
            for (int i = 0; i < previousSessions.size(); i++) {
                Session previousSession = previousSessions.get(i);
                AutofillValue previousValue = previousSession.findValueFromThisSessionOnlyLocked(autofillId);
                if (previousValue != null) {
                    return getSanitizedValue(createSanitizers(previousSession.getSaveInfoLocked()), autofillId, previousValue);
                }
            }
            return null;
        }
        return null;
    }

    private AutofillValue findValueFromThisSessionOnlyLocked(AutofillId autofillId) {
        ViewState state = this.mViewStates.get(autofillId);
        if (state == null) {
            if (Helper.sDebug) {
                Slog.d(TAG, "findValueLocked(): no view state for " + autofillId);
                return null;
            }
            return null;
        }
        AutofillValue value = state.getCurrentValue();
        if (value == null) {
            if (Helper.sDebug) {
                Slog.d(TAG, "findValueLocked(): no current value for " + autofillId);
            }
            return getValueFromContextsLocked(autofillId);
        }
        return value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillContextWithAllowedValuesLocked(FillContext fillContext, int flags) {
        AssistStructure.ViewNode[] nodes = fillContext.findViewNodesByAutofillIds(getIdsOfAllViewStatesLocked());
        int numViewState = this.mViewStates.size();
        for (int i = 0; i < numViewState; i++) {
            ViewState viewState = this.mViewStates.valueAt(i);
            AssistStructure.ViewNode node = nodes[i];
            if (node == null) {
                if (Helper.sVerbose) {
                    Slog.v(TAG, "fillContextWithAllowedValuesLocked(): no node for " + viewState.id);
                }
            } else {
                AutofillValue currentValue = viewState.getCurrentValue();
                AutofillValue filledValue = viewState.getAutofilledValue();
                AssistStructure.AutofillOverlay overlay = new AssistStructure.AutofillOverlay();
                if (filledValue != null && filledValue.equals(currentValue)) {
                    overlay.value = currentValue;
                }
                AutofillId autofillId = this.mCurrentViewId;
                if (autofillId != null) {
                    overlay.focused = autofillId.equals(viewState.id);
                    if (overlay.focused && (flags & 1) != 0) {
                        overlay.value = currentValue;
                    }
                }
                node.setAutofillOverlay(overlay);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelCurrentRequestLocked() {
        ArrayList<FillContext> arrayList;
        RemoteFillService remoteFillService = this.mRemoteFillService;
        if (remoteFillService == null) {
            wtf(null, "cancelCurrentRequestLocked() called without a remote service. mForAugmentedAutofillOnly: %s", Boolean.valueOf(this.mForAugmentedAutofillOnly));
            return;
        }
        int canceledRequest = remoteFillService.cancelCurrentRequest();
        if (canceledRequest != Integer.MIN_VALUE && (arrayList = this.mContexts) != null) {
            int numContexts = arrayList.size();
            for (int i = numContexts - 1; i >= 0; i--) {
                if (this.mContexts.get(i).getRequestId() == canceledRequest) {
                    if (Helper.sDebug) {
                        Slog.d(TAG, "cancelCurrentRequest(): id = " + canceledRequest);
                    }
                    this.mContexts.remove(i);
                    return;
                }
            }
        }
    }

    private boolean isInlineSuggestionsEnabledByAutofillProviderLocked() {
        return this.mService.isInlineSuggestionsEnabled();
    }

    private boolean isViewFocusedLocked(int flags) {
        return (flags & 16) == 0;
    }

    private void requestNewFillResponseLocked(ViewState viewState, int newState, int flags) {
        int requestId;
        FillResponse existingResponse = viewState.getResponse();
        if (existingResponse != null) {
            setViewStatesLocked(existingResponse, 1, true);
        }
        this.mExpiredResponse = false;
        if (this.mForAugmentedAutofillOnly || this.mRemoteFillService == null) {
            if (Helper.sVerbose) {
                Slog.v(TAG, "requestNewFillResponse(): triggering augmented autofill instead (mForAugmentedAutofillOnly=" + this.mForAugmentedAutofillOnly + ", flags=" + flags + ")");
            }
            this.mForAugmentedAutofillOnly = true;
            triggerAugmentedAutofillLocked(flags);
            return;
        }
        viewState.setState(newState);
        do {
            requestId = sIdCounter.getAndIncrement();
        } while (requestId == Integer.MIN_VALUE);
        int ordinal = this.mRequestLogs.size() + 1;
        LogMaker log = newLogMaker(907).addTaggedData(1454, Integer.valueOf(ordinal));
        if (flags != 0) {
            log.addTaggedData(1452, Integer.valueOf(flags));
        }
        this.mRequestLogs.put(requestId, log);
        if (Helper.sVerbose) {
            Slog.v(TAG, "Requesting structure for request #" + ordinal + " ,requestId=" + requestId + ", flags=" + flags);
        }
        cancelCurrentRequestLocked();
        RemoteInlineSuggestionRenderService remoteRenderService = this.mService.getRemoteInlineSuggestionRenderServiceLocked();
        if (!isInlineSuggestionsEnabledByAutofillProviderLocked() || remoteRenderService == null || !isViewFocusedLocked(flags)) {
            this.mAssistReceiver.newAutofillRequestLocked(viewState, false);
        } else {
            final Consumer<InlineSuggestionsRequest> inlineSuggestionsRequestConsumer = this.mAssistReceiver.newAutofillRequestLocked(viewState, true);
            if (inlineSuggestionsRequestConsumer != null) {
                final AutofillId focusedId = this.mCurrentViewId;
                remoteRenderService.getInlineSuggestionsRendererInfo(new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.autofill.-$$Lambda$Session$yOl8leOVB88HAy4hixOFnb-xCCI
                    public final void onResult(Bundle bundle) {
                        this.f$0.lambda$requestNewFillResponseLocked$0$Session(focusedId, inlineSuggestionsRequestConsumer, bundle);
                    }
                }, this.mHandler));
                viewState.setState(65536);
            }
        }
        try {
            Bundle receiverExtras = new Bundle();
            receiverExtras.putInt(EXTRA_REQUEST_ID, requestId);
            long identity = Binder.clearCallingIdentity();
            try {
                if (!ActivityTaskManager.getService().requestAutofillData(this.mAssistReceiver, receiverExtras, this.mActivityToken, flags)) {
                    Slog.w(TAG, "failed to request autofill data for " + this.mActivityToken);
                }
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        } catch (RemoteException e) {
        }
    }

    public /* synthetic */ void lambda$requestNewFillResponseLocked$0$Session(AutofillId focusedId, Consumer inlineSuggestionsRequestConsumer, Bundle extras) {
        synchronized (this.mLock) {
            this.mInlineSessionController.onCreateInlineSuggestionsRequestLocked(focusedId, inlineSuggestionsRequestConsumer, extras);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    Session(AutofillManagerServiceImpl autofillManagerServiceImpl, AutoFillUI autoFillUI, Context context, Handler handler, int i, Object obj, int i2, int i3, int i4, IBinder iBinder, IBinder iBinder2, boolean z, LocalLog localLog, LocalLog localLog2, ComponentName componentName, ComponentName componentName2, boolean z2, boolean z3, boolean z4, int i5, InputMethodManagerInternal inputMethodManagerInternal) {
        if (i2 < 0) {
            wtf(null, "Non-positive sessionId: %s", Integer.valueOf(i2));
        }
        this.id = i2;
        this.mFlags = i5;
        this.userId = i;
        this.taskId = i3;
        this.uid = i4;
        this.mStartTime = SystemClock.elapsedRealtime();
        this.mService = autofillManagerServiceImpl;
        this.mLock = obj;
        this.mUi = autoFillUI;
        this.mHandler = handler;
        this.mRemoteFillService = componentName != null ? new RemoteFillService(context, componentName, i, this, z3) : null;
        this.mActivityToken = iBinder;
        this.mHasCallback = z;
        this.mUiLatencyHistory = localLog;
        this.mWtfHistory = localLog2;
        this.mComponentName = componentName2;
        this.mCompatMode = z2;
        this.mForAugmentedAutofillOnly = z4;
        setClientLocked(iBinder2);
        this.mInlineSessionController = new AutofillInlineSessionController(inputMethodManagerInternal, i, componentName2, handler, this.mLock, new InlineFillUi.InlineUiEventCallback() { // from class: com.android.server.autofill.Session.1
            @Override // com.android.server.autofill.ui.InlineFillUi.InlineUiEventCallback
            public void notifyInlineUiShown(AutofillId autofillId) {
                Session.this.notifyFillUiShown(autofillId);
            }

            @Override // com.android.server.autofill.ui.InlineFillUi.InlineUiEventCallback
            public void notifyInlineUiHidden(AutofillId autofillId) {
                Session.this.notifyFillUiHidden(autofillId);
            }
        });
        this.mMetricsLogger.write(newLogMaker(906).addTaggedData(1452, Integer.valueOf(i5)));
    }

    IBinder getActivityTokenLocked() {
        return this.mActivityToken;
    }

    void switchActivity(IBinder newActivity, IBinder newClient) {
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                Slog.w(TAG, "Call to Session#switchActivity() rejected - session: " + this.id + " destroyed");
                return;
            }
            this.mActivityToken = newActivity;
            setClientLocked(newClient);
            updateTrackedIdsLocked();
        }
    }

    private void setClientLocked(IBinder client) {
        unlinkClientVultureLocked();
        this.mClient = IAutoFillManagerClient.Stub.asInterface(client);
        this.mClientVulture = new IBinder.DeathRecipient() { // from class: com.android.server.autofill.-$$Lambda$Session$pnp5H13_WJpAwp-_PPOjh_vYbqs
            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                this.f$0.lambda$setClientLocked$1$Session();
            }
        };
        try {
            this.mClient.asBinder().linkToDeath(this.mClientVulture, 0);
        } catch (RemoteException e) {
            Slog.w(TAG, "could not set binder death listener on autofill client: " + e);
            this.mClientVulture = null;
        }
    }

    public /* synthetic */ void lambda$setClientLocked$1$Session() {
        Slog.d(TAG, "handling death of " + this.mActivityToken + " when saving=" + this.mIsSaving);
        synchronized (this.mLock) {
            if (this.mIsSaving) {
                this.mUi.hideFillUi(this);
            } else {
                this.mUi.destroyAll(this.mPendingSaveUi, this, false);
            }
        }
    }

    private void unlinkClientVultureLocked() {
        IAutoFillManagerClient iAutoFillManagerClient = this.mClient;
        if (iAutoFillManagerClient != null && this.mClientVulture != null) {
            boolean unlinked = iAutoFillManagerClient.asBinder().unlinkToDeath(this.mClientVulture, 0);
            if (!unlinked) {
                Slog.w(TAG, "unlinking vulture from death failed for " + this.mActivityToken);
            }
            this.mClientVulture = null;
        }
    }

    @Override // com.android.server.autofill.RemoteFillService.FillServiceCallbacks
    public void onFillRequestSuccess(int requestId, FillResponse response, String servicePackageName, int requestFlags) {
        int flags;
        Bundle bundle;
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                Slog.w(TAG, "Call to Session#onFillRequestSuccess() rejected - session: " + this.id + " destroyed");
                return;
            }
            LogMaker requestLog = this.mRequestLogs.get(requestId);
            if (requestLog != null) {
                requestLog.setType(10);
            } else {
                Slog.w(TAG, "onFillRequestSuccess(): no request log for id " + requestId);
            }
            if (response == null) {
                if (requestLog != null) {
                    requestLog.addTaggedData(909, -1);
                }
                processNullResponseLocked(requestId, requestFlags);
                return;
            }
            AutofillId[] fieldClassificationIds = response.getFieldClassificationIds();
            if (fieldClassificationIds == null || this.mService.isFieldClassificationEnabledLocked()) {
                this.mService.setLastResponse(this.id, response);
                long disableDuration = response.getDisableDuration();
                if (disableDuration <= 0) {
                    flags = 0;
                } else {
                    int flags2 = response.getFlags();
                    boolean disableActivityOnly = (flags2 & 2) != 0;
                    notifyDisableAutofillToClient(disableDuration, disableActivityOnly ? this.mComponentName : null);
                    if (disableActivityOnly) {
                        this.mService.disableAutofillForActivity(this.mComponentName, disableDuration, this.id, this.mCompatMode);
                    } else {
                        this.mService.disableAutofillForApp(this.mComponentName.getPackageName(), disableDuration, this.id, this.mCompatMode);
                    }
                    if (triggerAugmentedAutofillLocked(requestFlags) != null) {
                        this.mForAugmentedAutofillOnly = 1;
                        if (Helper.sDebug) {
                            Slog.d(TAG, "Service disabled autofill for " + this.mComponentName + ", but session is kept for augmented autofill only");
                            return;
                        }
                        return;
                    }
                    if (Helper.sDebug) {
                        StringBuilder sb = new StringBuilder("Service disabled autofill for ");
                        sb.append(this.mComponentName);
                        sb.append(": flags=");
                        sb.append(flags2);
                        StringBuilder message = sb.append(", duration=");
                        TimeUtils.formatDuration(disableDuration, message);
                        Slog.d(TAG, message.toString());
                    }
                    flags = 4;
                }
                if (((response.getDatasets() == null || response.getDatasets().isEmpty()) && response.getAuthentication() == null) || disableDuration > 0) {
                    bundle = null;
                    notifyUnavailableToClient(flags, null);
                    synchronized (this.mLock) {
                        this.mInlineSessionController.setInlineFillUiLocked(InlineFillUi.emptyUi(this.mCurrentViewId));
                    }
                } else {
                    bundle = null;
                }
                if (requestLog != null) {
                    requestLog.addTaggedData(909, Integer.valueOf(response.getDatasets() != null ? response.getDatasets().size() : 0));
                    if (fieldClassificationIds != null) {
                        requestLog.addTaggedData(1271, Integer.valueOf(fieldClassificationIds.length));
                    }
                }
                synchronized (this.mLock) {
                    processResponseLocked(response, bundle, requestFlags);
                }
                return;
            }
            Slog.w(TAG, "Ignoring " + response + " because field detection is disabled");
            processNullResponseLocked(requestId, requestFlags);
        }
    }

    @Override // com.android.server.autofill.RemoteFillService.FillServiceCallbacks
    public void onFillRequestFailure(int requestId, CharSequence message) {
        onFillRequestFailureOrTimeout(requestId, false, message);
    }

    @Override // com.android.server.autofill.RemoteFillService.FillServiceCallbacks
    public void onFillRequestTimeout(int requestId) {
        onFillRequestFailureOrTimeout(requestId, true, null);
    }

    private void onFillRequestFailureOrTimeout(int requestId, boolean timedOut, CharSequence message) {
        boolean showMessage = !TextUtils.isEmpty(message);
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                Slog.w(TAG, "Call to Session#onFillRequestFailureOrTimeout(req=" + requestId + ") rejected - session: " + this.id + " destroyed");
                return;
            }
            if (Helper.sDebug) {
                StringBuilder sb = new StringBuilder();
                sb.append("finishing session due to service ");
                sb.append(timedOut ? "timeout" : "failure");
                Slog.d(TAG, sb.toString());
            }
            this.mService.resetLastResponse();
            LogMaker requestLog = this.mRequestLogs.get(requestId);
            if (requestLog == null) {
                Slog.w(TAG, "onFillRequestFailureOrTimeout(): no log for id " + requestId);
            } else {
                requestLog.setType(timedOut ? 2 : 11);
            }
            if (showMessage) {
                int targetSdk = this.mService.getTargedSdkLocked();
                if (targetSdk >= 29) {
                    showMessage = false;
                    Slog.w(TAG, "onFillRequestFailureOrTimeout(): not showing '" + ((Object) message) + "' because service's targetting API " + targetSdk);
                }
                if (message != null) {
                    requestLog.addTaggedData(1572, Integer.valueOf(message.length()));
                }
            }
            notifyUnavailableToClient(6, null);
            if (showMessage) {
                getUiForShowing().showError(message, this);
            }
            removeSelf();
        }
    }

    @Override // com.android.server.autofill.RemoteFillService.FillServiceCallbacks
    public void onSaveRequestSuccess(String servicePackageName, IntentSender intentSender) {
        synchronized (this.mLock) {
            this.mIsSaving = false;
            if (this.mDestroyed) {
                Slog.w(TAG, "Call to Session#onSaveRequestSuccess() rejected - session: " + this.id + " destroyed");
                return;
            }
            LogMaker log = newLogMaker(918, servicePackageName).setType(intentSender == null ? 10 : 1);
            this.mMetricsLogger.write(log);
            if (intentSender != null) {
                if (Helper.sDebug) {
                    Slog.d(TAG, "Starting intent sender on save()");
                }
                startIntentSenderAndFinishSession(intentSender);
            }
            removeSelf();
        }
    }

    @Override // com.android.server.autofill.RemoteFillService.FillServiceCallbacks
    public void onSaveRequestFailure(CharSequence message, String servicePackageName) {
        int targetSdk;
        boolean showMessage = !TextUtils.isEmpty(message);
        synchronized (this.mLock) {
            this.mIsSaving = false;
            if (this.mDestroyed) {
                Slog.w(TAG, "Call to Session#onSaveRequestFailure() rejected - session: " + this.id + " destroyed");
                return;
            }
            if (showMessage && (targetSdk = this.mService.getTargedSdkLocked()) >= 29) {
                showMessage = false;
                Slog.w(TAG, "onSaveRequestFailure(): not showing '" + ((Object) message) + "' because service's targetting API " + targetSdk);
            }
            LogMaker log = newLogMaker(918, servicePackageName).setType(11);
            if (message != null) {
                log.addTaggedData(1572, Integer.valueOf(message.length()));
            }
            this.mMetricsLogger.write(log);
            if (showMessage) {
                getUiForShowing().showError(message, this);
            }
            removeSelf();
        }
    }

    private FillContext getFillContextByRequestIdLocked(int requestId) {
        ArrayList<FillContext> arrayList = this.mContexts;
        if (arrayList == null) {
            return null;
        }
        int numContexts = arrayList.size();
        for (int i = 0; i < numContexts; i++) {
            FillContext context = this.mContexts.get(i);
            if (context.getRequestId() == requestId) {
                return context;
            }
        }
        return null;
    }

    @Override // com.android.server.autofill.ui.AutoFillUI.AutoFillUiCallback
    public void authenticate(int requestId, int datasetIndex, IntentSender intent, Bundle extras, boolean authenticateInline) {
        if (Helper.sDebug) {
            Slog.d(TAG, "authenticate(): requestId=" + requestId + "; datasetIdx=" + datasetIndex + "; intentSender=" + intent);
        }
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                Slog.w(TAG, "Call to Session#authenticate() rejected - session: " + this.id + " destroyed");
                return;
            }
            Intent fillInIntent = createAuthFillInIntentLocked(requestId, extras);
            if (fillInIntent == null) {
                forceRemoveSelfLocked();
                return;
            }
            this.mService.setAuthenticationSelected(this.id, this.mClientState);
            int authenticationId = AutofillManager.makeAuthenticationId(requestId, datasetIndex);
            this.mHandler.sendMessage(PooledLambda.obtainMessage(new QuintConsumer() { // from class: com.android.server.autofill.-$$Lambda$Session$LYgiVF7QUn4954p-wNYTeWDnGkw
                public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                    ((Session) obj).startAuthentication(((Integer) obj2).intValue(), (IntentSender) obj3, (Intent) obj4, ((Boolean) obj5).booleanValue());
                }
            }, this, Integer.valueOf(authenticationId), intent, fillInIntent, Boolean.valueOf(authenticateInline)));
        }
    }

    public void onServiceDied(RemoteFillService service) {
        Slog.w(TAG, "removing session because service died");
        forceRemoveSelfLocked();
    }

    @Override // com.android.server.autofill.ui.AutoFillUI.AutoFillUiCallback
    public void fill(int requestId, int datasetIndex, Dataset dataset) {
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                Slog.w(TAG, "Call to Session#fill() rejected - session: " + this.id + " destroyed");
                return;
            }
            this.mHandler.sendMessage(PooledLambda.obtainMessage(new QuintConsumer() { // from class: com.android.server.autofill.-$$Lambda$knR7oLyPSG_CoFAxBA_nqSw3JBo
                public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                    ((Session) obj).autoFill(((Integer) obj2).intValue(), ((Integer) obj3).intValue(), (Dataset) obj4, ((Boolean) obj5).booleanValue());
                }
            }, this, Integer.valueOf(requestId), Integer.valueOf(datasetIndex), dataset, true));
        }
    }

    @Override // com.android.server.autofill.ui.AutoFillUI.AutoFillUiCallback
    public void save() {
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                Slog.w(TAG, "Call to Session#save() rejected - session: " + this.id + " destroyed");
                return;
            }
            this.mHandler.sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.autofill.-$$Lambda$Z6K-VL097A8ARGd4URY-lOvvM48
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ((AutofillManagerServiceImpl) obj).handleSessionSave((Session) obj2);
                }
            }, this.mService, this));
        }
    }

    @Override // com.android.server.autofill.ui.AutoFillUI.AutoFillUiCallback
    public void cancelSave() {
        synchronized (this.mLock) {
            this.mIsSaving = false;
            if (this.mDestroyed) {
                Slog.w(TAG, "Call to Session#cancelSave() rejected - session: " + this.id + " destroyed");
                return;
            }
            this.mHandler.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.autofill.-$$Lambda$Session$cYu1t6lYVopApYW-vct82-7slZk
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((Session) obj).removeSelf();
                }
            }, this));
        }
    }

    @Override // com.android.server.autofill.ui.AutoFillUI.AutoFillUiCallback
    public void requestShowFillUi(AutofillId id, int width, int height, IAutofillWindowPresenter presenter) {
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                Slog.w(TAG, "Call to Session#requestShowFillUi() rejected - session: " + id + " destroyed");
                return;
            }
            if (id.equals(this.mCurrentViewId)) {
                try {
                    ViewState view = this.mViewStates.get(id);
                    this.mClient.requestShowFillUi(this.id, id, width, height, view.getVirtualBounds(), presenter);
                } catch (RemoteException e) {
                    Slog.e(TAG, "Error requesting to show fill UI", e);
                }
            } else if (Helper.sDebug) {
                Slog.d(TAG, "Do not show full UI on " + id + " as it is not the current view (" + this.mCurrentViewId + ") anymore");
            }
        }
    }

    @Override // com.android.server.autofill.ui.AutoFillUI.AutoFillUiCallback
    public void dispatchUnhandledKey(AutofillId id, KeyEvent keyEvent) {
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                Slog.w(TAG, "Call to Session#dispatchUnhandledKey() rejected - session: " + id + " destroyed");
                return;
            }
            if (id.equals(this.mCurrentViewId)) {
                try {
                    this.mClient.dispatchUnhandledKey(this.id, id, keyEvent);
                } catch (RemoteException e) {
                    Slog.e(TAG, "Error requesting to dispatch unhandled key", e);
                }
            } else {
                Slog.w(TAG, "Do not dispatch unhandled key on " + id + " as it is not the current view (" + this.mCurrentViewId + ") anymore");
            }
        }
    }

    @Override // com.android.server.autofill.ui.AutoFillUI.AutoFillUiCallback
    public void requestHideFillUi(AutofillId id) {
        synchronized (this.mLock) {
            try {
                this.mClient.requestHideFillUi(this.id, id);
            } catch (RemoteException e) {
                Slog.e(TAG, "Error requesting to hide fill UI", e);
            }
            this.mInlineSessionController.hideInlineSuggestionsUiLocked(id);
        }
    }

    @Override // com.android.server.autofill.ui.AutoFillUI.AutoFillUiCallback
    public void cancelSession() {
        synchronized (this.mLock) {
            removeSelfLocked();
        }
    }

    @Override // com.android.server.autofill.ui.AutoFillUI.AutoFillUiCallback
    public void startIntentSenderAndFinishSession(IntentSender intentSender) {
        startIntentSender(intentSender, null);
    }

    @Override // com.android.server.autofill.ui.AutoFillUI.AutoFillUiCallback
    public void startIntentSender(IntentSender intentSender, Intent intent) {
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                Slog.w(TAG, "Call to Session#startIntentSender() rejected - session: " + this.id + " destroyed");
                return;
            }
            if (intent == null) {
                removeSelfLocked();
            }
            this.mHandler.sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.autofill.-$$Lambda$Session$Fs9zdJwELk-9rAM3RiY6AyBKswI
                public final void accept(Object obj, Object obj2, Object obj3) {
                    ((Session) obj).doStartIntentSender((IntentSender) obj2, (Intent) obj3);
                }
            }, this, intentSender, intent));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFillUiHidden(AutofillId autofillId) {
        synchronized (this.mLock) {
            try {
                this.mClient.notifyFillUiHidden(this.id, autofillId);
            } catch (RemoteException e) {
                Slog.e(TAG, "Error sending fill UI hidden notification", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFillUiShown(AutofillId autofillId) {
        synchronized (this.mLock) {
            try {
                this.mClient.notifyFillUiShown(this.id, autofillId);
            } catch (RemoteException e) {
                Slog.e(TAG, "Error sending fill UI shown notification", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doStartIntentSender(IntentSender intentSender, Intent intent) {
        try {
            synchronized (this.mLock) {
                this.mClient.startIntentSender(intentSender, intent);
            }
        } catch (RemoteException e) {
            Slog.e(TAG, "Error launching auth intent", e);
        }
    }

    void setAuthenticationResultLocked(Bundle data, int authenticationId) {
        if (this.mDestroyed) {
            Slog.w(TAG, "Call to Session#setAuthenticationResultLocked() rejected - session: " + this.id + " destroyed");
            return;
        }
        int requestId = AutofillManager.getRequestIdFromAuthenticationId(authenticationId);
        if (requestId == 1) {
            setAuthenticationResultForAugmentedAutofillLocked(data, authenticationId);
            return;
        }
        SparseArray<FillResponse> sparseArray = this.mResponses;
        if (sparseArray == null) {
            Slog.w(TAG, "setAuthenticationResultLocked(" + authenticationId + "): no responses");
            removeSelf();
            return;
        }
        FillResponse authenticatedResponse = sparseArray.get(requestId);
        if (authenticatedResponse == null || data == null) {
            Slog.w(TAG, "no authenticated response");
            removeSelf();
            return;
        }
        int datasetIdx = AutofillManager.getDatasetIdFromAuthenticationId(authenticationId);
        if (datasetIdx != 65535 && ((Dataset) authenticatedResponse.getDatasets().get(datasetIdx)) == null) {
            Slog.w(TAG, "no dataset with index " + datasetIdx + " on fill response");
            removeSelf();
            return;
        }
        this.mExpiredResponse = false;
        Parcelable result = data.getParcelable("android.view.autofill.extra.AUTHENTICATION_RESULT");
        Bundle newClientState = data.getBundle("android.view.autofill.extra.CLIENT_STATE");
        if (Helper.sDebug) {
            Slog.d(TAG, "setAuthenticationResultLocked(): result=" + result + ", clientState=" + newClientState + ", authenticationId=" + authenticationId);
        }
        if (result instanceof FillResponse) {
            logAuthenticationStatusLocked(requestId, 912);
            replaceResponseLocked(authenticatedResponse, (FillResponse) result, newClientState);
            return;
        }
        if (result instanceof Dataset) {
            if (datasetIdx != 65535) {
                logAuthenticationStatusLocked(requestId, 1126);
                if (newClientState != null) {
                    if (Helper.sDebug) {
                        Slog.d(TAG, "Updating client state from auth dataset");
                    }
                    this.mClientState = newClientState;
                }
                Dataset dataset = (Dataset) result;
                Dataset oldDataset = (Dataset) authenticatedResponse.getDatasets().get(datasetIdx);
                if (!isPinnedDataset(oldDataset)) {
                    authenticatedResponse.getDatasets().set(datasetIdx, dataset);
                }
                autoFill(requestId, datasetIdx, dataset, false);
                return;
            }
            Slog.w(TAG, "invalid index (" + datasetIdx + ") for authentication id " + authenticationId);
            logAuthenticationStatusLocked(requestId, 1127);
            return;
        }
        if (result != null) {
            Slog.w(TAG, "service returned invalid auth type: " + result);
        }
        logAuthenticationStatusLocked(requestId, 1128);
        processNullResponseLocked(requestId, 0);
    }

    private static boolean isPinnedDataset(Dataset dataset) {
        if (dataset != null && dataset.getFieldIds() != null) {
            int numOfFields = dataset.getFieldIds().size();
            for (int i = 0; i < numOfFields; i++) {
                InlinePresentation inlinePresentation = dataset.getFieldInlinePresentation(i);
                if (inlinePresentation != null && inlinePresentation.isPinned()) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    void setAuthenticationResultForAugmentedAutofillLocked(Bundle data, int authId) throws Throwable {
        Dataset dataset = data == null ? null : (Dataset) data.getParcelable("android.view.autofill.extra.AUTHENTICATION_RESULT");
        if (Helper.sDebug) {
            Slog.d(TAG, "Auth result for augmented autofill: sessionId=" + this.id + ", authId=" + authId + ", dataset=" + dataset);
        }
        if (dataset == null || dataset.getFieldIds().size() != 1 || dataset.getFieldIds().get(0) == null || dataset.getFieldValues().size() != 1 || dataset.getFieldValues().get(0) == null) {
            if (Helper.sDebug) {
                Slog.d(TAG, "Rejecting empty/invalid auth result");
            }
            this.mService.resetLastAugmentedAutofillResponse();
            removeSelfLocked();
            return;
        }
        List<AutofillId> fieldIds = dataset.getFieldIds();
        List<AutofillValue> autofillValues = dataset.getFieldValues();
        AutofillId fieldId = fieldIds.get(0);
        AutofillValue value = autofillValues.get(0);
        fieldId.setSessionId(this.id);
        this.mCurrentViewId = fieldId;
        Bundle clientState = data.getBundle("android.view.autofill.extra.CLIENT_STATE");
        this.mService.logAugmentedAutofillSelected(this.id, dataset.getId(), clientState);
        if (Helper.sDebug) {
            Slog.d(TAG, "Filling after auth: fieldId=" + fieldId + ", value=" + value);
        }
        try {
            this.mClient.autofill(this.id, fieldIds, autofillValues, true);
        } catch (RemoteException e) {
            Slog.w(TAG, "Error filling after auth: fieldId=" + fieldId + ", value=" + value + ", error=" + e);
        }
        this.mInlineSessionController.setInlineFillUiLocked(InlineFillUi.emptyUi(fieldId));
    }

    void setHasCallbackLocked(boolean hasIt) {
        if (this.mDestroyed) {
            Slog.w(TAG, "Call to Session#setHasCallbackLocked() rejected - session: " + this.id + " destroyed");
            return;
        }
        this.mHasCallback = hasIt;
    }

    private FillResponse getLastResponseLocked(String logPrefixFmt) {
        String logPrefix;
        if (Helper.sDebug && logPrefixFmt != null) {
            logPrefix = String.format(logPrefixFmt, Integer.valueOf(this.id));
        } else {
            logPrefix = null;
        }
        if (this.mContexts == null) {
            if (logPrefix != null) {
                Slog.d(TAG, logPrefix + ": no contexts");
            }
            return null;
        }
        if (this.mResponses == null) {
            if (Helper.sVerbose && logPrefix != null) {
                Slog.v(TAG, logPrefix + ": no responses on session");
            }
            return null;
        }
        int lastResponseIdx = getLastResponseIndexLocked();
        if (lastResponseIdx < 0) {
            if (logPrefix != null) {
                Slog.w(TAG, logPrefix + ": did not get last response. mResponses=" + this.mResponses + ", mViewStates=" + this.mViewStates);
            }
            return null;
        }
        FillResponse response = this.mResponses.valueAt(lastResponseIdx);
        if (Helper.sVerbose && logPrefix != null) {
            Slog.v(TAG, logPrefix + ": mResponses=" + this.mResponses + ", mContexts=" + this.mContexts + ", mViewStates=" + this.mViewStates);
        }
        return response;
    }

    private SaveInfo getSaveInfoLocked() {
        FillResponse response = getLastResponseLocked(null);
        if (response == null) {
            return null;
        }
        return response.getSaveInfo();
    }

    int getSaveInfoFlagsLocked() {
        SaveInfo saveInfo = getSaveInfoLocked();
        if (saveInfo == null) {
            return 0;
        }
        return saveInfo.getFlags();
    }

    public void logContextCommitted() {
        this.mHandler.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.autofill.-$$Lambda$Session$v6ZVyksJuHdWgJ1F8aoa_1LJWPo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) throws Throwable {
                ((Session) obj).handleLogContextCommitted();
            }
        }, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLogContextCommitted() throws Throwable {
        FillResponse lastResponse;
        FieldClassificationUserData userData;
        synchronized (this.mLock) {
            lastResponse = getLastResponseLocked("logContextCommited(%s)");
        }
        if (lastResponse == null) {
            Slog.w(TAG, "handleLogContextCommitted(): last response is null");
            return;
        }
        UserData genericUserData = this.mService.getUserData();
        FieldClassificationUserData userData2 = lastResponse.getUserData();
        if (userData2 == null && genericUserData == null) {
            userData = null;
        } else if (userData2 != null && genericUserData != null) {
            userData = new CompositeUserData(genericUserData, userData2);
        } else if (userData2 != null) {
            userData = userData2;
        } else {
            userData = this.mService.getUserData();
        }
        FieldClassificationStrategy fcStrategy = this.mService.getFieldClassificationStrategy();
        if (userData != null && fcStrategy != null) {
            logFieldClassificationScore(fcStrategy, userData);
        } else {
            logContextCommitted(null, null);
        }
    }

    private void logContextCommitted(ArrayList<AutofillId> detectedFieldIds, ArrayList<FieldClassification> detectedFieldClassifications) {
        synchronized (this.mLock) {
            logContextCommittedLocked(detectedFieldIds, detectedFieldClassifications);
        }
    }

    private void logContextCommittedLocked(ArrayList<AutofillId> detectedFieldIds, ArrayList<FieldClassification> detectedFieldClassifications) {
        String str;
        FillResponse lastResponse;
        AutofillId[] fieldClassificationIds;
        String str2;
        AutofillValue currentValue;
        ArraySet<String> ignoredDatasets;
        ArrayMap<AutofillId, ArraySet<String>> manuallyFilledIds;
        ArrayList<AutofillId> changedFieldIds;
        ArrayList<String> changedDatasetIds;
        FillResponse lastResponse2 = getLastResponseLocked("logContextCommited(%s)");
        if (lastResponse2 == null) {
            return;
        }
        int flags = lastResponse2.getFlags();
        if ((flags & 1) == 0) {
            if (Helper.sVerbose) {
                Slog.v(TAG, "logContextCommittedLocked(): ignored by flags " + flags);
                return;
            }
            return;
        }
        ArraySet<String> ignoredDatasets2 = null;
        ArrayList<AutofillId> changedFieldIds2 = null;
        ArrayList<String> changedDatasetIds2 = null;
        ArrayMap<AutofillId, ArraySet<String>> manuallyFilledIds2 = null;
        boolean hasAtLeastOneDataset = false;
        int responseCount = this.mResponses.size();
        int i = 0;
        while (true) {
            str = "logContextCommitted() skipping idless dataset ";
            if (i >= responseCount) {
                break;
            }
            FillResponse response = this.mResponses.valueAt(i);
            List<Dataset> datasets = response.getDatasets();
            if (datasets == null || datasets.isEmpty()) {
                if (Helper.sVerbose) {
                    Slog.v(TAG, "logContextCommitted() no datasets at " + i);
                }
            } else {
                int j = 0;
                while (true) {
                    flags = flags;
                    if (j >= datasets.size()) {
                        break;
                    }
                    Dataset dataset = datasets.get(j);
                    ArrayList<AutofillId> changedFieldIds3 = changedFieldIds2;
                    String datasetId = dataset.getId();
                    if (datasetId == null) {
                        if (!Helper.sVerbose) {
                            changedDatasetIds = changedDatasetIds2;
                        } else {
                            changedDatasetIds = changedDatasetIds2;
                            Slog.v(TAG, "logContextCommitted() skipping idless dataset " + dataset);
                        }
                    } else {
                        changedDatasetIds = changedDatasetIds2;
                        ArrayList<String> arrayList = this.mSelectedDatasetIds;
                        if (arrayList == null || !arrayList.contains(datasetId)) {
                            if (Helper.sVerbose) {
                                Slog.v(TAG, "adding ignored dataset " + datasetId);
                            }
                            if (ignoredDatasets2 == null) {
                                ignoredDatasets2 = new ArraySet<>();
                            }
                            ignoredDatasets2.add(datasetId);
                            hasAtLeastOneDataset = true;
                        } else {
                            hasAtLeastOneDataset = true;
                        }
                    }
                    j++;
                    flags = flags;
                    changedFieldIds2 = changedFieldIds3;
                    changedDatasetIds2 = changedDatasetIds;
                }
                changedFieldIds2 = changedFieldIds2;
                changedDatasetIds2 = changedDatasetIds2;
            }
            i++;
            flags = flags;
            changedFieldIds2 = changedFieldIds2;
            changedDatasetIds2 = changedDatasetIds2;
        }
        ArrayList<AutofillId> changedFieldIds4 = changedFieldIds2;
        ArrayList<String> changedDatasetIds3 = changedDatasetIds2;
        AutofillId[] fieldClassificationIds2 = lastResponse2.getFieldClassificationIds();
        if (!hasAtLeastOneDataset && fieldClassificationIds2 == null) {
            if (Helper.sVerbose) {
                Slog.v(TAG, "logContextCommittedLocked(): skipped (no datasets nor fields classification ids)");
                return;
            }
            return;
        }
        int i2 = 0;
        ArrayList<String> changedDatasetIds4 = changedDatasetIds3;
        while (i2 < this.mViewStates.size()) {
            ViewState viewState = this.mViewStates.valueAt(i2);
            int state = viewState.getState();
            if ((state & 8) == 0) {
                lastResponse = lastResponse2;
                fieldClassificationIds = fieldClassificationIds2;
            } else if ((state & 2048) != 0) {
                String datasetId2 = viewState.getDatasetId();
                if (datasetId2 == null) {
                    lastResponse = lastResponse2;
                    StringBuilder sb = new StringBuilder();
                    fieldClassificationIds = fieldClassificationIds2;
                    sb.append("logContextCommitted(): no dataset id on ");
                    sb.append(viewState);
                    Slog.w(TAG, sb.toString());
                } else {
                    lastResponse = lastResponse2;
                    fieldClassificationIds = fieldClassificationIds2;
                    AutofillValue autofilledValue = viewState.getAutofilledValue();
                    AutofillValue currentValue2 = viewState.getCurrentValue();
                    if (autofilledValue != null && autofilledValue.equals(currentValue2)) {
                        if (Helper.sDebug) {
                            Slog.d(TAG, "logContextCommitted(): ignoring changed " + viewState + " because it has same value that was autofilled");
                        }
                    } else {
                        if (Helper.sDebug) {
                            Slog.d(TAG, "logContextCommitted() found changed state: " + viewState);
                        }
                        if (changedFieldIds4 != null) {
                            changedFieldIds = changedFieldIds4;
                        } else {
                            ArrayList<AutofillId> changedFieldIds5 = new ArrayList<>();
                            changedDatasetIds4 = new ArrayList<>();
                            changedFieldIds = changedFieldIds5;
                        }
                        changedFieldIds.add(viewState.id);
                        changedDatasetIds4.add(datasetId2);
                        changedFieldIds4 = changedFieldIds;
                    }
                }
            } else {
                lastResponse = lastResponse2;
                fieldClassificationIds = fieldClassificationIds2;
                AutofillValue currentValue3 = viewState.getCurrentValue();
                if (currentValue3 == null) {
                    if (Helper.sDebug) {
                        Slog.d(TAG, "logContextCommitted(): skipping view without current value ( " + viewState + ")");
                    }
                } else if (hasAtLeastOneDataset) {
                    int j2 = 0;
                    while (j2 < responseCount) {
                        FillResponse response2 = this.mResponses.valueAt(j2);
                        ArraySet<String> ignoredDatasets3 = ignoredDatasets2;
                        List<Dataset> datasets2 = response2.getDatasets();
                        if (datasets2 == null || datasets2.isEmpty()) {
                            if (Helper.sVerbose) {
                                Slog.v(TAG, "logContextCommitted() no datasets at " + j2);
                            }
                            ignoredDatasets2 = ignoredDatasets3;
                        } else {
                            ArrayMap<AutofillId, ArraySet<String>> manuallyFilledIds3 = manuallyFilledIds2;
                            int k = 0;
                            while (true) {
                                hasAtLeastOneDataset = hasAtLeastOneDataset;
                                if (k >= datasets2.size()) {
                                    break;
                                }
                                Dataset dataset2 = datasets2.get(k);
                                List<Dataset> datasets3 = datasets2;
                                String datasetId3 = dataset2.getId();
                                if (datasetId3 == null) {
                                    if (Helper.sVerbose) {
                                        Slog.v(TAG, str + dataset2);
                                    }
                                    currentValue = currentValue3;
                                    str2 = str;
                                } else {
                                    responseCount = responseCount;
                                    ArrayList<AutofillValue> values = dataset2.getFieldValues();
                                    int l = 0;
                                    while (true) {
                                        str2 = str;
                                        if (l >= values.size()) {
                                            break;
                                        }
                                        AutofillValue candidate = values.get(l);
                                        if (!currentValue3.equals(candidate)) {
                                            currentValue3 = currentValue3;
                                            values = values;
                                        } else {
                                            if (Helper.sDebug) {
                                                Slog.d(TAG, "field " + viewState.id + " was manually filled with value set by dataset " + datasetId3);
                                            }
                                            if (manuallyFilledIds3 != null) {
                                                manuallyFilledIds = manuallyFilledIds3;
                                            } else {
                                                manuallyFilledIds = new ArrayMap<>();
                                            }
                                            ArraySet<String> datasetIds = manuallyFilledIds.get(viewState.id);
                                            if (datasetIds == null) {
                                                datasetIds = new ArraySet<>(1);
                                                manuallyFilledIds.put(viewState.id, datasetIds);
                                            }
                                            datasetIds.add(datasetId3);
                                            manuallyFilledIds3 = manuallyFilledIds;
                                        }
                                        l++;
                                        str = str2;
                                        currentValue3 = currentValue3;
                                        values = values;
                                    }
                                    currentValue = currentValue3;
                                    ArrayList<String> arrayList2 = this.mSelectedDatasetIds;
                                    if (arrayList2 == null || !arrayList2.contains(datasetId3)) {
                                        if (Helper.sVerbose) {
                                            Slog.v(TAG, "adding ignored dataset " + datasetId3);
                                        }
                                        if (ignoredDatasets3 != null) {
                                            ignoredDatasets = ignoredDatasets3;
                                        } else {
                                            ignoredDatasets = new ArraySet<>();
                                        }
                                        ignoredDatasets.add(datasetId3);
                                        ignoredDatasets3 = ignoredDatasets;
                                    }
                                }
                                k++;
                                datasets2 = datasets3;
                                str = str2;
                                currentValue3 = currentValue;
                                hasAtLeastOneDataset = hasAtLeastOneDataset;
                                responseCount = responseCount;
                            }
                            currentValue3 = currentValue3;
                            responseCount = responseCount;
                            str = str;
                            ignoredDatasets2 = ignoredDatasets3;
                            manuallyFilledIds2 = manuallyFilledIds3;
                        }
                        j2++;
                        str = str;
                        currentValue3 = currentValue3;
                        hasAtLeastOneDataset = hasAtLeastOneDataset;
                        responseCount = responseCount;
                    }
                }
            }
            i2++;
            lastResponse2 = lastResponse;
            str = str;
            fieldClassificationIds2 = fieldClassificationIds;
            hasAtLeastOneDataset = hasAtLeastOneDataset;
            responseCount = responseCount;
        }
        ArrayList<AutofillId> manuallyFilledFieldIds = null;
        ArrayList<ArrayList<String>> manuallyFilledDatasetIds = null;
        if (manuallyFilledIds2 != null) {
            int size = manuallyFilledIds2.size();
            manuallyFilledFieldIds = new ArrayList<>(size);
            manuallyFilledDatasetIds = new ArrayList<>(size);
            for (int i3 = 0; i3 < size; i3++) {
                AutofillId fieldId = manuallyFilledIds2.keyAt(i3);
                ArraySet<String> datasetIds2 = manuallyFilledIds2.valueAt(i3);
                manuallyFilledFieldIds.add(fieldId);
                manuallyFilledDatasetIds.add(new ArrayList<>(datasetIds2));
            }
        }
        this.mService.logContextCommittedLocked(this.id, this.mClientState, this.mSelectedDatasetIds, ignoredDatasets2, changedFieldIds4, changedDatasetIds4, manuallyFilledFieldIds, manuallyFilledDatasetIds, detectedFieldIds, detectedFieldClassifications, this.mComponentName, this.mCompatMode);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x009e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void logFieldClassificationScore(com.android.server.autofill.FieldClassificationStrategy r26, android.service.autofill.FieldClassificationUserData r27) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.autofill.Session.logFieldClassificationScore(com.android.server.autofill.FieldClassificationStrategy, android.service.autofill.FieldClassificationUserData):void");
    }

    public /* synthetic */ void lambda$logFieldClassificationScore$2$Session(int viewsSize, AutofillId[] autofillIds, String[] userValues, String[] categoryIds, ArrayList detectedFieldIds, ArrayList detectedFieldClassifications, Bundle result) {
        if (result == null) {
            if (Helper.sDebug) {
                Slog.d(TAG, "setFieldClassificationScore(): no results");
            }
            logContextCommitted(null, null);
            return;
        }
        AutofillFieldClassificationService.Scores scores = result.getParcelable("scores");
        if (scores == null) {
            Slog.w(TAG, "No field classification score on " + result);
            return;
        }
        int j = 0;
        for (int i = 0; i < viewsSize; i++) {
            try {
                AutofillId autofillId = autofillIds[i];
                ArrayMap<String, Float> scoresByField = null;
                j = 0;
                while (j < userValues.length) {
                    String categoryId = categoryIds[j];
                    float score = scores.scores[i][j];
                    if (score > 0.0f) {
                        if (scoresByField == null) {
                            scoresByField = new ArrayMap<>(userValues.length);
                        }
                        Float currentScore = scoresByField.get(categoryId);
                        if (currentScore != null && currentScore.floatValue() > score) {
                            if (Helper.sVerbose) {
                                Slog.v(TAG, "skipping score " + score + " because it's less than " + currentScore);
                            }
                        } else {
                            if (Helper.sVerbose) {
                                Slog.v(TAG, "adding score " + score + " at index " + j + " and id " + autofillId);
                            }
                            scoresByField.put(categoryId, Float.valueOf(score));
                        }
                    } else if (Helper.sVerbose) {
                        Slog.v(TAG, "skipping score 0 at index " + j + " and id " + autofillId);
                    }
                    j++;
                    userValues = userValues;
                }
                if (scoresByField == null) {
                    if (Helper.sVerbose) {
                        Slog.v(TAG, "no score for autofillId=" + autofillId);
                    }
                } else {
                    ArrayList<FieldClassification.Match> matches = new ArrayList<>(scoresByField.size());
                    j = 0;
                    while (j < j) {
                        String fieldId = scoresByField.keyAt(j);
                        matches.add(new FieldClassification.Match(fieldId, scoresByField.valueAt(j).floatValue()));
                        j++;
                    }
                    detectedFieldIds.add(autofillId);
                    detectedFieldClassifications.add(new FieldClassification(matches));
                }
            } catch (ArrayIndexOutOfBoundsException e) {
                wtf(e, "Error accessing FC score at [%d, %d] (%s): %s", Integer.valueOf(i), Integer.valueOf(j), scores, e);
                return;
            }
        }
        logContextCommitted(detectedFieldIds, detectedFieldClassifications);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x05e2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean showSaveLocked() {
        /*
            Method dump skipped, instruction units count: 1589
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.autofill.Session.showSaveLocked():boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logSaveShown() {
        this.mService.logSaveShown(this.id, this.mClientState);
    }

    private ArrayMap<AutofillId, InternalSanitizer> createSanitizers(SaveInfo saveInfo) {
        InternalSanitizer[] sanitizerKeys;
        if (saveInfo == null || (sanitizerKeys = saveInfo.getSanitizerKeys()) == null) {
            return null;
        }
        int size = sanitizerKeys.length;
        ArrayMap<AutofillId, InternalSanitizer> sanitizers = new ArrayMap<>(size);
        if (Helper.sDebug) {
            Slog.d(TAG, "Service provided " + size + " sanitizers");
        }
        AutofillId[][] sanitizerValues = saveInfo.getSanitizerValues();
        for (int i = 0; i < size; i++) {
            InternalSanitizer sanitizer = sanitizerKeys[i];
            AutofillId[] ids = sanitizerValues[i];
            if (Helper.sDebug) {
                Slog.d(TAG, "sanitizer #" + i + " (" + sanitizer + ") for ids " + Arrays.toString(ids));
            }
            for (AutofillId id : ids) {
                sanitizers.put(id, sanitizer);
            }
        }
        return sanitizers;
    }

    private AutofillValue getSanitizedValue(ArrayMap<AutofillId, InternalSanitizer> sanitizers, AutofillId id, AutofillValue value) {
        if (sanitizers == null || value == null) {
            return value;
        }
        ViewState state = this.mViewStates.get(id);
        AutofillValue sanitized = state == null ? null : state.getSanitizedValue();
        if (sanitized == null) {
            InternalSanitizer sanitizer = sanitizers.get(id);
            if (sanitizer == null) {
                return value;
            }
            sanitized = sanitizer.sanitize(value);
            if (Helper.sDebug) {
                Slog.d(TAG, "Value for " + id + "(" + value + ") sanitized to " + sanitized);
            }
            if (state != null) {
                state.setSanitizedValue(sanitized);
            }
        }
        return sanitized;
    }

    boolean isSavingLocked() {
        return this.mIsSaving;
    }

    private AutofillValue getValueFromContextsLocked(AutofillId autofillId) {
        int numContexts = this.mContexts.size();
        for (int i = numContexts - 1; i >= 0; i--) {
            FillContext context = this.mContexts.get(i);
            AssistStructure.ViewNode node = Helper.findViewNodeByAutofillId(context.getStructure(), autofillId);
            if (node != null) {
                AutofillValue value = node.getAutofillValue();
                if (Helper.sDebug) {
                    Slog.d(TAG, "getValueFromContexts(" + this.id + SliceClientPermissions.SliceAuthority.DELIMITER + autofillId + ") at " + i + ": " + value);
                }
                if (value != null && !value.isEmpty()) {
                    return value;
                }
            }
        }
        return null;
    }

    private CharSequence[] getAutofillOptionsFromContextsLocked(AutofillId id) {
        int numContexts = this.mContexts.size();
        for (int i = numContexts - 1; i >= 0; i--) {
            FillContext context = this.mContexts.get(i);
            AssistStructure.ViewNode node = Helper.findViewNodeByAutofillId(context.getStructure(), id);
            if (node != null && node.getAutofillOptions() != null) {
                return node.getAutofillOptions();
            }
        }
        return null;
    }

    private void updateValuesForSaveLocked() {
        ArrayMap<AutofillId, InternalSanitizer> sanitizers = createSanitizers(getSaveInfoLocked());
        int numContexts = this.mContexts.size();
        for (int contextNum = 0; contextNum < numContexts; contextNum++) {
            FillContext context = this.mContexts.get(contextNum);
            AssistStructure.ViewNode[] nodes = context.findViewNodesByAutofillIds(getIdsOfAllViewStatesLocked());
            if (Helper.sVerbose) {
                Slog.v(TAG, "updateValuesForSaveLocked(): updating " + context);
            }
            for (int viewStateNum = 0; viewStateNum < this.mViewStates.size(); viewStateNum++) {
                ViewState viewState = this.mViewStates.valueAt(viewStateNum);
                AutofillId id = viewState.id;
                AutofillValue value = viewState.getCurrentValue();
                if (value == null) {
                    if (Helper.sVerbose) {
                        Slog.v(TAG, "updateValuesForSaveLocked(): skipping " + id);
                    }
                } else {
                    AssistStructure.ViewNode node = nodes[viewStateNum];
                    if (node == null) {
                        Slog.w(TAG, "callSaveLocked(): did not find node with id " + id);
                    } else {
                        if (Helper.sVerbose) {
                            Slog.v(TAG, "updateValuesForSaveLocked(): updating " + id + " to " + value);
                        }
                        AutofillValue sanitizedValue = viewState.getSanitizedValue();
                        if (sanitizedValue == null) {
                            sanitizedValue = getSanitizedValue(sanitizers, id, value);
                        }
                        if (sanitizedValue != null) {
                            node.updateAutofillValue(sanitizedValue);
                        } else if (Helper.sDebug) {
                            Slog.d(TAG, "updateValuesForSaveLocked(): not updating field " + id + " because it failed sanitization");
                        }
                    }
                }
            }
            context.getStructure().sanitizeForParceling(false);
            if (Helper.sVerbose) {
                Slog.v(TAG, "updateValuesForSaveLocked(): dumping structure of " + context + " before calling service.save()");
                context.getStructure().dump(false);
            }
        }
    }

    void callSaveLocked() {
        if (this.mDestroyed) {
            Slog.w(TAG, "Call to Session#callSaveLocked() rejected - session: " + this.id + " destroyed");
            return;
        }
        if (this.mRemoteFillService == null) {
            wtf(null, "callSaveLocked() called without a remote service. mForAugmentedAutofillOnly: %s", Boolean.valueOf(this.mForAugmentedAutofillOnly));
            return;
        }
        if (Helper.sVerbose) {
            Slog.v(TAG, "callSaveLocked(" + this.id + "): mViewStates=" + this.mViewStates);
        }
        if (this.mContexts == null) {
            Slog.w(TAG, "callSaveLocked(): no contexts");
            return;
        }
        updateValuesForSaveLocked();
        cancelCurrentRequestLocked();
        ArrayList<FillContext> contexts = mergePreviousSessionLocked(true);
        SaveRequest saveRequest = new SaveRequest(contexts, this.mClientState, this.mSelectedDatasetIds);
        this.mRemoteFillService.onSaveRequest(saveRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<FillContext> mergePreviousSessionLocked(boolean forSave) {
        ArrayList<Session> previousSessions = this.mService.getPreviousSessionsLocked(this);
        if (previousSessions != null) {
            if (Helper.sDebug) {
                Slog.d(TAG, "mergeSessions(" + this.id + "): Merging the content of " + previousSessions.size() + " sessions for task " + this.taskId);
            }
            ArrayList<FillContext> contexts = new ArrayList<>();
            for (int i = 0; i < previousSessions.size(); i++) {
                Session previousSession = previousSessions.get(i);
                ArrayList<FillContext> previousContexts = previousSession.mContexts;
                if (previousContexts == null) {
                    Slog.w(TAG, "mergeSessions(" + this.id + "): Not merging null contexts from " + previousSession.id);
                } else {
                    if (forSave) {
                        previousSession.updateValuesForSaveLocked();
                    }
                    if (Helper.sDebug) {
                        Slog.d(TAG, "mergeSessions(" + this.id + "): adding " + previousContexts.size() + " context from previous session #" + previousSession.id);
                    }
                    contexts.addAll(previousContexts);
                    if (this.mClientState == null && previousSession.mClientState != null) {
                        if (Helper.sDebug) {
                            Slog.d(TAG, "mergeSessions(" + this.id + "): setting client state from previous session" + previousSession.id);
                        }
                        this.mClientState = previousSession.mClientState;
                    }
                }
            }
            contexts.addAll(this.mContexts);
            return contexts;
        }
        return new ArrayList<>(this.mContexts);
    }

    private boolean requestNewFillResponseOnViewEnteredIfNecessaryLocked(AutofillId id, ViewState viewState, int flags) {
        if ((flags & 1) != 0) {
            this.mForAugmentedAutofillOnly = false;
            if (Helper.sDebug) {
                Slog.d(TAG, "Re-starting session on view " + id + " and flags " + flags);
            }
            requestNewFillResponseLocked(viewState, 256, flags);
            return true;
        }
        if (shouldStartNewPartitionLocked(id)) {
            if (Helper.sDebug) {
                Slog.d(TAG, "Starting partition or augmented request for view id " + id + ": " + viewState.getStateAsString());
            }
            requestNewFillResponseLocked(viewState, 32, flags);
            return true;
        }
        if (Helper.sVerbose) {
            Slog.v(TAG, "Not starting new partition for view " + id + ": " + viewState.getStateAsString());
        }
        return false;
    }

    private boolean shouldStartNewPartitionLocked(AutofillId id) {
        ViewState currentView = this.mViewStates.get(id);
        SparseArray<FillResponse> sparseArray = this.mResponses;
        if (sparseArray == null) {
            return currentView != null && (currentView.getState() & 65536) == 0;
        }
        if (this.mExpiredResponse) {
            if (Helper.sDebug) {
                Slog.d(TAG, "Starting a new partition because the response has expired.");
            }
            return true;
        }
        int numResponses = sparseArray.size();
        if (numResponses >= AutofillManagerService.getPartitionMaxCount()) {
            Slog.e(TAG, "Not starting a new partition on " + id + " because session " + this.id + " reached maximum of " + AutofillManagerService.getPartitionMaxCount());
            return false;
        }
        for (int responseNum = 0; responseNum < numResponses; responseNum++) {
            FillResponse response = this.mResponses.valueAt(responseNum);
            if (ArrayUtils.contains(response.getIgnoredIds(), id)) {
                return false;
            }
            SaveInfo saveInfo = response.getSaveInfo();
            if (saveInfo != null && (ArrayUtils.contains(saveInfo.getOptionalIds(), id) || ArrayUtils.contains(saveInfo.getRequiredIds(), id))) {
                return false;
            }
            List<Dataset> datasets = response.getDatasets();
            if (datasets != null) {
                int numDatasets = datasets.size();
                for (int dataSetNum = 0; dataSetNum < numDatasets; dataSetNum++) {
                    ArrayList<AutofillId> fields = datasets.get(dataSetNum).getFieldIds();
                    if (fields != null && fields.contains(id)) {
                        return false;
                    }
                }
            }
            if (ArrayUtils.contains(response.getAuthenticationIds(), id)) {
                return false;
            }
        }
        return true;
    }

    void updateLocked(AutofillId id, Rect virtualBounds, AutofillValue value, int action, int flags) {
        if (this.mDestroyed) {
            Slog.w(TAG, "Call to Session#updateLocked() rejected - session: " + id + " destroyed");
            return;
        }
        if (action == 5) {
            this.mExpiredResponse = true;
            if (Helper.sDebug) {
                Slog.d(TAG, "Set the response has expired.");
                return;
            }
            return;
        }
        id.setSessionId(this.id);
        if (Helper.sVerbose) {
            Slog.v(TAG, "updateLocked(" + this.id + "): id=" + id + ", action=" + actionAsString(action) + ", flags=" + flags);
        }
        ViewState viewState = this.mViewStates.get(id);
        if (Helper.sVerbose) {
            Slog.v(TAG, "updateLocked(" + this.id + "): mCurrentViewId=" + this.mCurrentViewId + ", mExpiredResponse=" + this.mExpiredResponse + ", viewState=" + viewState);
        }
        if (viewState == null) {
            if (action == 1 || action == 4 || action == 2) {
                if (Helper.sVerbose) {
                    Slog.v(TAG, "Creating viewState for " + id);
                }
                boolean isIgnored = isIgnoredLocked(id);
                viewState = new ViewState(id, this, isIgnored ? 128 : 1);
                this.mViewStates.put(id, viewState);
                if (isIgnored) {
                    if (Helper.sDebug) {
                        Slog.d(TAG, "updateLocked(): ignoring view " + viewState);
                        return;
                    }
                    return;
                }
            } else {
                if (Helper.sVerbose) {
                    Slog.v(TAG, "Ignoring specific action when viewState=null");
                    return;
                }
                return;
            }
        }
        if (action == 1) {
            this.mCurrentViewId = viewState.id;
            viewState.update(value, virtualBounds, flags);
            requestNewFillResponseLocked(viewState, 16, flags);
            return;
        }
        if (action == 2) {
            if (Helper.sVerbose && virtualBounds != null) {
                Slog.v(TAG, "entered on virtual child " + id + ": " + virtualBounds);
            }
            boolean isSameViewEntered = Objects.equals(this.mCurrentViewId, viewState.id);
            this.mCurrentViewId = viewState.id;
            if (value != null) {
                viewState.setCurrentValue(value);
            }
            if (this.mCompatMode && (viewState.getState() & 512) != 0) {
                if (Helper.sDebug) {
                    Slog.d(TAG, "Ignoring VIEW_ENTERED on URL BAR (id=" + id + ")");
                    return;
                }
                return;
            }
            if ((flags & 1) == 0) {
                ArrayList<AutofillId> arrayList = this.mAugmentedAutofillableIds;
                if (arrayList != null && arrayList.contains(id)) {
                    if (!isSameViewEntered) {
                        if (Helper.sDebug) {
                            Slog.d(TAG, "trigger augmented autofill.");
                        }
                        triggerAugmentedAutofillLocked(flags);
                        return;
                    } else {
                        if (Helper.sDebug) {
                            Slog.d(TAG, "skip augmented autofill for same view.");
                            return;
                        }
                        return;
                    }
                }
                if (this.mForAugmentedAutofillOnly && isSameViewEntered) {
                    if (Helper.sDebug) {
                        Slog.d(TAG, "skip augmented autofill for same view.");
                        return;
                    }
                    return;
                }
            }
            if (requestNewFillResponseOnViewEnteredIfNecessaryLocked(id, viewState, flags) || isSameViewEntered) {
                return;
            }
            viewState.update(value, virtualBounds, flags);
            return;
        }
        if (action != 3) {
            if (action == 4) {
                if (this.mCompatMode && (viewState.getState() & 512) != 0) {
                    AssistStructure.ViewNode viewNode = this.mUrlBar;
                    String currentUrl = viewNode == null ? null : viewNode.getText().toString().trim();
                    if (currentUrl == null) {
                        wtf(null, "URL bar value changed, but current value is null", new Object[0]);
                        return;
                    }
                    if (value == null || !value.isText()) {
                        wtf(null, "URL bar value changed to null or non-text: %s", value);
                        return;
                    }
                    String newUrl = value.getTextValue().toString();
                    if (newUrl.equals(currentUrl)) {
                        if (Helper.sDebug) {
                            Slog.d(TAG, "Ignoring change on URL bar as it's the same");
                            return;
                        }
                        return;
                    } else if (this.mSaveOnAllViewsInvisible) {
                        if (Helper.sDebug) {
                            Slog.d(TAG, "Ignoring change on URL because session will finish when views are gone");
                            return;
                        }
                        return;
                    } else {
                        if (Helper.sDebug) {
                            Slog.d(TAG, "Finishing session because URL bar changed");
                        }
                        forceRemoveSelfLocked(5);
                        return;
                    }
                }
                if (!Objects.equals(value, viewState.getCurrentValue())) {
                    logIfViewClearedLocked(id, value, viewState);
                    updateViewStateAndUiOnValueChangedLocked(id, value, viewState, flags);
                    return;
                }
                return;
            }
            Slog.w(TAG, "updateLocked(): unknown action: " + action);
            return;
        }
        if (Objects.equals(this.mCurrentViewId, viewState.id)) {
            if (Helper.sVerbose) {
                Slog.v(TAG, "Exiting view " + id);
            }
            this.mUi.hideFillUi(this);
            hideAugmentedAutofillLocked(viewState);
            this.mInlineSessionController.resetInlineFillUiLocked();
            this.mCurrentViewId = null;
        }
    }

    private void hideAugmentedAutofillLocked(ViewState viewState) {
        if ((viewState.getState() & 4096) != 0) {
            viewState.resetState(4096);
            cancelAugmentedAutofillLocked();
        }
    }

    private boolean isIgnoredLocked(AutofillId id) {
        FillResponse response = getLastResponseLocked(null);
        if (response == null) {
            return false;
        }
        return ArrayUtils.contains(response.getIgnoredIds(), id);
    }

    private void logIfViewClearedLocked(AutofillId id, AutofillValue value, ViewState viewState) {
        if ((value == null || value.isEmpty()) && viewState.getCurrentValue() != null && viewState.getCurrentValue().isText() && viewState.getCurrentValue().getTextValue() != null && getSaveInfoLocked() != null) {
            int length = viewState.getCurrentValue().getTextValue().length();
            if (Helper.sDebug) {
                Slog.d(TAG, "updateLocked(" + id + "): resetting value that was " + length + " chars long");
            }
            LogMaker log = newLogMaker(1124).addTaggedData(1125, Integer.valueOf(length));
            this.mMetricsLogger.write(log);
        }
    }

    private void updateViewStateAndUiOnValueChangedLocked(AutofillId id, AutofillValue value, ViewState viewState, int flags) {
        CharSequence text;
        String textValue = (value == null || !value.isText() || (text = value.getTextValue()) == null) ? null : text.toString();
        updateFilteringStateOnValueChangedLocked(textValue, viewState);
        viewState.setCurrentValue(value);
        String filterText = textValue;
        AutofillValue filledValue = viewState.getAutofilledValue();
        if (filledValue != null) {
            if (filledValue.equals(value)) {
                if (Helper.sVerbose) {
                    Slog.v(TAG, "ignoring autofilled change on id " + id);
                }
                this.mInlineSessionController.hideInlineSuggestionsUiLocked(viewState.id);
                viewState.resetState(8);
                return;
            }
            if (viewState.id.equals(this.mCurrentViewId) && (viewState.getState() & 4) != 0) {
                if (Helper.sVerbose) {
                    Slog.v(TAG, "field changed after autofill on id " + id);
                }
                viewState.resetState(4);
                ViewState currentView = this.mViewStates.get(this.mCurrentViewId);
                currentView.maybeCallOnFillReady(flags);
            }
        }
        if (viewState.id.equals(this.mCurrentViewId) && (viewState.getState() & 8192) != 0) {
            if ((viewState.getState() & 32768) != 0) {
                this.mInlineSessionController.disableFilterMatching(viewState.id);
            }
            this.mInlineSessionController.filterInlineFillUiLocked(this.mCurrentViewId, filterText);
        } else if (viewState.id.equals(this.mCurrentViewId) && (viewState.getState() & 4096) != 0 && !TextUtils.isEmpty(filterText)) {
            this.mInlineSessionController.hideInlineSuggestionsUiLocked(this.mCurrentViewId);
        }
        viewState.setState(8);
        getUiForShowing().filterFillUi(filterText, this);
    }

    private void updateFilteringStateOnValueChangedLocked(String newTextValue, ViewState viewState) {
        String currentTextValue;
        if (newTextValue == null) {
            newTextValue = "";
        }
        AutofillValue currentValue = viewState.getCurrentValue();
        if (currentValue == null || !currentValue.isText()) {
            currentTextValue = "";
        } else {
            currentTextValue = currentValue.getTextValue().toString();
        }
        if ((viewState.getState() & 16384) == 0) {
            if (!containsCharsInOrder(newTextValue, currentTextValue)) {
                viewState.setState(16384);
            }
        } else if (!containsCharsInOrder(currentTextValue, newTextValue)) {
            viewState.setState(32768);
        }
    }

    private static boolean containsCharsInOrder(String s1, String s2) {
        int prevIndex = -1;
        for (char ch : s2.toCharArray()) {
            int index = TextUtils.indexOf(s1, ch, prevIndex + 1);
            if (index == -1) {
                return false;
            }
            prevIndex = index;
        }
        return true;
    }

    @Override // com.android.server.autofill.ViewState.Listener
    public void onFillReady(FillResponse response, AutofillId filledId, AutofillValue value) {
        String filterText;
        CharSequence serviceLabel;
        Drawable serviceIcon;
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                Slog.w(TAG, "Call to Session#onFillReady() rejected - session: " + this.id + " destroyed");
                return;
            }
            if (value != null && value.isText()) {
                String filterText2 = value.getTextValue().toString();
                filterText = filterText2;
            } else {
                filterText = null;
            }
            synchronized (this.mLock) {
                serviceLabel = this.mService.getServiceLabelLocked();
                serviceIcon = this.mService.getServiceIconLocked();
            }
            if (serviceLabel == null || serviceIcon == null) {
                wtf(null, "onFillReady(): no service label or icon", new Object[0]);
                return;
            }
            if (response.supportsInlineSuggestions()) {
                synchronized (this.mLock) {
                    if (requestShowInlineSuggestionsLocked(response, filterText)) {
                        ViewState currentView = this.mViewStates.get(this.mCurrentViewId);
                        currentView.setState(8192);
                        this.mService.logDatasetShown(this.id, this.mClientState);
                        return;
                    }
                }
            }
            getUiForShowing().showFillUi(filledId, response, filterText, this.mService.getServicePackageName(), this.mComponentName, serviceLabel, serviceIcon, this, this.id, this.mCompatMode);
            this.mService.logDatasetShown(this.id, this.mClientState);
            synchronized (this.mLock) {
                if (this.mUiShownTime == 0) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    this.mUiShownTime = jElapsedRealtime;
                    long duration = jElapsedRealtime - this.mStartTime;
                    if (Helper.sDebug) {
                        StringBuilder msg = new StringBuilder("1st UI for ");
                        msg.append(this.mActivityToken);
                        msg.append(" shown in ");
                        TimeUtils.formatDuration(duration, msg);
                        Slog.d(TAG, msg.toString());
                    }
                    StringBuilder historyLog = new StringBuilder("id=");
                    historyLog.append(this.id);
                    historyLog.append(" app=");
                    historyLog.append(this.mActivityToken);
                    historyLog.append(" svc=");
                    historyLog.append(this.mService.getServicePackageName());
                    historyLog.append(" latency=");
                    TimeUtils.formatDuration(duration, historyLog);
                    this.mUiLatencyHistory.log(historyLog.toString());
                    addTaggedDataToRequestLogLocked(response.getRequestId(), 1145, Long.valueOf(duration));
                }
            }
        }
    }

    private boolean requestShowInlineSuggestionsLocked(FillResponse response, String filterText) {
        if (this.mCurrentViewId == null) {
            Log.w(TAG, "requestShowInlineSuggestionsLocked(): no view currently focused");
            return false;
        }
        final AutofillId focusedId = this.mCurrentViewId;
        Optional<InlineSuggestionsRequest> inlineSuggestionsRequest = this.mInlineSessionController.getInlineSuggestionsRequestLocked();
        if (!inlineSuggestionsRequest.isPresent()) {
            Log.w(TAG, "InlineSuggestionsRequest unavailable");
            return false;
        }
        RemoteInlineSuggestionRenderService remoteRenderService = this.mService.getRemoteInlineSuggestionRenderServiceLocked();
        if (remoteRenderService == null) {
            Log.w(TAG, "RemoteInlineSuggestionRenderService not found");
            return false;
        }
        InlineFillUi inlineFillUi = InlineFillUi.forAutofill(inlineSuggestionsRequest.get(), response, focusedId, filterText, this, new Runnable() { // from class: com.android.server.autofill.-$$Lambda$Session$Pjng4nWFLSS2miVoJMFq_OQCncI
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$requestShowInlineSuggestionsLocked$3$Session(focusedId);
            }
        }, remoteRenderService, this.userId, this.id);
        return this.mInlineSessionController.setInlineFillUiLocked(inlineFillUi);
    }

    public /* synthetic */ void lambda$requestShowInlineSuggestionsLocked$3$Session(AutofillId focusedId) {
        synchronized (this.mLock) {
            this.mInlineSessionController.setInlineFillUiLocked(InlineFillUi.emptyUi(focusedId));
        }
    }

    boolean isDestroyed() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mDestroyed;
        }
        return z;
    }

    IAutoFillManagerClient getClient() {
        IAutoFillManagerClient iAutoFillManagerClient;
        synchronized (this.mLock) {
            iAutoFillManagerClient = this.mClient;
        }
        return iAutoFillManagerClient;
    }

    private void notifyUnavailableToClient(int sessionFinishedState, ArrayList<AutofillId> autofillableIds) {
        synchronized (this.mLock) {
            if (this.mCurrentViewId == null) {
                return;
            }
            try {
                if (this.mHasCallback) {
                    this.mClient.notifyNoFillUi(this.id, this.mCurrentViewId, sessionFinishedState);
                } else if (sessionFinishedState != 0) {
                    this.mClient.setSessionFinished(sessionFinishedState, autofillableIds);
                }
            } catch (RemoteException e) {
                Slog.e(TAG, "Error notifying client no fill UI: id=" + this.mCurrentViewId, e);
            }
        }
    }

    private void notifyDisableAutofillToClient(long disableDuration, ComponentName componentName) {
        synchronized (this.mLock) {
            if (this.mCurrentViewId == null) {
                return;
            }
            try {
                this.mClient.notifyDisableAutofill(disableDuration, componentName);
            } catch (RemoteException e) {
                Slog.e(TAG, "Error notifying client disable autofill: id=" + this.mCurrentViewId, e);
            }
        }
    }

    private void updateTrackedIdsLocked() {
        boolean saveOnFinish;
        AutofillId saveTriggerId;
        int flags;
        ArraySet<AutofillId> trackedViews;
        ArraySet<AutofillId> fillableIds;
        boolean z;
        FillResponse response = getLastResponseLocked(null);
        if (response == null) {
            return;
        }
        ArraySet<AutofillId> trackedViews2 = null;
        this.mSaveOnAllViewsInvisible = false;
        SaveInfo saveInfo = response.getSaveInfo();
        boolean z2 = true;
        if (saveInfo == null) {
            saveOnFinish = true;
            saveTriggerId = null;
            flags = 0;
            trackedViews = null;
        } else {
            AutofillId saveTriggerId2 = saveInfo.getTriggerId();
            if (saveTriggerId2 != null) {
                writeLog(1228);
            }
            int flags2 = saveInfo.getFlags();
            if ((flags2 & 1) == 0) {
                z = false;
            } else {
                z = true;
            }
            this.mSaveOnAllViewsInvisible = z;
            if (z) {
                if (0 == 0) {
                    trackedViews2 = new ArraySet<>();
                }
                if (saveInfo.getRequiredIds() != null) {
                    Collections.addAll(trackedViews2, saveInfo.getRequiredIds());
                }
                if (saveInfo.getOptionalIds() != null) {
                    Collections.addAll(trackedViews2, saveInfo.getOptionalIds());
                }
            }
            if ((flags2 & 2) == 0) {
                saveOnFinish = true;
                saveTriggerId = saveTriggerId2;
                flags = flags2;
                trackedViews = trackedViews2;
            } else {
                saveOnFinish = false;
                saveTriggerId = saveTriggerId2;
                flags = flags2;
                trackedViews = trackedViews2;
            }
        }
        List<Dataset> datasets = response.getDatasets();
        ArraySet<AutofillId> fillableIds2 = null;
        if (datasets == null) {
            fillableIds = null;
        } else {
            for (int i = 0; i < datasets.size(); i++) {
                Dataset dataset = datasets.get(i);
                ArrayList<AutofillId> fieldIds = dataset.getFieldIds();
                if (fieldIds != null) {
                    for (int j = 0; j < fieldIds.size(); j++) {
                        AutofillId id = fieldIds.get(j);
                        if (trackedViews == null || !trackedViews.contains(id)) {
                            fillableIds2 = ArrayUtils.add(fillableIds2, id);
                        }
                    }
                }
            }
            fillableIds = fillableIds2;
        }
        try {
            if (Helper.sVerbose) {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append("updateTrackedIdsLocked(): ");
                    sb.append(trackedViews);
                    sb.append(" => ");
                    sb.append(fillableIds);
                    sb.append(" triggerId: ");
                    sb.append(saveTriggerId);
                    sb.append(" saveOnFinish:");
                    sb.append(saveOnFinish);
                    sb.append(" flags: ");
                    sb.append(flags);
                    sb.append(" hasSaveInfo: ");
                    if (saveInfo == null) {
                        z2 = false;
                    }
                    sb.append(z2);
                    Slog.v(TAG, sb.toString());
                } catch (RemoteException e) {
                    e = e;
                    Slog.w(TAG, "Cannot set tracked ids", e);
                }
            }
            try {
                this.mClient.setTrackedViews(this.id, Helper.toArray(trackedViews), this.mSaveOnAllViewsInvisible, saveOnFinish, Helper.toArray(fillableIds), saveTriggerId);
            } catch (RemoteException e2) {
                e = e2;
                Slog.w(TAG, "Cannot set tracked ids", e);
            }
        } catch (RemoteException e3) {
            e = e3;
        }
    }

    void setAutofillFailureLocked(List<AutofillId> ids) {
        for (int i = 0; i < ids.size(); i++) {
            AutofillId id = ids.get(i);
            ViewState viewState = this.mViewStates.get(id);
            if (viewState == null) {
                Slog.w(TAG, "setAutofillFailure(): no view for id " + id);
            } else {
                viewState.resetState(4);
                int state = viewState.getState();
                viewState.setState(state | 1024);
                if (Helper.sVerbose) {
                    Slog.v(TAG, "Changed state of " + id + " to " + viewState.getStateAsString());
                }
            }
        }
    }

    private void replaceResponseLocked(FillResponse oldResponse, FillResponse newResponse, Bundle newClientState) {
        setViewStatesLocked(oldResponse, 1, true);
        newResponse.setRequestId(oldResponse.getRequestId());
        this.mResponses.put(newResponse.getRequestId(), newResponse);
        processResponseLocked(newResponse, newClientState, 0);
    }

    private void processNullResponseLocked(int requestId, int flags) {
        ArrayList<AutofillId> autofillableIds;
        if ((flags & 1) != 0) {
            getUiForShowing().showError(R.string.bugreport_screenshot_success_toast, this);
        }
        FillContext context = getFillContextByRequestIdLocked(requestId);
        if (context != null) {
            AssistStructure structure = context.getStructure();
            autofillableIds = Helper.getAutofillIds(structure, true);
        } else {
            Slog.w(TAG, "processNullResponseLocked(): no context for req " + requestId);
            autofillableIds = null;
        }
        this.mService.resetLastResponse();
        Runnable runnableTriggerAugmentedAutofillLocked = triggerAugmentedAutofillLocked(flags);
        this.mAugmentedAutofillDestroyer = runnableTriggerAugmentedAutofillLocked;
        if (runnableTriggerAugmentedAutofillLocked == null && (flags & 4) == 0) {
            if (Helper.sVerbose) {
                Slog.v(TAG, "canceling session " + this.id + " when service returned null and it cannot be augmented. AutofillableIds: " + autofillableIds);
            }
            notifyUnavailableToClient(2, autofillableIds);
            removeSelf();
            return;
        }
        if ((flags & 4) != 0) {
            if (Helper.sVerbose) {
                Slog.v(TAG, "keeping session " + this.id + " when service returned null and augmented service is disabled for password fields. AutofillableIds: " + autofillableIds);
            }
            this.mInlineSessionController.hideInlineSuggestionsUiLocked(this.mCurrentViewId);
        } else if (Helper.sVerbose) {
            Slog.v(TAG, "keeping session " + this.id + " when service returned null but it can be augmented. AutofillableIds: " + autofillableIds);
        }
        this.mAugmentedAutofillableIds = autofillableIds;
        try {
            this.mClient.setState(32);
        } catch (RemoteException e) {
            Slog.e(TAG, "Error setting client to autofill-only", e);
        }
    }

    private Runnable triggerAugmentedAutofillLocked(int flags) {
        if ((flags & 4) != 0) {
            return null;
        }
        int supportedModes = this.mService.getSupportedSmartSuggestionModesLocked();
        if (supportedModes == 0) {
            if (Helper.sVerbose) {
                Slog.v(TAG, "triggerAugmentedAutofillLocked(): no supported modes");
            }
            return null;
        }
        final RemoteAugmentedAutofillService remoteService = this.mService.getRemoteAugmentedAutofillServiceLocked();
        if (remoteService == null) {
            if (Helper.sVerbose) {
                Slog.v(TAG, "triggerAugmentedAutofillLocked(): no service for user");
            }
            return null;
        }
        if ((supportedModes & 1) != 0) {
            final int mode = 1;
            if (this.mCurrentViewId == null) {
                Slog.w(TAG, "triggerAugmentedAutofillLocked(): no view currently focused");
                return null;
            }
            final boolean isWhitelisted = this.mService.isWhitelistedForAugmentedAutofillLocked(this.mComponentName);
            if (!isWhitelisted) {
                if (Helper.sVerbose) {
                    Slog.v(TAG, "triggerAugmentedAutofillLocked(): " + ComponentName.flattenToShortString(this.mComponentName) + " not whitelisted ");
                }
                logAugmentedAutofillRequestLocked(1, remoteService.getComponentName(), this.mCurrentViewId, isWhitelisted, null);
                return null;
            }
            if (Helper.sVerbose) {
                Slog.v(TAG, "calling Augmented Autofill Service (" + ComponentName.flattenToShortString(remoteService.getComponentName()) + ") on view " + this.mCurrentViewId + " using suggestion mode " + AutofillManager.getSmartSuggestionModeToString(1) + " when server returned null for session " + this.id);
            }
            ViewState viewState = this.mViewStates.get(this.mCurrentViewId);
            viewState.setState(4096);
            final AutofillValue currentValue = viewState.getCurrentValue();
            if (this.mAugmentedRequestsLogs == null) {
                this.mAugmentedRequestsLogs = new ArrayList<>();
            }
            LogMaker log = newLogMaker(1630, remoteService.getComponentName().getPackageName());
            this.mAugmentedRequestsLogs.add(log);
            final AutofillId focusedId = this.mCurrentViewId;
            final Function<InlineFillUi, Boolean> inlineSuggestionsResponseCallback = new Function() { // from class: com.android.server.autofill.-$$Lambda$Session$OB9ff8oA_-EExr2duy432m-mPnk
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return this.f$0.lambda$triggerAugmentedAutofillLocked$4$Session((InlineFillUi) obj);
                }
            };
            final Consumer<InlineSuggestionsRequest> requestAugmentedAutofill = new Consumer() { // from class: com.android.server.autofill.-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$triggerAugmentedAutofillLocked$6$Session(mode, remoteService, focusedId, isWhitelisted, currentValue, inlineSuggestionsResponseCallback, (InlineSuggestionsRequest) obj);
                }
            };
            RemoteInlineSuggestionRenderService remoteRenderService = this.mService.getRemoteInlineSuggestionRenderServiceLocked();
            if (remoteRenderService != null && ((this.mForAugmentedAutofillOnly || !isInlineSuggestionsEnabledByAutofillProviderLocked() || this.mExpiredResponse) && isViewFocusedLocked(flags))) {
                if (Helper.sDebug) {
                    Slog.d(TAG, "Create inline request for augmented autofill");
                }
                remoteRenderService.getInlineSuggestionsRendererInfo(new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.autofill.-$$Lambda$Session$rGSqIe556eUkJhy8uVf_APhYFvg
                    public final void onResult(Bundle bundle) {
                        this.f$0.lambda$triggerAugmentedAutofillLocked$7$Session(focusedId, requestAugmentedAutofill, bundle);
                    }
                }, this.mHandler));
            } else {
                requestAugmentedAutofill.accept(this.mInlineSessionController.getInlineSuggestionsRequestLocked().orElse(null));
            }
            if (this.mAugmentedAutofillDestroyer == null) {
                this.mAugmentedAutofillDestroyer = new Runnable() { // from class: com.android.server.autofill.-$$Lambda$Session$OLDugvMROFfiQeHylt5uJUuHuIE
                    @Override // java.lang.Runnable
                    public final void run() {
                        remoteService.onDestroyAutofillWindowsRequest();
                    }
                };
            }
            return this.mAugmentedAutofillDestroyer;
        }
        Slog.w(TAG, "Unsupported Smart Suggestion mode: " + supportedModes);
        return null;
    }

    public /* synthetic */ Boolean lambda$triggerAugmentedAutofillLocked$4$Session(InlineFillUi response) {
        Boolean boolValueOf;
        synchronized (this.mLock) {
            boolValueOf = Boolean.valueOf(this.mInlineSessionController.setInlineFillUiLocked(response));
        }
        return boolValueOf;
    }

    public /* synthetic */ void lambda$triggerAugmentedAutofillLocked$6$Session(int mode, RemoteAugmentedAutofillService remoteService, AutofillId focusedId, boolean isWhitelisted, AutofillValue currentValue, Function inlineSuggestionsResponseCallback, InlineSuggestionsRequest inlineSuggestionsRequest) {
        synchronized (this.mLock) {
            logAugmentedAutofillRequestLocked(mode, remoteService.getComponentName(), focusedId, isWhitelisted, Boolean.valueOf(inlineSuggestionsRequest != null));
            remoteService.onRequestAutofillLocked(this.id, this.mClient, this.taskId, this.mComponentName, AutofillId.withoutSession(focusedId), currentValue, inlineSuggestionsRequest, inlineSuggestionsResponseCallback, new Runnable() { // from class: com.android.server.autofill.-$$Lambda$Session$cy9pAeTh6TuR9iQXcy-kT3QefxA
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$triggerAugmentedAutofillLocked$5$Session();
                }
            }, this.mService.getRemoteInlineSuggestionRenderServiceLocked(), this.userId);
        }
    }

    public /* synthetic */ void lambda$triggerAugmentedAutofillLocked$5$Session() {
        synchronized (this.mLock) {
            cancelAugmentedAutofillLocked();
            this.mInlineSessionController.setInlineFillUiLocked(InlineFillUi.emptyUi(this.mCurrentViewId));
        }
    }

    public /* synthetic */ void lambda$triggerAugmentedAutofillLocked$7$Session(AutofillId focusedId, Consumer requestAugmentedAutofill, Bundle extras) {
        synchronized (this.mLock) {
            this.mInlineSessionController.onCreateInlineSuggestionsRequestLocked(focusedId, requestAugmentedAutofill, extras);
        }
    }

    private void logAugmentedAutofillRequestLocked(int mode, ComponentName augmentedRemoteServiceName, AutofillId focusedId, boolean isWhitelisted, Boolean isInline) {
        String historyItem = "aug:id=" + this.id + " u=" + this.uid + " m=" + mode + " a=" + ComponentName.flattenToShortString(this.mComponentName) + " f=" + focusedId + " s=" + augmentedRemoteServiceName + " w=" + isWhitelisted + " i=" + isInline;
        this.mService.getMaster().logRequestLocked(historyItem);
    }

    private void cancelAugmentedAutofillLocked() {
        RemoteAugmentedAutofillService remoteService = this.mService.getRemoteAugmentedAutofillServiceLocked();
        if (remoteService == null) {
            Slog.w(TAG, "cancelAugmentedAutofillLocked(): no service for user");
            return;
        }
        if (Helper.sVerbose) {
            Slog.v(TAG, "cancelAugmentedAutofillLocked() on " + this.mCurrentViewId);
        }
        remoteService.onDestroyAutofillWindowsRequest();
    }

    private void processResponseLocked(FillResponse newResponse, Bundle newClientState, int flags) {
        this.mUi.hideAll(this);
        int requestId = newResponse.getRequestId();
        if (Helper.sVerbose) {
            Slog.v(TAG, "processResponseLocked(): mCurrentViewId=" + this.mCurrentViewId + ",flags=" + flags + ", reqId=" + requestId + ", resp=" + newResponse + ",newClientState=" + newClientState);
        }
        if (this.mResponses == null) {
            this.mResponses = new SparseArray<>(2);
        }
        this.mResponses.put(requestId, newResponse);
        this.mClientState = newClientState != null ? newClientState : newResponse.getClientState();
        setViewStatesLocked(newResponse, 2, false);
        updateTrackedIdsLocked();
        AutofillId autofillId = this.mCurrentViewId;
        if (autofillId == null) {
            return;
        }
        ViewState currentView = this.mViewStates.get(autofillId);
        currentView.maybeCallOnFillReady(flags);
    }

    private void setViewStatesLocked(FillResponse response, int state, boolean clearResponse) {
        List<Dataset> datasets = response.getDatasets();
        if (datasets != null) {
            for (int i = 0; i < datasets.size(); i++) {
                Dataset dataset = datasets.get(i);
                if (dataset == null) {
                    Slog.w(TAG, "Ignoring null dataset on " + datasets);
                } else {
                    setViewStatesLocked(response, dataset, state, clearResponse);
                }
            }
        } else if (response.getAuthentication() != null) {
            for (AutofillId autofillId : response.getAuthenticationIds()) {
                ViewState viewState = createOrUpdateViewStateLocked(autofillId, state, null);
                if (!clearResponse) {
                    viewState.setResponse(response);
                } else {
                    viewState.setResponse(null);
                }
            }
        }
        SaveInfo saveInfo = response.getSaveInfo();
        if (saveInfo != null) {
            AutofillId[] requiredIds = saveInfo.getRequiredIds();
            if (requiredIds != null) {
                for (AutofillId id : requiredIds) {
                    createOrUpdateViewStateLocked(id, state, null);
                }
            }
            AutofillId[] optionalIds = saveInfo.getOptionalIds();
            if (optionalIds != null) {
                for (AutofillId id2 : optionalIds) {
                    createOrUpdateViewStateLocked(id2, state, null);
                }
            }
        }
        AutofillId[] authIds = response.getAuthenticationIds();
        if (authIds != null) {
            for (AutofillId id3 : authIds) {
                createOrUpdateViewStateLocked(id3, state, null);
            }
        }
    }

    private void setViewStatesLocked(FillResponse response, Dataset dataset, int state, boolean clearResponse) {
        ArrayList<AutofillId> ids = dataset.getFieldIds();
        ArrayList<AutofillValue> values = dataset.getFieldValues();
        for (int j = 0; j < ids.size(); j++) {
            AutofillId id = ids.get(j);
            AutofillValue value = values.get(j);
            ViewState viewState = createOrUpdateViewStateLocked(id, state, value);
            String datasetId = dataset.getId();
            if (datasetId != null) {
                viewState.setDatasetId(datasetId);
            }
            if (clearResponse) {
                viewState.setResponse(null);
            } else if (response != null) {
                viewState.setResponse(response);
            }
        }
    }

    private ViewState createOrUpdateViewStateLocked(AutofillId id, int state, AutofillValue value) {
        ViewState viewState = this.mViewStates.get(id);
        if (viewState != null) {
            viewState.setState(state);
        } else {
            viewState = new ViewState(id, this, state);
            if (Helper.sVerbose) {
                Slog.v(TAG, "Adding autofillable view with id " + id + " and state " + state);
            }
            viewState.setCurrentValue(findValueLocked(id));
            this.mViewStates.put(id, viewState);
        }
        if ((state & 4) != 0) {
            viewState.setAutofilledValue(value);
        }
        return viewState;
    }

    void autoFill(int requestId, int datasetIndex, Dataset dataset, boolean generateEvent) {
        if (Helper.sDebug) {
            Slog.d(TAG, "autoFill(): requestId=" + requestId + "; datasetIdx=" + datasetIndex + "; dataset=" + dataset);
        }
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                Slog.w(TAG, "Call to Session#autoFill() rejected - session: " + this.id + " destroyed");
                return;
            }
            if (dataset.getAuthentication() == null) {
                if (generateEvent) {
                    this.mService.logDatasetSelected(dataset.getId(), this.id, this.mClientState);
                }
                if (this.mCurrentViewId != null) {
                    this.mInlineSessionController.hideInlineSuggestionsUiLocked(this.mCurrentViewId);
                }
                autoFillApp(dataset);
                return;
            }
            this.mService.logDatasetAuthenticationSelected(dataset.getId(), this.id, this.mClientState);
            setViewStatesLocked(null, dataset, 64, false);
            Intent fillInIntent = createAuthFillInIntentLocked(requestId, this.mClientState);
            if (fillInIntent == null) {
                forceRemoveSelfLocked();
            } else {
                int authenticationId = AutofillManager.makeAuthenticationId(requestId, datasetIndex);
                startAuthentication(authenticationId, dataset.getAuthentication(), fillInIntent, false);
            }
        }
    }

    private Intent createAuthFillInIntentLocked(int requestId, Bundle extras) {
        Intent fillInIntent = new Intent();
        FillContext context = getFillContextByRequestIdLocked(requestId);
        if (context == null) {
            wtf(null, "createAuthFillInIntentLocked(): no FillContext. requestId=%d; mContexts=%s", Integer.valueOf(requestId), this.mContexts);
            return null;
        }
        fillInIntent.putExtra("android.view.autofill.extra.ASSIST_STRUCTURE", context.getStructure());
        fillInIntent.putExtra("android.view.autofill.extra.CLIENT_STATE", extras);
        return fillInIntent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAuthentication(int authenticationId, IntentSender intent, Intent fillInIntent, boolean authenticateInline) {
        try {
            synchronized (this.mLock) {
                try {
                    this.mClient.authenticate(this.id, authenticationId, intent, fillInIntent, authenticateInline);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (RemoteException e) {
            Slog.e(TAG, "Error launching auth intent", e);
        }
    }

    public String toString() {
        return "Session: [id=" + this.id + ", component=" + this.mComponentName + "]";
    }

    void dumpLocked(String prefix, PrintWriter pw) {
        String prefix2 = prefix + "  ";
        pw.print(prefix);
        pw.print("id: ");
        pw.println(this.id);
        pw.print(prefix);
        pw.print("uid: ");
        pw.println(this.uid);
        pw.print(prefix);
        pw.print("taskId: ");
        pw.println(this.taskId);
        pw.print(prefix);
        pw.print("flags: ");
        pw.println(this.mFlags);
        pw.print(prefix);
        pw.print("mComponentName: ");
        pw.println(this.mComponentName);
        pw.print(prefix);
        pw.print("mActivityToken: ");
        pw.println(this.mActivityToken);
        pw.print(prefix);
        pw.print("mStartTime: ");
        pw.println(this.mStartTime);
        pw.print(prefix);
        pw.print("Time to show UI: ");
        long j = this.mUiShownTime;
        if (j == 0) {
            pw.println("N/A");
        } else {
            TimeUtils.formatDuration(j - this.mStartTime, pw);
            pw.println();
        }
        int requestLogsSizes = this.mRequestLogs.size();
        pw.print(prefix);
        pw.print("mSessionLogs: ");
        pw.println(requestLogsSizes);
        for (int i = 0; i < requestLogsSizes; i++) {
            int requestId = this.mRequestLogs.keyAt(i);
            LogMaker log = this.mRequestLogs.valueAt(i);
            pw.print(prefix2);
            pw.print('#');
            pw.print(i);
            pw.print(": req=");
            pw.print(requestId);
            pw.print(", log=");
            dumpRequestLog(pw, log);
            pw.println();
        }
        pw.print(prefix);
        pw.print("mResponses: ");
        SparseArray<FillResponse> sparseArray = this.mResponses;
        if (sparseArray == null) {
            pw.println("null");
        } else {
            pw.println(sparseArray.size());
            for (int i2 = 0; i2 < this.mResponses.size(); i2++) {
                pw.print(prefix2);
                pw.print('#');
                pw.print(i2);
                pw.print(' ');
                pw.println(this.mResponses.valueAt(i2));
            }
        }
        pw.print(prefix);
        pw.print("mCurrentViewId: ");
        pw.println(this.mCurrentViewId);
        pw.print(prefix);
        pw.print("mDestroyed: ");
        pw.println(this.mDestroyed);
        pw.print(prefix);
        pw.print("mIsSaving: ");
        pw.println(this.mIsSaving);
        pw.print(prefix);
        pw.print("mPendingSaveUi: ");
        pw.println(this.mPendingSaveUi);
        int numberViews = this.mViewStates.size();
        pw.print(prefix);
        pw.print("mViewStates size: ");
        pw.println(this.mViewStates.size());
        for (int i3 = 0; i3 < numberViews; i3++) {
            pw.print(prefix);
            pw.print("ViewState at #");
            pw.println(i3);
            this.mViewStates.valueAt(i3).dump(prefix2, pw);
        }
        pw.print(prefix);
        pw.print("mContexts: ");
        ArrayList<FillContext> arrayList = this.mContexts;
        if (arrayList != null) {
            int numContexts = arrayList.size();
            for (int i4 = 0; i4 < numContexts; i4++) {
                FillContext context = this.mContexts.get(i4);
                pw.print(prefix2);
                pw.print(context);
                if (Helper.sVerbose) {
                    pw.println("AssistStructure dumped at logcat)");
                    context.getStructure().dump(false);
                }
            }
        } else {
            pw.println("null");
        }
        pw.print(prefix);
        pw.print("mHasCallback: ");
        pw.println(this.mHasCallback);
        if (this.mClientState != null) {
            pw.print(prefix);
            pw.print("mClientState: ");
            pw.print(this.mClientState.getSize());
            pw.println(" bytes");
        }
        pw.print(prefix);
        pw.print("mCompatMode: ");
        pw.println(this.mCompatMode);
        pw.print(prefix);
        pw.print("mUrlBar: ");
        if (this.mUrlBar == null) {
            pw.println("N/A");
        } else {
            pw.print("id=");
            pw.print(this.mUrlBar.getAutofillId());
            pw.print(" domain=");
            pw.print(this.mUrlBar.getWebDomain());
            pw.print(" text=");
            Helper.printlnRedactedText(pw, this.mUrlBar.getText());
        }
        pw.print(prefix);
        pw.print("mSaveOnAllViewsInvisible: ");
        pw.println(this.mSaveOnAllViewsInvisible);
        pw.print(prefix);
        pw.print("mSelectedDatasetIds: ");
        pw.println(this.mSelectedDatasetIds);
        if (this.mForAugmentedAutofillOnly) {
            pw.print(prefix);
            pw.println("For Augmented Autofill Only");
        }
        if (this.mAugmentedAutofillDestroyer != null) {
            pw.print(prefix);
            pw.println("has mAugmentedAutofillDestroyer");
        }
        if (this.mAugmentedRequestsLogs != null) {
            pw.print(prefix);
            pw.print("number augmented requests: ");
            pw.println(this.mAugmentedRequestsLogs.size());
        }
        if (this.mAugmentedAutofillableIds != null) {
            pw.print(prefix);
            pw.print("mAugmentedAutofillableIds: ");
            pw.println(this.mAugmentedAutofillableIds);
        }
        RemoteFillService remoteFillService = this.mRemoteFillService;
        if (remoteFillService != null) {
            remoteFillService.dump(prefix, pw);
        }
    }

    private static void dumpRequestLog(PrintWriter pw, LogMaker log) {
        pw.print("CAT=");
        pw.print(log.getCategory());
        pw.print(", TYPE=");
        int type = log.getType();
        if (type == 2) {
            pw.print("CLOSE");
        } else if (type == 10) {
            pw.print("SUCCESS");
        } else if (type == 11) {
            pw.print("FAILURE");
        } else {
            pw.print("UNSUPPORTED");
        }
        pw.print('(');
        pw.print(type);
        pw.print(')');
        pw.print(", PKG=");
        pw.print(log.getPackageName());
        pw.print(", SERVICE=");
        pw.print(log.getTaggedData(908));
        pw.print(", ORDINAL=");
        pw.print(log.getTaggedData(1454));
        dumpNumericValue(pw, log, "FLAGS", 1452);
        dumpNumericValue(pw, log, "NUM_DATASETS", 909);
        dumpNumericValue(pw, log, "UI_LATENCY", 1145);
        int authStatus = Helper.getNumericValue(log, 1453);
        if (authStatus != 0) {
            pw.print(", AUTH_STATUS=");
            if (authStatus == 912) {
                pw.print("AUTHENTICATED");
            } else {
                switch (authStatus) {
                    case 1126:
                        pw.print("DATASET_AUTHENTICATED");
                        break;
                    case 1127:
                        pw.print("INVALID_DATASET_AUTHENTICATION");
                        break;
                    case 1128:
                        pw.print("INVALID_AUTHENTICATION");
                        break;
                    default:
                        pw.print("UNSUPPORTED");
                        break;
                }
            }
            pw.print('(');
            pw.print(authStatus);
            pw.print(')');
        }
        dumpNumericValue(pw, log, "FC_IDS", 1271);
        dumpNumericValue(pw, log, "COMPAT_MODE", 1414);
    }

    private static void dumpNumericValue(PrintWriter pw, LogMaker log, String field, int tag) {
        int value = Helper.getNumericValue(log, tag);
        if (value != 0) {
            pw.print(", ");
            pw.print(field);
            pw.print('=');
            pw.print(value);
        }
    }

    void autoFillApp(Dataset dataset) {
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                Slog.w(TAG, "Call to Session#autoFillApp() rejected - session: " + this.id + " destroyed");
                return;
            }
            try {
                int entryCount = dataset.getFieldIds().size();
                List<AutofillId> ids = new ArrayList<>(entryCount);
                List<AutofillValue> values = new ArrayList<>(entryCount);
                boolean waitingDatasetAuth = false;
                boolean hideHighlight = true;
                if (entryCount != 1 || !((AutofillId) dataset.getFieldIds().get(0)).equals(this.mCurrentViewId)) {
                    hideHighlight = false;
                }
                for (int i = 0; i < entryCount; i++) {
                    if (dataset.getFieldValues().get(i) != null) {
                        AutofillId viewId = (AutofillId) dataset.getFieldIds().get(i);
                        ids.add(viewId);
                        values.add((AutofillValue) dataset.getFieldValues().get(i));
                        ViewState viewState = this.mViewStates.get(viewId);
                        if (viewState != null && (viewState.getState() & 64) != 0) {
                            if (Helper.sVerbose) {
                                Slog.v(TAG, "autofillApp(): view " + viewId + " waiting auth");
                            }
                            waitingDatasetAuth = true;
                            viewState.resetState(64);
                        }
                    }
                }
                if (!ids.isEmpty()) {
                    if (waitingDatasetAuth) {
                        this.mUi.hideFillUi(this);
                    }
                    if (Helper.sDebug) {
                        Slog.d(TAG, "autoFillApp(): the buck is on the app: " + dataset);
                    }
                    this.mClient.autofill(this.id, ids, values, hideHighlight);
                    if (dataset.getId() != null) {
                        if (this.mSelectedDatasetIds == null) {
                            this.mSelectedDatasetIds = new ArrayList<>();
                        }
                        this.mSelectedDatasetIds.add(dataset.getId());
                    }
                    setViewStatesLocked(null, dataset, 4, false);
                }
            } catch (RemoteException e) {
                Slog.w(TAG, "Error autofilling activity: " + e);
            }
        }
    }

    private AutoFillUI getUiForShowing() {
        AutoFillUI autoFillUI;
        synchronized (this.mLock) {
            this.mUi.setCallback(this);
            autoFillUI = this.mUi;
        }
        return autoFillUI;
    }

    RemoteFillService destroyLocked() {
        if (this.mDestroyed) {
            return null;
        }
        unlinkClientVultureLocked();
        this.mUi.destroyAll(this.mPendingSaveUi, this, true);
        this.mUi.clearCallback(this);
        AutofillId autofillId = this.mCurrentViewId;
        if (autofillId != null) {
            this.mInlineSessionController.destroyLocked(autofillId);
        }
        RemoteInlineSuggestionRenderService remoteRenderService = this.mService.getRemoteInlineSuggestionRenderServiceLocked();
        if (remoteRenderService != null) {
            remoteRenderService.destroySuggestionViews(this.userId, this.id);
        }
        this.mDestroyed = true;
        int totalRequests = this.mRequestLogs.size();
        if (totalRequests > 0) {
            if (Helper.sVerbose) {
                Slog.v(TAG, "destroyLocked(): logging " + totalRequests + " requests");
            }
            for (int i = 0; i < totalRequests; i++) {
                this.mMetricsLogger.write(this.mRequestLogs.valueAt(i));
            }
        }
        ArrayList<LogMaker> arrayList = this.mAugmentedRequestsLogs;
        int totalAugmentedRequests = arrayList == null ? 0 : arrayList.size();
        if (totalAugmentedRequests > 0) {
            if (Helper.sVerbose) {
                Slog.v(TAG, "destroyLocked(): logging " + totalRequests + " augmented requests");
            }
            for (int i2 = 0; i2 < totalAugmentedRequests; i2++) {
                this.mMetricsLogger.write(this.mAugmentedRequestsLogs.get(i2));
            }
        }
        LogMaker log = newLogMaker(919).addTaggedData(1455, Integer.valueOf(totalRequests));
        if (totalAugmentedRequests > 0) {
            log.addTaggedData(1631, Integer.valueOf(totalAugmentedRequests));
        }
        if (this.mForAugmentedAutofillOnly) {
            log.addTaggedData(1720, 1);
        }
        this.mMetricsLogger.write(log);
        return this.mRemoteFillService;
    }

    void forceRemoveSelfLocked() {
        forceRemoveSelfLocked(0);
    }

    void forceRemoveSelfIfForAugmentedAutofillOnlyLocked() {
        if (Helper.sVerbose) {
            Slog.v(TAG, "forceRemoveSelfIfForAugmentedAutofillOnly(" + this.id + "): " + this.mForAugmentedAutofillOnly);
        }
        if (this.mForAugmentedAutofillOnly) {
            forceRemoveSelfLocked();
        }
    }

    void forceRemoveSelfLocked(int clientState) {
        if (Helper.sVerbose) {
            Slog.v(TAG, "forceRemoveSelfLocked(): " + this.mPendingSaveUi);
        }
        boolean isPendingSaveUi = isSaveUiPendingLocked();
        this.mPendingSaveUi = null;
        removeSelfLocked();
        this.mUi.destroyAll(this.mPendingSaveUi, this, false);
        if (!isPendingSaveUi) {
            try {
                this.mClient.setSessionFinished(clientState, (List) null);
            } catch (RemoteException e) {
                Slog.e(TAG, "Error notifying client to finish session", e);
            }
        }
        destroyAugmentedAutofillWindowsLocked();
    }

    void destroyAugmentedAutofillWindowsLocked() {
        Runnable runnable = this.mAugmentedAutofillDestroyer;
        if (runnable != null) {
            runnable.run();
            this.mAugmentedAutofillDestroyer = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSelf() {
        synchronized (this.mLock) {
            removeSelfLocked();
        }
    }

    void removeSelfLocked() {
        if (Helper.sVerbose) {
            Slog.v(TAG, "removeSelfLocked(" + this.id + "): " + this.mPendingSaveUi);
        }
        if (this.mDestroyed) {
            Slog.w(TAG, "Call to Session#removeSelfLocked() rejected - session: " + this.id + " destroyed");
            return;
        }
        if (isSaveUiPendingLocked()) {
            Slog.i(TAG, "removeSelfLocked() ignored, waiting for pending save ui");
            return;
        }
        RemoteFillService remoteFillService = destroyLocked();
        this.mService.removeSessionLocked(this.id);
        if (remoteFillService != null) {
            remoteFillService.destroy();
        }
    }

    void onPendingSaveUi(int operation, IBinder token) {
        getUiForShowing().onPendingSaveUi(operation, token);
    }

    boolean isSaveUiPendingForTokenLocked(IBinder token) {
        return isSaveUiPendingLocked() && token.equals(this.mPendingSaveUi.getToken());
    }

    private boolean isSaveUiPendingLocked() {
        PendingUi pendingUi = this.mPendingSaveUi;
        return pendingUi != null && pendingUi.getState() == 2;
    }

    private int getLastResponseIndexLocked() {
        int lastResponseIdx = -1;
        int lastResponseId = -1;
        SparseArray<FillResponse> sparseArray = this.mResponses;
        if (sparseArray != null) {
            int responseCount = sparseArray.size();
            for (int i = 0; i < responseCount; i++) {
                if (this.mResponses.keyAt(i) > lastResponseId) {
                    lastResponseIdx = i;
                    lastResponseId = this.mResponses.keyAt(i);
                }
            }
        }
        return lastResponseIdx;
    }

    private LogMaker newLogMaker(int category) {
        return newLogMaker(category, this.mService.getServicePackageName());
    }

    private LogMaker newLogMaker(int category, String servicePackageName) {
        return Helper.newLogMaker(category, this.mComponentName, servicePackageName, this.id, this.mCompatMode);
    }

    private void writeLog(int category) {
        this.mMetricsLogger.write(newLogMaker(category));
    }

    private void logAuthenticationStatusLocked(int requestId, int status) {
        addTaggedDataToRequestLogLocked(requestId, 1453, Integer.valueOf(status));
    }

    private void addTaggedDataToRequestLogLocked(int requestId, int tag, Object value) {
        LogMaker requestLog = this.mRequestLogs.get(requestId);
        if (requestLog == null) {
            Slog.w(TAG, "addTaggedDataToRequestLogLocked(tag=" + tag + "): no log for id " + requestId);
            return;
        }
        requestLog.addTaggedData(tag, value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wtf(Exception e, String fmt, Object... args) {
        String message = String.format(fmt, args);
        synchronized (this.mLock) {
            this.mWtfHistory.log(message);
        }
        if (e != null) {
            Slog.wtf(TAG, message, e);
        } else {
            Slog.wtf(TAG, message);
        }
    }

    private static String actionAsString(int action) {
        if (action == 1) {
            return "START_SESSION";
        }
        if (action == 2) {
            return "VIEW_ENTERED";
        }
        if (action == 3) {
            return "VIEW_EXITED";
        }
        if (action == 4) {
            return "VALUE_CHANGED";
        }
        if (action == 5) {
            return "RESPONSE_EXPIRED";
        }
        return "UNKNOWN_" + action;
    }
}
