package com.android.server.autofill.ui;

import android.content.Intent;
import android.content.IntentSender;
import android.service.autofill.Dataset;
import android.service.autofill.FillResponse;
import android.service.autofill.InlinePresentation;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.InlineSuggestion;
import android.view.inputmethod.InlineSuggestionsRequest;
import android.view.inputmethod.InlineSuggestionsResponse;
import com.android.server.autofill.Helper;
import com.android.server.autofill.RemoteInlineSuggestionRenderService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class InlineFillUi {
    private static final String TAG = "InlineFillUi";
    final AutofillId mAutofillId;
    private final ArrayList<Dataset> mDatasets;
    private boolean mFilterMatchingDisabled;
    private String mFilterText;
    private final ArrayList<InlineSuggestion> mInlineSuggestions;

    public interface InlineSuggestionUiCallback {
        void autofill(Dataset dataset, int i);

        void startIntentSender(IntentSender intentSender, Intent intent);
    }

    public interface InlineUiEventCallback {
        void notifyInlineUiHidden(AutofillId autofillId);

        void notifyInlineUiShown(AutofillId autofillId);
    }

    public static InlineFillUi emptyUi(AutofillId autofillId) {
        return new InlineFillUi(autofillId, (SparseArray<Pair<Dataset, InlineSuggestion>>) new SparseArray(), (String) null);
    }

    public static InlineFillUi forAutofill(InlineSuggestionsRequest request, FillResponse response, AutofillId focusedViewId, String filterText, AutoFillUI.AutoFillUiCallback uiCallback, Runnable onErrorCallback, RemoteInlineSuggestionRenderService remoteRenderService, int userId, int sessionId) {
        if (InlineSuggestionFactory.responseNeedAuthentication(response)) {
            InlineSuggestion inlineAuthentication = InlineSuggestionFactory.createInlineAuthentication(request, response, uiCallback, onErrorCallback, remoteRenderService, userId, sessionId);
            return new InlineFillUi(focusedViewId, inlineAuthentication, filterText);
        }
        if (response.getDatasets() != null) {
            SparseArray<Pair<Dataset, InlineSuggestion>> inlineSuggestions = InlineSuggestionFactory.createAutofillInlineSuggestions(request, response.getRequestId(), response.getDatasets(), focusedViewId, uiCallback, onErrorCallback, remoteRenderService, userId, sessionId);
            return new InlineFillUi(focusedViewId, inlineSuggestions, filterText);
        }
        return new InlineFillUi(focusedViewId, (SparseArray<Pair<Dataset, InlineSuggestion>>) new SparseArray(), filterText);
    }

    public static InlineFillUi forAugmentedAutofill(InlineSuggestionsRequest request, List<Dataset> datasets, AutofillId focusedViewId, String filterText, InlineSuggestionUiCallback uiCallback, Runnable onErrorCallback, RemoteInlineSuggestionRenderService remoteRenderService, int userId, int sessionId) {
        SparseArray<Pair<Dataset, InlineSuggestion>> inlineSuggestions = InlineSuggestionFactory.createAugmentedAutofillInlineSuggestions(request, datasets, focusedViewId, uiCallback, onErrorCallback, remoteRenderService, userId, sessionId);
        return new InlineFillUi(focusedViewId, inlineSuggestions, filterText);
    }

    InlineFillUi(AutofillId autofillId, SparseArray<Pair<Dataset, InlineSuggestion>> inlineSuggestions, String filterText) {
        this.mAutofillId = autofillId;
        int size = inlineSuggestions.size();
        this.mDatasets = new ArrayList<>(size);
        this.mInlineSuggestions = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            Pair<Dataset, InlineSuggestion> value = inlineSuggestions.valueAt(i);
            this.mDatasets.add((Dataset) value.first);
            this.mInlineSuggestions.add((InlineSuggestion) value.second);
        }
        this.mFilterText = filterText;
    }

    InlineFillUi(AutofillId autofillId, InlineSuggestion inlineSuggestion, String filterText) {
        this.mAutofillId = autofillId;
        this.mDatasets = null;
        ArrayList<InlineSuggestion> arrayList = new ArrayList<>();
        this.mInlineSuggestions = arrayList;
        arrayList.add(inlineSuggestion);
        this.mFilterText = filterText;
    }

    public AutofillId getAutofillId() {
        return this.mAutofillId;
    }

    public void setFilterText(String filterText) {
        this.mFilterText = filterText;
    }

    public InlineSuggestionsResponse getInlineSuggestionsResponse() {
        int size = this.mInlineSuggestions.size();
        if (size == 0) {
            return new InlineSuggestionsResponse(Collections.emptyList());
        }
        List<InlineSuggestion> inlineSuggestions = new ArrayList<>();
        ArrayList<Dataset> arrayList = this.mDatasets;
        if (arrayList == null || arrayList.size() != size) {
            for (int i = 0; i < size; i++) {
                inlineSuggestions.add(copy(i, this.mInlineSuggestions.get(i)));
            }
            return new InlineSuggestionsResponse(inlineSuggestions);
        }
        for (int i2 = 0; i2 < size; i2++) {
            Dataset dataset = this.mDatasets.get(i2);
            int fieldIndex = dataset.getFieldIds().indexOf(this.mAutofillId);
            if (fieldIndex < 0) {
                Slog.w(TAG, "AutofillId=" + this.mAutofillId + " not found in dataset");
            } else {
                InlinePresentation inlinePresentation = dataset.getFieldInlinePresentation(fieldIndex);
                if (inlinePresentation == null) {
                    Slog.w(TAG, "InlinePresentation not found in dataset");
                } else if (inlinePresentation.isPinned() || includeDataset(dataset, fieldIndex)) {
                    inlineSuggestions.add(copy(i2, this.mInlineSuggestions.get(i2)));
                }
            }
        }
        return new InlineSuggestionsResponse(inlineSuggestions);
    }

    private InlineSuggestion copy(int index, InlineSuggestion inlineSuggestion) {
        InlineContentProviderImpl contentProvider = inlineSuggestion.getContentProvider();
        if (contentProvider instanceof InlineContentProviderImpl) {
            InlineSuggestion newInlineSuggestion = new InlineSuggestion(inlineSuggestion.getInfo(), contentProvider.copy());
            this.mInlineSuggestions.set(index, newInlineSuggestion);
            return newInlineSuggestion;
        }
        return inlineSuggestion;
    }

    private boolean includeDataset(Dataset dataset, int fieldIndex) {
        if (TextUtils.isEmpty(this.mFilterText)) {
            return true;
        }
        String constraintLowerCase = this.mFilterText.toString().toLowerCase();
        Dataset.DatasetFieldFilter filter = dataset.getFilter(fieldIndex);
        if (filter != null) {
            Pattern filterPattern = filter.pattern;
            if (filterPattern == null) {
                if (Helper.sVerbose) {
                    Slog.v(TAG, "Explicitly disabling filter for dataset id" + dataset.getId());
                }
                return false;
            }
            if (this.mFilterMatchingDisabled) {
                return false;
            }
            return filterPattern.matcher(constraintLowerCase).matches();
        }
        AutofillValue value = (AutofillValue) dataset.getFieldValues().get(fieldIndex);
        if (value == null || !value.isText()) {
            return dataset.getAuthentication() == null;
        }
        if (this.mFilterMatchingDisabled) {
            return false;
        }
        String valueText = value.getTextValue().toString().toLowerCase();
        return valueText.toLowerCase().startsWith(constraintLowerCase);
    }

    public void disableFilterMatching() {
        this.mFilterMatchingDisabled = true;
    }
}
