package com.android.launcher3.model.data;

import android.os.Process;
import android.text.TextUtils;
import androidx.core.util.Preconditions;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.folder.FolderNameInfos;
import com.android.launcher3.logger.LauncherAtom;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.userevent.LauncherLogProto;
import com.android.launcher3.util.ContentWriter;
import java.util.ArrayList;
import java.util.OptionalInt;
import java.util.function.IntPredicate;
import java.util.stream.IntStream;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class FolderInfo extends ItemInfo {
    public static final String EXTRA_FOLDER_SUGGESTIONS = "suggest";
    public static final int FLAG_ITEMS_SORTED = 1;
    public static final int FLAG_MANUAL_FOLDER_NAME = 8;
    public static final int FLAG_MULTI_PAGE_ANIMATION = 4;
    public static final int FLAG_WORK_FOLDER = 2;
    public static final int NO_FLAGS = 0;
    private static final String TAG = "FolderInfo";
    public ArrayList<WorkspaceItemInfo> contents = new ArrayList<>();
    private ArrayList<FolderListener> mListeners = new ArrayList<>();
    public int options;
    public FolderNameInfos suggestedFolderNames;

    public interface FolderListener {
        void onAdd(WorkspaceItemInfo item, int rank);

        void onItemsChanged(boolean animate);

        void onRemove(WorkspaceItemInfo item);
    }

    public boolean hasOption(int optionFlag) {
        return (this.options & optionFlag) != 0;
    }

    public enum LabelState {
        UNLABELED(LauncherAtom.Attribute.UNLABELED),
        EMPTY(LauncherAtom.Attribute.EMPTY_LABEL),
        SUGGESTED(LauncherAtom.Attribute.SUGGESTED_LABEL),
        MANUAL(LauncherAtom.Attribute.MANUAL_LABEL);

        private final LauncherAtom.Attribute mLogAttribute;

        LabelState(LauncherAtom.Attribute logAttribute) {
            this.mLogAttribute = logAttribute;
        }
    }

    public FolderInfo() {
        this.itemType = 2;
        this.user = Process.myUserHandle();
    }

    public void add(WorkspaceItemInfo item, boolean animate) {
        add(item, this.contents.size(), animate);
    }

    public void add(WorkspaceItemInfo item, int rank, boolean animate) {
        int iBoundToRange = Utilities.boundToRange(rank, 0, this.contents.size());
        this.contents.add(iBoundToRange, item);
        MLog.d(TAG, "add() called with: item = [" + item + "], rank = [" + iBoundToRange + "], animate = [" + animate + "]");
        for (int i = 0; i < this.mListeners.size(); i++) {
            this.mListeners.get(i).onAdd(item, iBoundToRange);
        }
        itemsChanged(animate);
    }

    public void remove(WorkspaceItemInfo item, boolean animate) {
        this.contents.remove(item);
        for (int i = 0; i < this.mListeners.size(); i++) {
            this.mListeners.get(i).onRemove(item);
        }
        itemsChanged(animate);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public void onAddToDatabase(ContentWriter writer) {
        super.onAddToDatabase(writer);
        writer.put(LauncherSettings.Favorites.TITLE, this.title).put(LauncherSettings.Favorites.OPTIONS, Integer.valueOf(this.options));
    }

    public void addListener(FolderListener listener) {
        this.mListeners.add(listener);
    }

    public void removeListener(FolderListener listener) {
        this.mListeners.remove(listener);
    }

    public void itemsChanged(boolean animate) {
        for (int i = 0; i < this.mListeners.size(); i++) {
            this.mListeners.get(i).onItemsChanged(animate);
        }
    }

    public void setOption(int option, boolean isEnabled, ModelWriter writer) {
        int i = this.options;
        if (isEnabled) {
            this.options = option | i;
        } else {
            this.options = (~option) & i;
        }
        if (writer == null || i == this.options) {
            return;
        }
        writer.updateItemInDatabase(this);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    protected String dumpProperties() {
        return String.format("%s; labelState=%s", super.dumpProperties(), getLabelState());
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public LauncherAtom.ItemInfo buildProto(FolderInfo fInfo) {
        return getDefaultItemInfoBuilder().setFolderIcon(LauncherAtom.FolderIcon.newBuilder().setCardinality(this.contents.size())).setRank(this.rank).setAttribute(getLabelState().mLogAttribute).setContainerInfo(getContainerInfo()).build();
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public void setTitle(CharSequence title, ModelWriter modelWriter) {
        LabelState labelState;
        if (TextUtils.isEmpty(title) && this.title == null) {
            return;
        }
        if (title == null || !title.equals(this.title)) {
            this.title = title;
            if (title == null) {
                labelState = LabelState.UNLABELED;
            } else if (title.length() == 0) {
                labelState = LabelState.EMPTY;
            } else {
                labelState = getAcceptedSuggestionIndex().isPresent() ? LabelState.SUGGESTED : LabelState.MANUAL;
            }
            if (labelState.equals(LabelState.MANUAL)) {
                this.options |= 8;
            } else {
                this.options &= -9;
            }
            if (modelWriter != null) {
                modelWriter.updateItemInDatabase(this);
            }
        }
    }

    public LabelState getLabelState() {
        if (this.title == null) {
            return LabelState.UNLABELED;
        }
        if (this.title.length() == 0) {
            return LabelState.EMPTY;
        }
        return hasOption(8) ? LabelState.MANUAL : LabelState.SUGGESTED;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public ItemInfo makeShallowCopy() {
        FolderInfo folderInfo = new FolderInfo();
        folderInfo.copyFrom(this);
        folderInfo.contents = this.contents;
        return folderInfo;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public LauncherAtom.ItemInfo buildProto() {
        return buildProto(null);
    }

    public OptionalInt getAcceptedSuggestionIndex() {
        final String string = ((CharSequence) Preconditions.checkNotNull(this.title, "Expected valid folder label, but found null")).toString();
        FolderNameInfos folderNameInfos = this.suggestedFolderNames;
        if (folderNameInfos == null || !folderNameInfos.hasSuggestions()) {
            return OptionalInt.empty();
        }
        final CharSequence[] labels = this.suggestedFolderNames.getLabels();
        return IntStream.range(0, labels.length).filter(new IntPredicate() { // from class: com.android.launcher3.model.data.FolderInfo$$ExternalSyntheticLambda0
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                return FolderInfo.lambda$getAcceptedSuggestionIndex$0(labels, string, i);
            }
        }).sequential().findFirst();
    }

    static /* synthetic */ boolean lambda$getAcceptedSuggestionIndex$0(CharSequence[] charSequenceArr, String str, int i) {
        return !TextUtils.isEmpty(charSequenceArr[i]) && str.equalsIgnoreCase(charSequenceArr[i].toString());
    }

    public LauncherAtom.FromState getFromLabelState() {
        int i = AnonymousClass1.$SwitchMap$com$android$launcher3$model$data$FolderInfo$LabelState[getLabelState().ordinal()];
        if (i == 1) {
            return LauncherAtom.FromState.FROM_EMPTY;
        }
        if (i == 2) {
            return LauncherAtom.FromState.FROM_CUSTOM;
        }
        if (i == 3) {
            return LauncherAtom.FromState.FROM_SUGGESTED;
        }
        return LauncherAtom.FromState.FROM_STATE_UNSPECIFIED;
    }

    public LauncherAtom.ToState getToLabelState() {
        if (this.title == null) {
            return LauncherAtom.ToState.TO_STATE_UNSPECIFIED;
        }
        if (!FeatureFlags.FOLDER_NAME_SUGGEST.get()) {
            if (this.title.length() > 0) {
                return LauncherAtom.ToState.TO_CUSTOM_WITH_SUGGESTIONS_DISABLED;
            }
            return LauncherAtom.ToState.TO_EMPTY_WITH_SUGGESTIONS_DISABLED;
        }
        FolderNameInfos folderNameInfos = this.suggestedFolderNames;
        if (folderNameInfos == null || !folderNameInfos.hasSuggestions()) {
            if (this.title.length() > 0) {
                return LauncherAtom.ToState.TO_CUSTOM_WITH_EMPTY_SUGGESTIONS;
            }
            return LauncherAtom.ToState.TO_EMPTY_WITH_EMPTY_SUGGESTIONS;
        }
        FolderNameInfos folderNameInfos2 = this.suggestedFolderNames;
        boolean z = folderNameInfos2 != null && folderNameInfos2.hasPrimary();
        if (this.title.length() == 0) {
            if (z) {
                return LauncherAtom.ToState.TO_EMPTY_WITH_VALID_PRIMARY;
            }
            return LauncherAtom.ToState.TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY;
        }
        OptionalInt acceptedSuggestionIndex = getAcceptedSuggestionIndex();
        if (!acceptedSuggestionIndex.isPresent()) {
            if (z) {
                return LauncherAtom.ToState.TO_CUSTOM_WITH_VALID_PRIMARY;
            }
            return LauncherAtom.ToState.TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY;
        }
        int asInt = acceptedSuggestionIndex.getAsInt();
        if (asInt == 0) {
            return LauncherAtom.ToState.TO_SUGGESTION0;
        }
        if (asInt == 1) {
            if (z) {
                return LauncherAtom.ToState.TO_SUGGESTION1_WITH_VALID_PRIMARY;
            }
            return LauncherAtom.ToState.TO_SUGGESTION1_WITH_EMPTY_PRIMARY;
        }
        if (asInt == 2) {
            if (z) {
                return LauncherAtom.ToState.TO_SUGGESTION2_WITH_VALID_PRIMARY;
            }
            return LauncherAtom.ToState.TO_SUGGESTION2_WITH_EMPTY_PRIMARY;
        }
        if (asInt != 3) {
            return LauncherAtom.ToState.TO_STATE_UNSPECIFIED;
        }
        if (z) {
            return LauncherAtom.ToState.TO_SUGGESTION3_WITH_VALID_PRIMARY;
        }
        return LauncherAtom.ToState.TO_SUGGESTION3_WITH_EMPTY_PRIMARY;
    }

    @Deprecated
    public LauncherLogProto.LauncherEvent getFolderLabelStateLauncherEvent(LauncherAtom.FromState fromState, LauncherAtom.ToState toState) {
        return LauncherLogProto.LauncherEvent.newBuilder().setAction(LauncherLogProto.Action.newBuilder().setType(LauncherLogProto.Action.Type.SOFT_KEYBOARD)).addSrcTarget(LauncherLogProto.Target.newBuilder().setType(LauncherLogProto.Target.Type.ITEM).setItemType(LauncherLogProto.ItemType.EDITTEXT).setFromFolderLabelState(convertFolderLabelState(fromState)).setToFolderLabelState(convertFolderLabelState(toState))).addSrcTarget(LauncherLogProto.Target.newBuilder().setType(LauncherLogProto.Target.Type.CONTAINER).setContainerType(LauncherLogProto.ContainerType.FOLDER).setPageIndex(this.screenId).setGridX(this.cellX).setGridY(this.cellY).setCardinality(this.contents.size())).addSrcTarget(newParentContainerTarget()).build();
    }

    @Deprecated
    private LauncherLogProto.Target.Builder newParentContainerTarget() {
        LauncherLogProto.Target.Builder type = LauncherLogProto.Target.newBuilder().setType(LauncherLogProto.Target.Type.CONTAINER);
        int i = this.container;
        if (i == -101) {
            return type.setContainerType(LauncherLogProto.ContainerType.HOTSEAT);
        }
        if (i == -100) {
            return type.setContainerType(LauncherLogProto.ContainerType.WORKSPACE);
        }
        throw new AssertionError(String.format("Expected container to be either %s or %s but found %s.", Integer.valueOf(LauncherSettings.Favorites.CONTAINER_HOTSEAT), -100, Integer.valueOf(this.container)));
    }

    @Deprecated
    private static LauncherLogProto.Target.FromFolderLabelState convertFolderLabelState(LauncherAtom.FromState fromState) {
        int i = AnonymousClass1.$SwitchMap$com$android$launcher3$logger$LauncherAtom$FromState[fromState.ordinal()];
        if (i == 1) {
            return LauncherLogProto.Target.FromFolderLabelState.FROM_EMPTY;
        }
        if (i == 2) {
            return LauncherLogProto.Target.FromFolderLabelState.FROM_SUGGESTED;
        }
        if (i == 3) {
            return LauncherLogProto.Target.FromFolderLabelState.FROM_CUSTOM;
        }
        return LauncherLogProto.Target.FromFolderLabelState.FROM_FOLDER_LABEL_STATE_UNSPECIFIED;
    }

    /* JADX INFO: renamed from: com.android.launcher3.model.data.FolderInfo$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$launcher3$logger$LauncherAtom$FromState;
        static final /* synthetic */ int[] $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState;
        static final /* synthetic */ int[] $SwitchMap$com$android$launcher3$model$data$FolderInfo$LabelState;

        static {
            int[] iArr = new int[LauncherAtom.ToState.values().length];
            $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState = iArr;
            try {
                iArr[LauncherAtom.ToState.UNCHANGED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[LauncherAtom.ToState.TO_SUGGESTION0.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[LauncherAtom.ToState.TO_SUGGESTION1_WITH_VALID_PRIMARY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[LauncherAtom.ToState.TO_SUGGESTION1_WITH_EMPTY_PRIMARY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[LauncherAtom.ToState.TO_SUGGESTION2_WITH_VALID_PRIMARY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[LauncherAtom.ToState.TO_SUGGESTION2_WITH_EMPTY_PRIMARY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[LauncherAtom.ToState.TO_SUGGESTION3_WITH_VALID_PRIMARY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[LauncherAtom.ToState.TO_SUGGESTION3_WITH_EMPTY_PRIMARY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[LauncherAtom.ToState.TO_EMPTY_WITH_VALID_PRIMARY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[LauncherAtom.ToState.TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[LauncherAtom.ToState.TO_EMPTY_WITH_EMPTY_SUGGESTIONS.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[LauncherAtom.ToState.TO_EMPTY_WITH_SUGGESTIONS_DISABLED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[LauncherAtom.ToState.TO_CUSTOM_WITH_VALID_PRIMARY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[LauncherAtom.ToState.TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[LauncherAtom.ToState.TO_CUSTOM_WITH_EMPTY_SUGGESTIONS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[LauncherAtom.ToState.TO_CUSTOM_WITH_SUGGESTIONS_DISABLED.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            int[] iArr2 = new int[LauncherAtom.FromState.values().length];
            $SwitchMap$com$android$launcher3$logger$LauncherAtom$FromState = iArr2;
            try {
                iArr2[LauncherAtom.FromState.FROM_EMPTY.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$FromState[LauncherAtom.FromState.FROM_SUGGESTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$android$launcher3$logger$LauncherAtom$FromState[LauncherAtom.FromState.FROM_CUSTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused19) {
            }
            int[] iArr3 = new int[LabelState.values().length];
            $SwitchMap$com$android$launcher3$model$data$FolderInfo$LabelState = iArr3;
            try {
                iArr3[LabelState.EMPTY.ordinal()] = 1;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$android$launcher3$model$data$FolderInfo$LabelState[LabelState.MANUAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$android$launcher3$model$data$FolderInfo$LabelState[LabelState.SUGGESTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$android$launcher3$model$data$FolderInfo$LabelState[LabelState.UNLABELED.ordinal()] = 4;
            } catch (NoSuchFieldError unused23) {
            }
        }
    }

    @Deprecated
    private static LauncherLogProto.Target.ToFolderLabelState convertFolderLabelState(LauncherAtom.ToState toState) {
        switch (AnonymousClass1.$SwitchMap$com$android$launcher3$logger$LauncherAtom$ToState[toState.ordinal()]) {
            case 1:
                return LauncherLogProto.Target.ToFolderLabelState.UNCHANGED;
            case 2:
                return LauncherLogProto.Target.ToFolderLabelState.TO_SUGGESTION0_WITH_VALID_PRIMARY;
            case 3:
                return LauncherLogProto.Target.ToFolderLabelState.TO_SUGGESTION1_WITH_VALID_PRIMARY;
            case 4:
                return LauncherLogProto.Target.ToFolderLabelState.TO_SUGGESTION1_WITH_EMPTY_PRIMARY;
            case 5:
                return LauncherLogProto.Target.ToFolderLabelState.TO_SUGGESTION2_WITH_VALID_PRIMARY;
            case 6:
                return LauncherLogProto.Target.ToFolderLabelState.TO_SUGGESTION2_WITH_EMPTY_PRIMARY;
            case 7:
                return LauncherLogProto.Target.ToFolderLabelState.TO_SUGGESTION3_WITH_VALID_PRIMARY;
            case 8:
                return LauncherLogProto.Target.ToFolderLabelState.TO_SUGGESTION3_WITH_EMPTY_PRIMARY;
            case 9:
                return LauncherLogProto.Target.ToFolderLabelState.TO_EMPTY_WITH_VALID_PRIMARY;
            case 10:
                return LauncherLogProto.Target.ToFolderLabelState.TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY;
            case 11:
                return LauncherLogProto.Target.ToFolderLabelState.TO_EMPTY_WITH_EMPTY_SUGGESTIONS;
            case 12:
                return LauncherLogProto.Target.ToFolderLabelState.TO_EMPTY_WITH_SUGGESTIONS_DISABLED;
            case 13:
                return LauncherLogProto.Target.ToFolderLabelState.TO_CUSTOM_WITH_VALID_PRIMARY;
            case 14:
                return LauncherLogProto.Target.ToFolderLabelState.TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY;
            case 15:
                return LauncherLogProto.Target.ToFolderLabelState.TO_CUSTOM_WITH_EMPTY_SUGGESTIONS;
            case 16:
                return LauncherLogProto.Target.ToFolderLabelState.TO_CUSTOM_WITH_SUGGESTIONS_DISABLED;
            default:
                return LauncherLogProto.Target.ToFolderLabelState.TO_FOLDER_LABEL_STATE_UNSPECIFIED;
        }
    }
}
