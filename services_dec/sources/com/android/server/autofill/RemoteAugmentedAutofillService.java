package com.android.server.autofill;

import android.app.AppGlobals;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.ICancellationSignal;
import android.os.RemoteException;
import android.os.SystemClock;
import android.service.autofill.Dataset;
import android.service.autofill.augmented.IAugmentedAutofillService;
import android.service.autofill.augmented.IFillCallback;
import android.util.Pair;
import android.util.Slog;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import android.view.autofill.IAutoFillManagerClient;
import android.view.inputmethod.InlineSuggestionsRequest;
import com.android.internal.infra.AbstractRemoteService;
import com.android.internal.infra.AndroidFuture;
import com.android.internal.infra.ServiceConnector;
import com.android.internal.os.IResultReceiver;
import com.android.server.autofill.ui.InlineFillUi;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiConsumer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
final class RemoteAugmentedAutofillService extends ServiceConnector.Impl<IAugmentedAutofillService> {
    private static final String TAG = RemoteAugmentedAutofillService.class.getSimpleName();
    private final RemoteAugmentedAutofillServiceCallbacks mCallbacks;
    private final ComponentName mComponentName;
    private final int mIdleUnbindTimeoutMs;
    private final int mRequestTimeoutMs;

    public interface RemoteAugmentedAutofillServiceCallbacks extends AbstractRemoteService.VultureCallback<RemoteAugmentedAutofillService> {
        void logAugmentedAutofillAuthenticationSelected(int i, String str, Bundle bundle);

        void logAugmentedAutofillSelected(int i, String str, Bundle bundle);

        void logAugmentedAutofillShown(int i, Bundle bundle);

        void resetLastResponse();

        void setLastResponse(int i);
    }

    RemoteAugmentedAutofillService(Context context, ComponentName serviceName, int userId, RemoteAugmentedAutofillServiceCallbacks callbacks, boolean bindInstantServiceAllowed, boolean verbose, int idleUnbindTimeoutMs, int requestTimeoutMs) {
        super(context, new Intent("android.service.autofill.augmented.AugmentedAutofillService").setComponent(serviceName), bindInstantServiceAllowed ? 4194304 : 0, userId, new Function() { // from class: com.android.server.autofill.-$$Lambda$sdnPz1IsKKVKSEXwI7z4h2-SxiM
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return IAugmentedAutofillService.Stub.asInterface((IBinder) obj);
            }
        });
        this.mIdleUnbindTimeoutMs = idleUnbindTimeoutMs;
        this.mRequestTimeoutMs = requestTimeoutMs;
        this.mComponentName = serviceName;
        this.mCallbacks = callbacks;
        connect();
    }

    static Pair<ServiceInfo, ComponentName> getComponentName(String componentName, int userId, boolean isTemporary) {
        int flags = isTemporary ? 128 : 128 | 1048576;
        try {
            ComponentName serviceComponent = ComponentName.unflattenFromString(componentName);
            ServiceInfo serviceInfo = AppGlobals.getPackageManager().getServiceInfo(serviceComponent, flags, userId);
            if (serviceInfo == null) {
                Slog.e(TAG, "Bad service name for flags " + flags + ": " + componentName);
                return null;
            }
            return new Pair<>(serviceInfo, serviceComponent);
        } catch (Exception e) {
            Slog.e(TAG, "Error getting service info for '" + componentName + "': " + e);
            return null;
        }
    }

    public ComponentName getComponentName() {
        return this.mComponentName;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onServiceConnectionStatusChanged(IAugmentedAutofillService service, boolean connected) {
        try {
            if (connected) {
                service.onConnected(Helper.sDebug, Helper.sVerbose);
            } else {
                service.onDisconnected();
            }
        } catch (Exception e) {
            Slog.w(TAG, "Exception calling onServiceConnectionStatusChanged(" + connected + "): ", e);
        }
    }

    protected long getAutoDisconnectTimeoutMs() {
        return this.mIdleUnbindTimeoutMs;
    }

    public void onRequestAutofillLocked(final int sessionId, final IAutoFillManagerClient client, final int taskId, final ComponentName activityComponent, final AutofillId focusedId, final AutofillValue focusedValue, final InlineSuggestionsRequest inlineSuggestionsRequest, final Function<InlineFillUi, Boolean> inlineSuggestionsCallback, final Runnable onErrorCallback, final RemoteInlineSuggestionRenderService remoteRenderService, final int userId) {
        final long requestTime = SystemClock.elapsedRealtime();
        final AtomicReference<ICancellationSignal> cancellationRef = new AtomicReference<>();
        postAsync(new ServiceConnector.Job() { // from class: com.android.server.autofill.-$$Lambda$RemoteAugmentedAutofillService$KCteNuX64yYMsA9ZYdqL9Q0ZJsw
            public final Object run(Object obj) {
                return this.f$0.lambda$onRequestAutofillLocked$0$RemoteAugmentedAutofillService(client, sessionId, taskId, activityComponent, focusedId, focusedValue, requestTime, inlineSuggestionsRequest, inlineSuggestionsCallback, onErrorCallback, remoteRenderService, userId, cancellationRef, (IAugmentedAutofillService) obj);
            }
        }).orTimeout(this.mRequestTimeoutMs, TimeUnit.MILLISECONDS).whenComplete(new BiConsumer() { // from class: com.android.server.autofill.-$$Lambda$RemoteAugmentedAutofillService$zt04rV6kTquQwdDYqT9tjLbRn14
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                this.f$0.lambda$onRequestAutofillLocked$1$RemoteAugmentedAutofillService(cancellationRef, activityComponent, sessionId, (Void) obj, (Throwable) obj2);
            }
        });
    }

    public /* synthetic */ CompletableFuture lambda$onRequestAutofillLocked$0$RemoteAugmentedAutofillService(final IAutoFillManagerClient client, final int sessionId, final int taskId, final ComponentName activityComponent, final AutofillId focusedId, final AutofillValue focusedValue, final long requestTime, final InlineSuggestionsRequest inlineSuggestionsRequest, final Function inlineSuggestionsCallback, final Runnable onErrorCallback, final RemoteInlineSuggestionRenderService remoteRenderService, final int userId, final AtomicReference cancellationRef, final IAugmentedAutofillService service) throws Exception {
        final AndroidFuture<Void> requestAutofill = new AndroidFuture<>();
        client.getAugmentedAutofillClient(new IResultReceiver.Stub() { // from class: com.android.server.autofill.RemoteAugmentedAutofillService.1
            public void send(int resultCode, Bundle resultData) throws RemoteException {
                IBinder realClient = resultData.getBinder("android.view.autofill.extra.AUGMENTED_AUTOFILL_CLIENT");
                service.onFillRequest(sessionId, realClient, taskId, activityComponent, focusedId, focusedValue, requestTime, inlineSuggestionsRequest, new IFillCallback.Stub() { // from class: com.android.server.autofill.RemoteAugmentedAutofillService.1.1
                    public void onSuccess(List<Dataset> list, Bundle clientState, boolean showingFillWindow) {
                        RemoteAugmentedAutofillService.this.mCallbacks.resetLastResponse();
                        RemoteAugmentedAutofillService.this.maybeRequestShowInlineSuggestions(sessionId, inlineSuggestionsRequest, list, clientState, focusedId, focusedValue, inlineSuggestionsCallback, client, onErrorCallback, remoteRenderService, userId);
                        if (!showingFillWindow) {
                            requestAutofill.complete((Object) null);
                        }
                    }

                    public boolean isCompleted() {
                        return requestAutofill.isDone() && !requestAutofill.isCancelled();
                    }

                    public void onCancellable(ICancellationSignal cancellation) {
                        if (requestAutofill.isCancelled()) {
                            RemoteAugmentedAutofillService.this.dispatchCancellation(cancellation);
                        } else {
                            cancellationRef.set(cancellation);
                        }
                    }

                    public void cancel() {
                        requestAutofill.cancel(true);
                    }
                });
            }
        });
        return requestAutofill;
    }

    public /* synthetic */ void lambda$onRequestAutofillLocked$1$RemoteAugmentedAutofillService(AtomicReference cancellationRef, ComponentName activityComponent, int sessionId, Void res, Throwable err) {
        if (err instanceof CancellationException) {
            dispatchCancellation((ICancellationSignal) cancellationRef.get());
            return;
        }
        if (err instanceof TimeoutException) {
            Slog.w(TAG, "PendingAutofillRequest timed out (" + this.mRequestTimeoutMs + "ms) for " + this);
            dispatchCancellation((ICancellationSignal) cancellationRef.get());
            ComponentName componentName = this.mComponentName;
            if (componentName != null) {
                android.service.autofill.augmented.Helper.logResponse(15, componentName.getPackageName(), activityComponent, sessionId, this.mRequestTimeoutMs);
                return;
            }
            return;
        }
        if (err != null) {
            Slog.e(TAG, "exception handling getAugmentedAutofillClient() for " + sessionId + ": ", err);
        }
    }

    void dispatchCancellation(final ICancellationSignal cancellation) {
        if (cancellation == null) {
            return;
        }
        Handler.getMain().post(new Runnable() { // from class: com.android.server.autofill.-$$Lambda$RemoteAugmentedAutofillService$yudIvtYKB9W2eb_t3RT2S1y3KiI
            @Override // java.lang.Runnable
            public final void run() {
                RemoteAugmentedAutofillService.lambda$dispatchCancellation$2(cancellation);
            }
        });
    }

    static /* synthetic */ void lambda$dispatchCancellation$2(ICancellationSignal cancellation) {
        try {
            cancellation.cancel();
        } catch (RemoteException e) {
            Slog.e(TAG, "Error requesting a cancellation", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeRequestShowInlineSuggestions(final int sessionId, InlineSuggestionsRequest request, List<Dataset> inlineSuggestionsData, final Bundle clientState, final AutofillId focusedId, AutofillValue focusedValue, final Function<InlineFillUi, Boolean> inlineSuggestionsCallback, final IAutoFillManagerClient client, Runnable onErrorCallback, RemoteInlineSuggestionRenderService remoteRenderService, int userId) {
        if (inlineSuggestionsData == null || inlineSuggestionsData.isEmpty() || inlineSuggestionsCallback == null || request == null || remoteRenderService == null) {
            if (r14 != 0 && request != null) {
                inlineSuggestionsCallback.apply(InlineFillUi.emptyUi(focusedId));
                return;
            }
            return;
        }
        this.mCallbacks.setLastResponse(sessionId);
        String filterText = (focusedValue == null || !focusedValue.isText()) ? null : focusedValue.getTextValue().toString();
        InlineFillUi inlineFillUi = InlineFillUi.forAugmentedAutofill(request, inlineSuggestionsData, focusedId, filterText, new InlineFillUi.InlineSuggestionUiCallback() { // from class: com.android.server.autofill.RemoteAugmentedAutofillService.2
            @Override // com.android.server.autofill.ui.InlineFillUi.InlineSuggestionUiCallback
            public void autofill(Dataset dataset, int datasetIndex) {
                boolean hideHighlight = true;
                if (dataset.getAuthentication() != null) {
                    RemoteAugmentedAutofillService.this.mCallbacks.logAugmentedAutofillAuthenticationSelected(sessionId, dataset.getId(), clientState);
                    IntentSender action = dataset.getAuthentication();
                    int authenticationId = AutofillManager.makeAuthenticationId(1, datasetIndex);
                    Intent fillInIntent = new Intent();
                    fillInIntent.putExtra("android.view.autofill.extra.CLIENT_STATE", clientState);
                    try {
                        client.authenticate(sessionId, authenticationId, action, fillInIntent, false);
                        return;
                    } catch (RemoteException e) {
                        Slog.w(RemoteAugmentedAutofillService.TAG, "Error starting auth flow");
                        inlineSuggestionsCallback.apply(InlineFillUi.emptyUi(focusedId));
                        return;
                    }
                }
                RemoteAugmentedAutofillService.this.mCallbacks.logAugmentedAutofillSelected(sessionId, dataset.getId(), clientState);
                try {
                    ArrayList<AutofillId> fieldIds = dataset.getFieldIds();
                    int size = fieldIds.size();
                    if (size != 1 || !fieldIds.get(0).equals(focusedId)) {
                        hideHighlight = false;
                    }
                    client.autofill(sessionId, fieldIds, dataset.getFieldValues(), hideHighlight);
                    inlineSuggestionsCallback.apply(InlineFillUi.emptyUi(focusedId));
                } catch (RemoteException e2) {
                    Slog.w(RemoteAugmentedAutofillService.TAG, "Encounter exception autofilling the values");
                }
            }

            @Override // com.android.server.autofill.ui.InlineFillUi.InlineSuggestionUiCallback
            public void startIntentSender(IntentSender intentSender, Intent intent) {
                try {
                    client.startIntentSender(intentSender, intent);
                } catch (RemoteException e) {
                    Slog.w(RemoteAugmentedAutofillService.TAG, "RemoteException starting intent sender");
                }
            }
        }, onErrorCallback, remoteRenderService, userId, sessionId);
        if (inlineSuggestionsCallback.apply(inlineFillUi).booleanValue()) {
            this.mCallbacks.logAugmentedAutofillShown(sessionId, clientState);
        }
    }

    public String toString() {
        return "RemoteAugmentedAutofillService[" + ComponentName.flattenToShortString(this.mComponentName) + "]";
    }

    public void onDestroyAutofillWindowsRequest() {
        run(new ServiceConnector.VoidJob() { // from class: com.android.server.autofill.-$$Lambda$RemoteAugmentedAutofillService$qEoykSLvIU1PeokaPDuPOb0M5U0
            public final void runNoResult(Object obj) {
                ((IAugmentedAutofillService) obj).onDestroyAllFillWindowsRequest();
            }
        });
    }
}
