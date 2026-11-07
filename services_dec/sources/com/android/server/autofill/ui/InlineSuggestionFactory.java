package com.android.server.autofill.ui;

import android.content.Intent;
import android.content.IntentSender;
import android.os.IBinder;
import android.service.autofill.Dataset;
import android.service.autofill.FillResponse;
import android.service.autofill.InlinePresentation;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.view.autofill.AutofillId;
import android.view.inputmethod.InlineSuggestion;
import android.view.inputmethod.InlineSuggestionInfo;
import android.view.inputmethod.InlineSuggestionsRequest;
import android.widget.inline.InlinePresentationSpec;
import com.android.internal.view.inline.IInlineContentProvider;
import com.android.server.autofill.Helper;
import com.android.server.autofill.RemoteInlineSuggestionRenderService;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
final class InlineSuggestionFactory {
    private static final String TAG = "InlineSuggestionFactory";

    public static boolean responseNeedAuthentication(FillResponse response) {
        return (response.getAuthentication() == null || response.getInlinePresentation() == null) ? false : true;
    }

    public static InlineSuggestion createInlineAuthentication(InlineSuggestionsRequest request, final FillResponse response, final AutoFillUI.AutoFillUiCallback client, Runnable onErrorCallback, RemoteInlineSuggestionRenderService remoteRenderService, int userId, int sessionId) {
        BiConsumer<Dataset, Integer> onClickFactory = new BiConsumer() { // from class: com.android.server.autofill.ui.-$$Lambda$InlineSuggestionFactory$ZQMiOAEg-3WjjWq-e6-TvIpeBJ4
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                AutoFillUI.AutoFillUiCallback autoFillUiCallback = client;
                FillResponse fillResponse = response;
                autoFillUiCallback.authenticate(fillResponse.getRequestId(), ((Integer) obj2).intValue(), fillResponse.getAuthentication(), fillResponse.getClientState(), true);
            }
        };
        Consumer<IntentSender> intentSenderConsumer = new Consumer() { // from class: com.android.server.autofill.ui.-$$Lambda$InlineSuggestionFactory$LrD07pSbranN3J_iiqWJbevtUNk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                client.startIntentSender((IntentSender) obj, new Intent());
            }
        };
        InlinePresentation inlineAuthentication = response.getInlinePresentation();
        return createInlineAuthSuggestion(mergedInlinePresentation(request, 0, inlineAuthentication), remoteRenderService, userId, sessionId, onClickFactory, onErrorCallback, intentSenderConsumer, request.getHostInputToken(), request.getHostDisplayId());
    }

    public static SparseArray<Pair<Dataset, InlineSuggestion>> createAutofillInlineSuggestions(InlineSuggestionsRequest request, final int requestId, List<Dataset> datasets, AutofillId autofillId, final AutoFillUI.AutoFillUiCallback client, Runnable onErrorCallback, RemoteInlineSuggestionRenderService remoteRenderService, int userId, int sessionId) {
        if (Helper.sDebug) {
            Slog.d(TAG, "createInlineSuggestionsResponse called");
        }
        Consumer<IntentSender> intentSenderConsumer = new Consumer() { // from class: com.android.server.autofill.ui.-$$Lambda$InlineSuggestionFactory$oUc9QFXUEmqMQpqq-DeeqU32VWU
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                client.startIntentSender((IntentSender) obj, new Intent());
            }
        };
        BiConsumer<Dataset, Integer> onClickFactory = new BiConsumer() { // from class: com.android.server.autofill.ui.-$$Lambda$InlineSuggestionFactory$UKG-0Z8ycMhN0JPNTa9f91gzvuk
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                client.fill(requestId, ((Integer) obj2).intValue(), (Dataset) obj);
            }
        };
        return createInlineSuggestionsInternal(false, request, datasets, autofillId, onErrorCallback, onClickFactory, intentSenderConsumer, remoteRenderService, userId, sessionId);
    }

    public static SparseArray<Pair<Dataset, InlineSuggestion>> createAugmentedAutofillInlineSuggestions(InlineSuggestionsRequest request, List<Dataset> datasets, AutofillId autofillId, final InlineFillUi.InlineSuggestionUiCallback inlineSuggestionUiCallback, Runnable onErrorCallback, RemoteInlineSuggestionRenderService remoteRenderService, int userId, int sessionId) {
        if (Helper.sDebug) {
            Slog.d(TAG, "createAugmentedInlineSuggestionsResponse called");
        }
        return createInlineSuggestionsInternal(true, request, datasets, autofillId, onErrorCallback, new BiConsumer() { // from class: com.android.server.autofill.ui.-$$Lambda$InlineSuggestionFactory$mIkFl7AuIYiwe2nVIdtGv_3Vz5Q
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                inlineSuggestionUiCallback.autofill((Dataset) obj, ((Integer) obj2).intValue());
            }
        }, new Consumer() { // from class: com.android.server.autofill.ui.-$$Lambda$InlineSuggestionFactory$VetWaJYpU_VQ7WcN5OSGtE-rqwo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                inlineSuggestionUiCallback.startIntentSender((IntentSender) obj, new Intent());
            }
        }, remoteRenderService, userId, sessionId);
    }

    private static SparseArray<Pair<Dataset, InlineSuggestion>> createInlineSuggestionsInternal(boolean isAugmented, InlineSuggestionsRequest request, List<Dataset> datasets, AutofillId autofillId, Runnable onErrorCallback, BiConsumer<Dataset, Integer> onClickFactory, Consumer<IntentSender> intentSenderConsumer, RemoteInlineSuggestionRenderService remoteRenderService, int userId, int sessionId) {
        SparseArray<Pair<Dataset, InlineSuggestion>> response = new SparseArray<>(datasets.size());
        for (int datasetIndex = 0; datasetIndex < datasets.size(); datasetIndex++) {
            Dataset dataset = datasets.get(datasetIndex);
            int fieldIndex = dataset.getFieldIds().indexOf(autofillId);
            if (fieldIndex < 0) {
                Slog.w(TAG, "AutofillId=" + autofillId + " not found in dataset");
            } else {
                InlinePresentation inlinePresentation = dataset.getFieldInlinePresentation(fieldIndex);
                if (inlinePresentation == null) {
                    Slog.w(TAG, "InlinePresentation not found in dataset");
                } else {
                    InlineSuggestion inlineSuggestion = createInlineSuggestion(isAugmented, dataset, datasetIndex, mergedInlinePresentation(request, datasetIndex, inlinePresentation), onClickFactory, remoteRenderService, userId, sessionId, onErrorCallback, intentSenderConsumer, request.getHostInputToken(), request.getHostDisplayId());
                    response.append(datasetIndex, Pair.create(dataset, inlineSuggestion));
                }
            }
        }
        return response;
    }

    private static InlineSuggestion createInlineSuggestion(boolean isAugmented, final Dataset dataset, final int datasetIndex, InlinePresentation inlinePresentation, final BiConsumer<Dataset, Integer> onClickFactory, RemoteInlineSuggestionRenderService remoteRenderService, int userId, int sessionId, Runnable onErrorCallback, Consumer<IntentSender> intentSenderConsumer, IBinder hostInputToken, int displayId) {
        String suggestionSource = isAugmented ? "android:platform" : "android:autofill";
        String suggestionType = dataset.getAuthentication() == null ? "android:autofill:suggestion" : "android:autofill:action";
        InlineSuggestionInfo inlineSuggestionInfo = new InlineSuggestionInfo(inlinePresentation.getInlinePresentationSpec(), suggestionSource, inlinePresentation.getAutofillHints(), suggestionType, inlinePresentation.isPinned());
        InlineSuggestion inlineSuggestion = new InlineSuggestion(inlineSuggestionInfo, createInlineContentProvider(inlinePresentation, new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$InlineSuggestionFactory$JWm8ajpkUPKS0xGgZbnlyTUdRh4
            @Override // java.lang.Runnable
            public final void run() {
                onClickFactory.accept(dataset, Integer.valueOf(datasetIndex));
            }
        }, onErrorCallback, intentSenderConsumer, remoteRenderService, userId, sessionId, hostInputToken, displayId));
        return inlineSuggestion;
    }

    private static InlineSuggestion createInlineAuthSuggestion(InlinePresentation inlinePresentation, RemoteInlineSuggestionRenderService remoteRenderService, int userId, int sessionId, final BiConsumer<Dataset, Integer> onClickFactory, Runnable onErrorCallback, Consumer<IntentSender> intentSenderConsumer, IBinder hostInputToken, int displayId) {
        InlineSuggestionInfo inlineSuggestionInfo = new InlineSuggestionInfo(inlinePresentation.getInlinePresentationSpec(), "android:autofill", inlinePresentation.getAutofillHints(), "android:autofill:action", inlinePresentation.isPinned());
        return new InlineSuggestion(inlineSuggestionInfo, createInlineContentProvider(inlinePresentation, new Runnable() { // from class: com.android.server.autofill.ui.-$$Lambda$InlineSuggestionFactory$3YGGyihb2cqmuyl8rlJqCQisdGM
            @Override // java.lang.Runnable
            public final void run() {
                onClickFactory.accept(null, 65535);
            }
        }, onErrorCallback, intentSenderConsumer, remoteRenderService, userId, sessionId, hostInputToken, displayId));
    }

    private static InlinePresentation mergedInlinePresentation(InlineSuggestionsRequest request, int index, InlinePresentation inlinePresentation) {
        List<InlinePresentationSpec> specs = request.getInlinePresentationSpecs();
        if (specs.isEmpty()) {
            return inlinePresentation;
        }
        InlinePresentationSpec specFromHost = specs.get(Math.min(specs.size() - 1, index));
        InlinePresentationSpec mergedInlinePresentation = new InlinePresentationSpec.Builder(inlinePresentation.getInlinePresentationSpec().getMinSize(), inlinePresentation.getInlinePresentationSpec().getMaxSize()).setStyle(specFromHost.getStyle()).build();
        return new InlinePresentation(inlinePresentation.getSlice(), mergedInlinePresentation, inlinePresentation.isPinned());
    }

    private static IInlineContentProvider createInlineContentProvider(InlinePresentation inlinePresentation, Runnable onClickAction, Runnable onErrorCallback, Consumer<IntentSender> intentSenderConsumer, RemoteInlineSuggestionRenderService remoteRenderService, int userId, int sessionId, IBinder hostInputToken, int displayId) {
        RemoteInlineSuggestionViewConnector remoteInlineSuggestionViewConnector = new RemoteInlineSuggestionViewConnector(remoteRenderService, userId, sessionId, inlinePresentation, hostInputToken, displayId, onClickAction, onErrorCallback, intentSenderConsumer);
        InlineContentProviderImpl inlineContentProvider = new InlineContentProviderImpl(remoteInlineSuggestionViewConnector, null);
        return inlineContentProvider;
    }

    private InlineSuggestionFactory() {
    }
}
