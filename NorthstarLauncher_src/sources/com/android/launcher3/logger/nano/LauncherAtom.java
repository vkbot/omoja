package com.android.launcher3.logger.nano;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InternalNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public interface LauncherAtom {

    public interface Attribute {
        public static final int ADD_TO_HOMESCREEN = 6;
        public static final int ALLAPPS_ATOZ = 4;
        public static final int ALLAPPS_PREDICTION = 7;
        public static final int BACKUP_RESTORE = 2;
        public static final int DEFAULT_LAYOUT = 1;
        public static final int EMPTY_LABEL = 12;
        public static final int HOTSEAT_PREDICTION = 8;
        public static final int MANUAL_LABEL = 10;
        public static final int PINITEM = 3;
        public static final int SUGGESTED_LABEL = 9;
        public static final int UNKNOWN = 0;
        public static final int UNLABELED = 11;
        public static final int WIDGETS = 5;
    }

    public interface FromState {
        public static final int FROM_CUSTOM = 2;
        public static final int FROM_EMPTY = 1;
        public static final int FROM_STATE_UNSPECIFIED = 0;
        public static final int FROM_SUGGESTED = 3;
    }

    public interface ToState {
        public static final int TO_CUSTOM_WITH_EMPTY_SUGGESTIONS = 15;
        public static final int TO_CUSTOM_WITH_SUGGESTIONS_DISABLED = 16;
        public static final int TO_CUSTOM_WITH_VALID_PRIMARY = 13;
        public static final int TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY = 14;
        public static final int TO_EMPTY_WITH_EMPTY_SUGGESTIONS = 11;
        public static final int TO_EMPTY_WITH_SUGGESTIONS_DISABLED = 12;
        public static final int TO_EMPTY_WITH_VALID_PRIMARY = 9;
        public static final int TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY = 10;
        public static final int TO_STATE_UNSPECIFIED = 0;
        public static final int TO_SUGGESTION0 = 2;
        public static final int TO_SUGGESTION1_WITH_EMPTY_PRIMARY = 4;
        public static final int TO_SUGGESTION1_WITH_VALID_PRIMARY = 3;
        public static final int TO_SUGGESTION2_WITH_EMPTY_PRIMARY = 6;
        public static final int TO_SUGGESTION2_WITH_VALID_PRIMARY = 5;
        public static final int TO_SUGGESTION3_WITH_EMPTY_PRIMARY = 8;
        public static final int TO_SUGGESTION3_WITH_VALID_PRIMARY = 7;
        public static final int UNCHANGED = 1;
    }

    public static final class ItemInfo extends MessageNano {
        public static final int APPLICATION_FIELD_NUMBER = 1;
        public static final int FOLDER_ICON_FIELD_NUMBER = 9;
        public static final int SHORTCUT_FIELD_NUMBER = 3;
        public static final int TASK_FIELD_NUMBER = 2;
        public static final int WIDGET_FIELD_NUMBER = 4;
        private static volatile ItemInfo[] _emptyArray;
        public int attribute;
        public ContainerInfo containerInfo;
        public boolean isWork;
        private int itemCase_ = 0;
        private Object item_;
        public int rank;

        public ItemInfo clearItem() {
            this.itemCase_ = 0;
            this.item_ = null;
            return this;
        }

        public int getItemCase() {
            return this.itemCase_;
        }

        public boolean hasApplication() {
            return this.itemCase_ == 1;
        }

        public boolean hasFolderIcon() {
            return this.itemCase_ == 9;
        }

        public boolean hasShortcut() {
            return this.itemCase_ == 3;
        }

        public boolean hasTask() {
            return this.itemCase_ == 2;
        }

        public boolean hasWidget() {
            return this.itemCase_ == 4;
        }

        public static ItemInfo[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new ItemInfo[0];
                    }
                }
            }
            return _emptyArray;
        }

        public Application getApplication() {
            if (this.itemCase_ == 1) {
                return (Application) this.item_;
            }
            return null;
        }

        public ItemInfo setApplication(Application application) {
            application.getClass();
            this.itemCase_ = 1;
            this.item_ = application;
            return this;
        }

        public Task getTask() {
            if (this.itemCase_ == 2) {
                return (Task) this.item_;
            }
            return null;
        }

        public ItemInfo setTask(Task task) {
            task.getClass();
            this.itemCase_ = 2;
            this.item_ = task;
            return this;
        }

        public Shortcut getShortcut() {
            if (this.itemCase_ == 3) {
                return (Shortcut) this.item_;
            }
            return null;
        }

        public ItemInfo setShortcut(Shortcut shortcut) {
            shortcut.getClass();
            this.itemCase_ = 3;
            this.item_ = shortcut;
            return this;
        }

        public Widget getWidget() {
            if (this.itemCase_ == 4) {
                return (Widget) this.item_;
            }
            return null;
        }

        public ItemInfo setWidget(Widget widget) {
            widget.getClass();
            this.itemCase_ = 4;
            this.item_ = widget;
            return this;
        }

        public FolderIcon getFolderIcon() {
            if (this.itemCase_ == 9) {
                return (FolderIcon) this.item_;
            }
            return null;
        }

        public ItemInfo setFolderIcon(FolderIcon folderIcon) {
            folderIcon.getClass();
            this.itemCase_ = 9;
            this.item_ = folderIcon;
            return this;
        }

        public ItemInfo() {
            clear();
        }

        public ItemInfo clear() {
            this.rank = 0;
            this.isWork = false;
            this.containerInfo = null;
            this.attribute = 0;
            clearItem();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.itemCase_ == 1) {
                codedOutputByteBufferNano.writeMessage(1, (MessageNano) this.item_);
            }
            if (this.itemCase_ == 2) {
                codedOutputByteBufferNano.writeMessage(2, (MessageNano) this.item_);
            }
            if (this.itemCase_ == 3) {
                codedOutputByteBufferNano.writeMessage(3, (MessageNano) this.item_);
            }
            if (this.itemCase_ == 4) {
                codedOutputByteBufferNano.writeMessage(4, (MessageNano) this.item_);
            }
            int i = this.rank;
            if (i != 0) {
                codedOutputByteBufferNano.writeInt32(5, i);
            }
            boolean z = this.isWork;
            if (z) {
                codedOutputByteBufferNano.writeBool(6, z);
            }
            ContainerInfo containerInfo = this.containerInfo;
            if (containerInfo != null) {
                codedOutputByteBufferNano.writeMessage(7, containerInfo);
            }
            int i2 = this.attribute;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(8, i2);
            }
            if (this.itemCase_ == 9) {
                codedOutputByteBufferNano.writeMessage(9, (MessageNano) this.item_);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        @Override // com.google.protobuf.nano.MessageNano
        protected int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            if (this.itemCase_ == 1) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, (MessageNano) this.item_);
            }
            if (this.itemCase_ == 2) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, (MessageNano) this.item_);
            }
            if (this.itemCase_ == 3) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, (MessageNano) this.item_);
            }
            if (this.itemCase_ == 4) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, (MessageNano) this.item_);
            }
            int i = this.rank;
            if (i != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, i);
            }
            boolean z = this.isWork;
            if (z) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(6, z);
            }
            ContainerInfo containerInfo = this.containerInfo;
            if (containerInfo != null) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, containerInfo);
            }
            int i2 = this.attribute;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, i2);
            }
            return this.itemCase_ == 9 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(9, (MessageNano) this.item_) : iComputeSerializedSize;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public ItemInfo mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 10) {
                    if (this.itemCase_ != 1) {
                        this.item_ = new Application();
                    }
                    codedInputByteBufferNano.readMessage((MessageNano) this.item_);
                    this.itemCase_ = 1;
                } else if (tag == 18) {
                    if (this.itemCase_ != 2) {
                        this.item_ = new Task();
                    }
                    codedInputByteBufferNano.readMessage((MessageNano) this.item_);
                    this.itemCase_ = 2;
                } else if (tag == 26) {
                    if (this.itemCase_ != 3) {
                        this.item_ = new Shortcut();
                    }
                    codedInputByteBufferNano.readMessage((MessageNano) this.item_);
                    this.itemCase_ = 3;
                } else if (tag == 34) {
                    if (this.itemCase_ != 4) {
                        this.item_ = new Widget();
                    }
                    codedInputByteBufferNano.readMessage((MessageNano) this.item_);
                    this.itemCase_ = 4;
                } else if (tag == 40) {
                    this.rank = codedInputByteBufferNano.readInt32();
                } else if (tag == 48) {
                    this.isWork = codedInputByteBufferNano.readBool();
                } else if (tag == 58) {
                    if (this.containerInfo == null) {
                        this.containerInfo = new ContainerInfo();
                    }
                    codedInputByteBufferNano.readMessage(this.containerInfo);
                } else if (tag == 64) {
                    int int32 = codedInputByteBufferNano.readInt32();
                    switch (int32) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                            this.attribute = int32;
                            break;
                    }
                } else if (tag != 74) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                } else {
                    if (this.itemCase_ != 9) {
                        this.item_ = new FolderIcon();
                    }
                    codedInputByteBufferNano.readMessage((MessageNano) this.item_);
                    this.itemCase_ = 9;
                }
            }
        }

        public static ItemInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (ItemInfo) MessageNano.mergeFrom(new ItemInfo(), bArr);
        }

        public static ItemInfo parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new ItemInfo().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class ContainerInfo extends MessageNano {
        public static final int ALL_APPS_CONTAINER_FIELD_NUMBER = 4;
        public static final int FOLDER_FIELD_NUMBER = 3;
        public static final int HOTSEAT_FIELD_NUMBER = 2;
        public static final int PREDICTED_HOTSEAT_CONTAINER_FIELD_NUMBER = 10;
        public static final int PREDICTION_CONTAINER_FIELD_NUMBER = 6;
        public static final int SEARCH_RESULT_CONTAINER_FIELD_NUMBER = 7;
        public static final int SETTINGS_CONTAINER_FIELD_NUMBER = 9;
        public static final int SHORTCUTS_CONTAINER_FIELD_NUMBER = 8;
        public static final int TASK_FOREGROUND_CONTAINER_FIELD_NUMBER = 12;
        public static final int TASK_SWITCHER_CONTAINER_FIELD_NUMBER = 11;
        public static final int WIDGETS_CONTAINER_FIELD_NUMBER = 5;
        public static final int WORKSPACE_FIELD_NUMBER = 1;
        private static volatile ContainerInfo[] _emptyArray;
        private int containerCase_ = 0;
        private Object container_;

        public ContainerInfo clearContainer() {
            this.containerCase_ = 0;
            this.container_ = null;
            return this;
        }

        public int getContainerCase() {
            return this.containerCase_;
        }

        public boolean hasAllAppsContainer() {
            return this.containerCase_ == 4;
        }

        public boolean hasFolder() {
            return this.containerCase_ == 3;
        }

        public boolean hasHotseat() {
            return this.containerCase_ == 2;
        }

        public boolean hasPredictedHotseatContainer() {
            return this.containerCase_ == 10;
        }

        public boolean hasPredictionContainer() {
            return this.containerCase_ == 6;
        }

        public boolean hasSearchResultContainer() {
            return this.containerCase_ == 7;
        }

        public boolean hasSettingsContainer() {
            return this.containerCase_ == 9;
        }

        public boolean hasShortcutsContainer() {
            return this.containerCase_ == 8;
        }

        public boolean hasTaskForegroundContainer() {
            return this.containerCase_ == 12;
        }

        public boolean hasTaskSwitcherContainer() {
            return this.containerCase_ == 11;
        }

        public boolean hasWidgetsContainer() {
            return this.containerCase_ == 5;
        }

        public boolean hasWorkspace() {
            return this.containerCase_ == 1;
        }

        public static ContainerInfo[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new ContainerInfo[0];
                    }
                }
            }
            return _emptyArray;
        }

        public WorkspaceContainer getWorkspace() {
            if (this.containerCase_ == 1) {
                return (WorkspaceContainer) this.container_;
            }
            return null;
        }

        public ContainerInfo setWorkspace(WorkspaceContainer workspaceContainer) {
            workspaceContainer.getClass();
            this.containerCase_ = 1;
            this.container_ = workspaceContainer;
            return this;
        }

        public HotseatContainer getHotseat() {
            if (this.containerCase_ == 2) {
                return (HotseatContainer) this.container_;
            }
            return null;
        }

        public ContainerInfo setHotseat(HotseatContainer hotseatContainer) {
            hotseatContainer.getClass();
            this.containerCase_ = 2;
            this.container_ = hotseatContainer;
            return this;
        }

        public FolderContainer getFolder() {
            if (this.containerCase_ == 3) {
                return (FolderContainer) this.container_;
            }
            return null;
        }

        public ContainerInfo setFolder(FolderContainer folderContainer) {
            folderContainer.getClass();
            this.containerCase_ = 3;
            this.container_ = folderContainer;
            return this;
        }

        public AllAppsContainer getAllAppsContainer() {
            if (this.containerCase_ == 4) {
                return (AllAppsContainer) this.container_;
            }
            return null;
        }

        public ContainerInfo setAllAppsContainer(AllAppsContainer allAppsContainer) {
            allAppsContainer.getClass();
            this.containerCase_ = 4;
            this.container_ = allAppsContainer;
            return this;
        }

        public WidgetsContainer getWidgetsContainer() {
            if (this.containerCase_ == 5) {
                return (WidgetsContainer) this.container_;
            }
            return null;
        }

        public ContainerInfo setWidgetsContainer(WidgetsContainer widgetsContainer) {
            widgetsContainer.getClass();
            this.containerCase_ = 5;
            this.container_ = widgetsContainer;
            return this;
        }

        public PredictionContainer getPredictionContainer() {
            if (this.containerCase_ == 6) {
                return (PredictionContainer) this.container_;
            }
            return null;
        }

        public ContainerInfo setPredictionContainer(PredictionContainer predictionContainer) {
            predictionContainer.getClass();
            this.containerCase_ = 6;
            this.container_ = predictionContainer;
            return this;
        }

        public SearchResultContainer getSearchResultContainer() {
            if (this.containerCase_ == 7) {
                return (SearchResultContainer) this.container_;
            }
            return null;
        }

        public ContainerInfo setSearchResultContainer(SearchResultContainer searchResultContainer) {
            searchResultContainer.getClass();
            this.containerCase_ = 7;
            this.container_ = searchResultContainer;
            return this;
        }

        public ShortcutsContainer getShortcutsContainer() {
            if (this.containerCase_ == 8) {
                return (ShortcutsContainer) this.container_;
            }
            return null;
        }

        public ContainerInfo setShortcutsContainer(ShortcutsContainer shortcutsContainer) {
            shortcutsContainer.getClass();
            this.containerCase_ = 8;
            this.container_ = shortcutsContainer;
            return this;
        }

        public SettingsContainer getSettingsContainer() {
            if (this.containerCase_ == 9) {
                return (SettingsContainer) this.container_;
            }
            return null;
        }

        public ContainerInfo setSettingsContainer(SettingsContainer settingsContainer) {
            settingsContainer.getClass();
            this.containerCase_ = 9;
            this.container_ = settingsContainer;
            return this;
        }

        public PredictedHotseatContainer getPredictedHotseatContainer() {
            if (this.containerCase_ == 10) {
                return (PredictedHotseatContainer) this.container_;
            }
            return null;
        }

        public ContainerInfo setPredictedHotseatContainer(PredictedHotseatContainer predictedHotseatContainer) {
            predictedHotseatContainer.getClass();
            this.containerCase_ = 10;
            this.container_ = predictedHotseatContainer;
            return this;
        }

        public TaskSwitcherContainer getTaskSwitcherContainer() {
            if (this.containerCase_ == 11) {
                return (TaskSwitcherContainer) this.container_;
            }
            return null;
        }

        public ContainerInfo setTaskSwitcherContainer(TaskSwitcherContainer taskSwitcherContainer) {
            taskSwitcherContainer.getClass();
            this.containerCase_ = 11;
            this.container_ = taskSwitcherContainer;
            return this;
        }

        public TaskForegroundContainer getTaskForegroundContainer() {
            if (this.containerCase_ == 12) {
                return (TaskForegroundContainer) this.container_;
            }
            return null;
        }

        public ContainerInfo setTaskForegroundContainer(TaskForegroundContainer taskForegroundContainer) {
            taskForegroundContainer.getClass();
            this.containerCase_ = 12;
            this.container_ = taskForegroundContainer;
            return this;
        }

        public ContainerInfo() {
            clear();
        }

        public ContainerInfo clear() {
            clearContainer();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.containerCase_ == 1) {
                codedOutputByteBufferNano.writeMessage(1, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 2) {
                codedOutputByteBufferNano.writeMessage(2, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 3) {
                codedOutputByteBufferNano.writeMessage(3, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 4) {
                codedOutputByteBufferNano.writeMessage(4, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 5) {
                codedOutputByteBufferNano.writeMessage(5, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 6) {
                codedOutputByteBufferNano.writeMessage(6, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 7) {
                codedOutputByteBufferNano.writeMessage(7, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 8) {
                codedOutputByteBufferNano.writeMessage(8, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 9) {
                codedOutputByteBufferNano.writeMessage(9, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 10) {
                codedOutputByteBufferNano.writeMessage(10, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 11) {
                codedOutputByteBufferNano.writeMessage(11, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 12) {
                codedOutputByteBufferNano.writeMessage(12, (MessageNano) this.container_);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        @Override // com.google.protobuf.nano.MessageNano
        protected int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            if (this.containerCase_ == 1) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 2) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 3) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 4) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 5) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 6) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(6, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 7) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 8) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(8, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 9) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(9, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 10) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(10, (MessageNano) this.container_);
            }
            if (this.containerCase_ == 11) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(11, (MessageNano) this.container_);
            }
            return this.containerCase_ == 12 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(12, (MessageNano) this.container_) : iComputeSerializedSize;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public ContainerInfo mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        if (this.containerCase_ != 1) {
                            this.container_ = new WorkspaceContainer();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.container_);
                        this.containerCase_ = 1;
                        break;
                    case 18:
                        if (this.containerCase_ != 2) {
                            this.container_ = new HotseatContainer();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.container_);
                        this.containerCase_ = 2;
                        break;
                    case 26:
                        if (this.containerCase_ != 3) {
                            this.container_ = new FolderContainer();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.container_);
                        this.containerCase_ = 3;
                        break;
                    case 34:
                        if (this.containerCase_ != 4) {
                            this.container_ = new AllAppsContainer();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.container_);
                        this.containerCase_ = 4;
                        break;
                    case 42:
                        if (this.containerCase_ != 5) {
                            this.container_ = new WidgetsContainer();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.container_);
                        this.containerCase_ = 5;
                        break;
                    case 50:
                        if (this.containerCase_ != 6) {
                            this.container_ = new PredictionContainer();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.container_);
                        this.containerCase_ = 6;
                        break;
                    case 58:
                        if (this.containerCase_ != 7) {
                            this.container_ = new SearchResultContainer();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.container_);
                        this.containerCase_ = 7;
                        break;
                    case 66:
                        if (this.containerCase_ != 8) {
                            this.container_ = new ShortcutsContainer();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.container_);
                        this.containerCase_ = 8;
                        break;
                    case 74:
                        if (this.containerCase_ != 9) {
                            this.container_ = new SettingsContainer();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.container_);
                        this.containerCase_ = 9;
                        break;
                    case 82:
                        if (this.containerCase_ != 10) {
                            this.container_ = new PredictedHotseatContainer();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.container_);
                        this.containerCase_ = 10;
                        break;
                    case 90:
                        if (this.containerCase_ != 11) {
                            this.container_ = new TaskSwitcherContainer();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.container_);
                        this.containerCase_ = 11;
                        break;
                    case 98:
                        if (this.containerCase_ != 12) {
                            this.container_ = new TaskForegroundContainer();
                        }
                        codedInputByteBufferNano.readMessage((MessageNano) this.container_);
                        this.containerCase_ = 12;
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                            return this;
                        }
                        break;
                        break;
                }
            }
        }

        public static ContainerInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (ContainerInfo) MessageNano.mergeFrom(new ContainerInfo(), bArr);
        }

        public static ContainerInfo parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new ContainerInfo().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class AllAppsContainer extends MessageNano {
        private static volatile AllAppsContainer[] _emptyArray;

        public static AllAppsContainer[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new AllAppsContainer[0];
                    }
                }
            }
            return _emptyArray;
        }

        public AllAppsContainer() {
            clear();
        }

        public AllAppsContainer clear() {
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public AllAppsContainer mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            int tag;
            do {
                tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    break;
                }
            } while (WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag));
            return this;
        }

        public static AllAppsContainer parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (AllAppsContainer) MessageNano.mergeFrom(new AllAppsContainer(), bArr);
        }

        public static AllAppsContainer parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new AllAppsContainer().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class WidgetsContainer extends MessageNano {
        private static volatile WidgetsContainer[] _emptyArray;

        public static WidgetsContainer[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new WidgetsContainer[0];
                    }
                }
            }
            return _emptyArray;
        }

        public WidgetsContainer() {
            clear();
        }

        public WidgetsContainer clear() {
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public WidgetsContainer mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            int tag;
            do {
                tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    break;
                }
            } while (WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag));
            return this;
        }

        public static WidgetsContainer parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (WidgetsContainer) MessageNano.mergeFrom(new WidgetsContainer(), bArr);
        }

        public static WidgetsContainer parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new WidgetsContainer().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class PredictionContainer extends MessageNano {
        private static volatile PredictionContainer[] _emptyArray;

        public static PredictionContainer[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new PredictionContainer[0];
                    }
                }
            }
            return _emptyArray;
        }

        public PredictionContainer() {
            clear();
        }

        public PredictionContainer clear() {
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public PredictionContainer mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            int tag;
            do {
                tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    break;
                }
            } while (WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag));
            return this;
        }

        public static PredictionContainer parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (PredictionContainer) MessageNano.mergeFrom(new PredictionContainer(), bArr);
        }

        public static PredictionContainer parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new PredictionContainer().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class SearchResultContainer extends MessageNano {
        public static final int ALL_APPS_CONTAINER_FIELD_NUMBER = 3;
        public static final int WORKSPACE_FIELD_NUMBER = 2;
        private static volatile SearchResultContainer[] _emptyArray;
        private int parentContainerCase_ = 0;
        private Object parentContainer_;
        public int queryLength;

        public SearchResultContainer clearParentContainer() {
            this.parentContainerCase_ = 0;
            this.parentContainer_ = null;
            return this;
        }

        public int getParentContainerCase() {
            return this.parentContainerCase_;
        }

        public boolean hasAllAppsContainer() {
            return this.parentContainerCase_ == 3;
        }

        public boolean hasWorkspace() {
            return this.parentContainerCase_ == 2;
        }

        public static SearchResultContainer[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new SearchResultContainer[0];
                    }
                }
            }
            return _emptyArray;
        }

        public WorkspaceContainer getWorkspace() {
            if (this.parentContainerCase_ == 2) {
                return (WorkspaceContainer) this.parentContainer_;
            }
            return null;
        }

        public SearchResultContainer setWorkspace(WorkspaceContainer workspaceContainer) {
            workspaceContainer.getClass();
            this.parentContainerCase_ = 2;
            this.parentContainer_ = workspaceContainer;
            return this;
        }

        public AllAppsContainer getAllAppsContainer() {
            if (this.parentContainerCase_ == 3) {
                return (AllAppsContainer) this.parentContainer_;
            }
            return null;
        }

        public SearchResultContainer setAllAppsContainer(AllAppsContainer allAppsContainer) {
            allAppsContainer.getClass();
            this.parentContainerCase_ = 3;
            this.parentContainer_ = allAppsContainer;
            return this;
        }

        public SearchResultContainer() {
            clear();
        }

        public SearchResultContainer clear() {
            this.queryLength = 0;
            clearParentContainer();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            int i = this.queryLength;
            if (i != 0) {
                codedOutputByteBufferNano.writeInt32(1, i);
            }
            if (this.parentContainerCase_ == 2) {
                codedOutputByteBufferNano.writeMessage(2, (MessageNano) this.parentContainer_);
            }
            if (this.parentContainerCase_ == 3) {
                codedOutputByteBufferNano.writeMessage(3, (MessageNano) this.parentContainer_);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        @Override // com.google.protobuf.nano.MessageNano
        protected int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i = this.queryLength;
            if (i != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i);
            }
            if (this.parentContainerCase_ == 2) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, (MessageNano) this.parentContainer_);
            }
            return this.parentContainerCase_ == 3 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, (MessageNano) this.parentContainer_) : iComputeSerializedSize;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public SearchResultContainer mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.queryLength = codedInputByteBufferNano.readInt32();
                } else if (tag == 18) {
                    if (this.parentContainerCase_ != 2) {
                        this.parentContainer_ = new WorkspaceContainer();
                    }
                    codedInputByteBufferNano.readMessage((MessageNano) this.parentContainer_);
                    this.parentContainerCase_ = 2;
                } else if (tag != 26) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                } else {
                    if (this.parentContainerCase_ != 3) {
                        this.parentContainer_ = new AllAppsContainer();
                    }
                    codedInputByteBufferNano.readMessage((MessageNano) this.parentContainer_);
                    this.parentContainerCase_ = 3;
                }
            }
        }

        public static SearchResultContainer parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (SearchResultContainer) MessageNano.mergeFrom(new SearchResultContainer(), bArr);
        }

        public static SearchResultContainer parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new SearchResultContainer().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class ShortcutsContainer extends MessageNano {
        private static volatile ShortcutsContainer[] _emptyArray;

        public static ShortcutsContainer[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new ShortcutsContainer[0];
                    }
                }
            }
            return _emptyArray;
        }

        public ShortcutsContainer() {
            clear();
        }

        public ShortcutsContainer clear() {
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public ShortcutsContainer mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            int tag;
            do {
                tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    break;
                }
            } while (WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag));
            return this;
        }

        public static ShortcutsContainer parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (ShortcutsContainer) MessageNano.mergeFrom(new ShortcutsContainer(), bArr);
        }

        public static ShortcutsContainer parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new ShortcutsContainer().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class SettingsContainer extends MessageNano {
        private static volatile SettingsContainer[] _emptyArray;

        public static SettingsContainer[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new SettingsContainer[0];
                    }
                }
            }
            return _emptyArray;
        }

        public SettingsContainer() {
            clear();
        }

        public SettingsContainer clear() {
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public SettingsContainer mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            int tag;
            do {
                tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    break;
                }
            } while (WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag));
            return this;
        }

        public static SettingsContainer parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (SettingsContainer) MessageNano.mergeFrom(new SettingsContainer(), bArr);
        }

        public static SettingsContainer parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new SettingsContainer().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class TaskSwitcherContainer extends MessageNano {
        private static volatile TaskSwitcherContainer[] _emptyArray;

        public static TaskSwitcherContainer[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new TaskSwitcherContainer[0];
                    }
                }
            }
            return _emptyArray;
        }

        public TaskSwitcherContainer() {
            clear();
        }

        public TaskSwitcherContainer clear() {
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public TaskSwitcherContainer mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            int tag;
            do {
                tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    break;
                }
            } while (WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag));
            return this;
        }

        public static TaskSwitcherContainer parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (TaskSwitcherContainer) MessageNano.mergeFrom(new TaskSwitcherContainer(), bArr);
        }

        public static TaskSwitcherContainer parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new TaskSwitcherContainer().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class TaskForegroundContainer extends MessageNano {
        private static volatile TaskForegroundContainer[] _emptyArray;

        public static TaskForegroundContainer[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new TaskForegroundContainer[0];
                    }
                }
            }
            return _emptyArray;
        }

        public TaskForegroundContainer() {
            clear();
        }

        public TaskForegroundContainer clear() {
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public TaskForegroundContainer mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            int tag;
            do {
                tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    break;
                }
            } while (WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag));
            return this;
        }

        public static TaskForegroundContainer parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (TaskForegroundContainer) MessageNano.mergeFrom(new TaskForegroundContainer(), bArr);
        }

        public static TaskForegroundContainer parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new TaskForegroundContainer().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class Application extends MessageNano {
        private static volatile Application[] _emptyArray;
        public String componentName;
        public String packageName;

        public static Application[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new Application[0];
                    }
                }
            }
            return _emptyArray;
        }

        public Application() {
            clear();
        }

        public Application clear() {
            this.packageName = "";
            this.componentName = "";
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!this.packageName.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.packageName);
            }
            if (!this.componentName.equals("")) {
                codedOutputByteBufferNano.writeString(2, this.componentName);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        @Override // com.google.protobuf.nano.MessageNano
        protected int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            if (!this.packageName.equals("")) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.packageName);
            }
            return !this.componentName.equals("") ? iComputeSerializedSize + CodedOutputByteBufferNano.computeStringSize(2, this.componentName) : iComputeSerializedSize;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public Application mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 10) {
                    this.packageName = codedInputByteBufferNano.readString();
                } else if (tag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                } else {
                    this.componentName = codedInputByteBufferNano.readString();
                }
            }
        }

        public static Application parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (Application) MessageNano.mergeFrom(new Application(), bArr);
        }

        public static Application parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new Application().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class Shortcut extends MessageNano {
        private static volatile Shortcut[] _emptyArray;
        public String shortcutName;

        public static Shortcut[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new Shortcut[0];
                    }
                }
            }
            return _emptyArray;
        }

        public Shortcut() {
            clear();
        }

        public Shortcut clear() {
            this.shortcutName = "";
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!this.shortcutName.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.shortcutName);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        @Override // com.google.protobuf.nano.MessageNano
        protected int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            return !this.shortcutName.equals("") ? iComputeSerializedSize + CodedOutputByteBufferNano.computeStringSize(1, this.shortcutName) : iComputeSerializedSize;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public Shortcut mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag != 10) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                } else {
                    this.shortcutName = codedInputByteBufferNano.readString();
                }
            }
        }

        public static Shortcut parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (Shortcut) MessageNano.mergeFrom(new Shortcut(), bArr);
        }

        public static Shortcut parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new Shortcut().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class Widget extends MessageNano {
        private static volatile Widget[] _emptyArray;
        public int appWidgetId;
        public String componentName;
        public String packageName;
        public int spanX;
        public int spanY;

        public static Widget[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new Widget[0];
                    }
                }
            }
            return _emptyArray;
        }

        public Widget() {
            clear();
        }

        public Widget clear() {
            this.spanX = 1;
            this.spanY = 1;
            this.appWidgetId = 0;
            this.packageName = "";
            this.componentName = "";
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            int i = this.spanX;
            if (i != 1) {
                codedOutputByteBufferNano.writeInt32(1, i);
            }
            int i2 = this.spanY;
            if (i2 != 1) {
                codedOutputByteBufferNano.writeInt32(2, i2);
            }
            int i3 = this.appWidgetId;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i3);
            }
            if (!this.packageName.equals("")) {
                codedOutputByteBufferNano.writeString(4, this.packageName);
            }
            if (!this.componentName.equals("")) {
                codedOutputByteBufferNano.writeString(5, this.componentName);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        @Override // com.google.protobuf.nano.MessageNano
        protected int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i = this.spanX;
            if (i != 1) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i);
            }
            int i2 = this.spanY;
            if (i2 != 1) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i2);
            }
            int i3 = this.appWidgetId;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i3);
            }
            if (!this.packageName.equals("")) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(4, this.packageName);
            }
            return !this.componentName.equals("") ? iComputeSerializedSize + CodedOutputByteBufferNano.computeStringSize(5, this.componentName) : iComputeSerializedSize;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public Widget mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.spanX = codedInputByteBufferNano.readInt32();
                } else if (tag == 16) {
                    this.spanY = codedInputByteBufferNano.readInt32();
                } else if (tag == 24) {
                    this.appWidgetId = codedInputByteBufferNano.readInt32();
                } else if (tag == 34) {
                    this.packageName = codedInputByteBufferNano.readString();
                } else if (tag != 42) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                } else {
                    this.componentName = codedInputByteBufferNano.readString();
                }
            }
        }

        public static Widget parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (Widget) MessageNano.mergeFrom(new Widget(), bArr);
        }

        public static Widget parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new Widget().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class Task extends MessageNano {
        private static volatile Task[] _emptyArray;
        public String componentName;
        public int index;
        public String packageName;

        public static Task[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new Task[0];
                    }
                }
            }
            return _emptyArray;
        }

        public Task() {
            clear();
        }

        public Task clear() {
            this.packageName = "";
            this.componentName = "";
            this.index = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!this.packageName.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.packageName);
            }
            if (!this.componentName.equals("")) {
                codedOutputByteBufferNano.writeString(2, this.componentName);
            }
            int i = this.index;
            if (i != 0) {
                codedOutputByteBufferNano.writeInt32(3, i);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        @Override // com.google.protobuf.nano.MessageNano
        protected int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            if (!this.packageName.equals("")) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.packageName);
            }
            if (!this.componentName.equals("")) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.componentName);
            }
            int i = this.index;
            return i != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, i) : iComputeSerializedSize;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public Task mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 10) {
                    this.packageName = codedInputByteBufferNano.readString();
                } else if (tag == 18) {
                    this.componentName = codedInputByteBufferNano.readString();
                } else if (tag != 24) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                } else {
                    this.index = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static Task parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (Task) MessageNano.mergeFrom(new Task(), bArr);
        }

        public static Task parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new Task().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class FolderIcon extends MessageNano {
        private static volatile FolderIcon[] _emptyArray;
        public int cardinality;
        public int fromLabelState;
        public String labelInfo;
        public int toLabelState;

        public static FolderIcon[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new FolderIcon[0];
                    }
                }
            }
            return _emptyArray;
        }

        public FolderIcon() {
            clear();
        }

        public FolderIcon clear() {
            this.cardinality = 0;
            this.fromLabelState = 0;
            this.toLabelState = 0;
            this.labelInfo = "";
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            int i = this.cardinality;
            if (i != 0) {
                codedOutputByteBufferNano.writeInt32(1, i);
            }
            int i2 = this.fromLabelState;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i2);
            }
            int i3 = this.toLabelState;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(3, i3);
            }
            if (!this.labelInfo.equals("")) {
                codedOutputByteBufferNano.writeString(4, this.labelInfo);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        @Override // com.google.protobuf.nano.MessageNano
        protected int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i = this.cardinality;
            if (i != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i);
            }
            int i2 = this.fromLabelState;
            if (i2 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i2);
            }
            int i3 = this.toLabelState;
            if (i3 != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i3);
            }
            return !this.labelInfo.equals("") ? iComputeSerializedSize + CodedOutputByteBufferNano.computeStringSize(4, this.labelInfo) : iComputeSerializedSize;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public FolderIcon mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.cardinality = codedInputByteBufferNano.readInt32();
                } else if (tag == 16) {
                    int int32 = codedInputByteBufferNano.readInt32();
                    if (int32 == 0 || int32 == 1 || int32 == 2 || int32 == 3) {
                        this.fromLabelState = int32;
                    }
                } else if (tag == 24) {
                    int int33 = codedInputByteBufferNano.readInt32();
                    switch (int33) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                            this.toLabelState = int33;
                            break;
                    }
                } else if (tag != 34) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                } else {
                    this.labelInfo = codedInputByteBufferNano.readString();
                }
            }
        }

        public static FolderIcon parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (FolderIcon) MessageNano.mergeFrom(new FolderIcon(), bArr);
        }

        public static FolderIcon parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new FolderIcon().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class WorkspaceContainer extends MessageNano {
        private static volatile WorkspaceContainer[] _emptyArray;
        public int gridX;
        public int gridY;
        public int pageIndex;

        public static WorkspaceContainer[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new WorkspaceContainer[0];
                    }
                }
            }
            return _emptyArray;
        }

        public WorkspaceContainer() {
            clear();
        }

        public WorkspaceContainer clear() {
            this.pageIndex = -2;
            this.gridX = -1;
            this.gridY = -1;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            int i = this.pageIndex;
            if (i != -2) {
                codedOutputByteBufferNano.writeInt32(1, i);
            }
            int i2 = this.gridX;
            if (i2 != -1) {
                codedOutputByteBufferNano.writeInt32(2, i2);
            }
            int i3 = this.gridY;
            if (i3 != -1) {
                codedOutputByteBufferNano.writeInt32(3, i3);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        @Override // com.google.protobuf.nano.MessageNano
        protected int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i = this.pageIndex;
            if (i != -2) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i);
            }
            int i2 = this.gridX;
            if (i2 != -1) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i2);
            }
            int i3 = this.gridY;
            return i3 != -1 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, i3) : iComputeSerializedSize;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public WorkspaceContainer mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.pageIndex = codedInputByteBufferNano.readInt32();
                } else if (tag == 16) {
                    this.gridX = codedInputByteBufferNano.readInt32();
                } else if (tag != 24) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                } else {
                    this.gridY = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static WorkspaceContainer parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (WorkspaceContainer) MessageNano.mergeFrom(new WorkspaceContainer(), bArr);
        }

        public static WorkspaceContainer parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new WorkspaceContainer().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class HotseatContainer extends MessageNano {
        private static volatile HotseatContainer[] _emptyArray;
        public int index;

        public static HotseatContainer[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new HotseatContainer[0];
                    }
                }
            }
            return _emptyArray;
        }

        public HotseatContainer() {
            clear();
        }

        public HotseatContainer clear() {
            this.index = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            int i = this.index;
            if (i != 0) {
                codedOutputByteBufferNano.writeInt32(1, i);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        @Override // com.google.protobuf.nano.MessageNano
        protected int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i = this.index;
            return i != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(1, i) : iComputeSerializedSize;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public HotseatContainer mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag != 8) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                } else {
                    this.index = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static HotseatContainer parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (HotseatContainer) MessageNano.mergeFrom(new HotseatContainer(), bArr);
        }

        public static HotseatContainer parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new HotseatContainer().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class PredictedHotseatContainer extends MessageNano {
        private static volatile PredictedHotseatContainer[] _emptyArray;
        public int cardinality;
        public int index;

        public static PredictedHotseatContainer[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new PredictedHotseatContainer[0];
                    }
                }
            }
            return _emptyArray;
        }

        public PredictedHotseatContainer() {
            clear();
        }

        public PredictedHotseatContainer clear() {
            this.index = 0;
            this.cardinality = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            int i = this.index;
            if (i != 0) {
                codedOutputByteBufferNano.writeInt32(1, i);
            }
            int i2 = this.cardinality;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeInt32(2, i2);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        @Override // com.google.protobuf.nano.MessageNano
        protected int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i = this.index;
            if (i != 0) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i);
            }
            int i2 = this.cardinality;
            return i2 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i2) : iComputeSerializedSize;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public PredictedHotseatContainer mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.index = codedInputByteBufferNano.readInt32();
                } else if (tag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                } else {
                    this.cardinality = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static PredictedHotseatContainer parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (PredictedHotseatContainer) MessageNano.mergeFrom(new PredictedHotseatContainer(), bArr);
        }

        public static PredictedHotseatContainer parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new PredictedHotseatContainer().mergeFrom(codedInputByteBufferNano);
        }
    }

    public static final class FolderContainer extends MessageNano {
        public static final int HOTSEAT_FIELD_NUMBER = 5;
        public static final int WORKSPACE_FIELD_NUMBER = 4;
        private static volatile FolderContainer[] _emptyArray;
        public int gridX;
        public int gridY;
        public int pageIndex;
        private int parentContainerCase_ = 0;
        private Object parentContainer_;

        public FolderContainer clearParentContainer() {
            this.parentContainerCase_ = 0;
            this.parentContainer_ = null;
            return this;
        }

        public int getParentContainerCase() {
            return this.parentContainerCase_;
        }

        public boolean hasHotseat() {
            return this.parentContainerCase_ == 5;
        }

        public boolean hasWorkspace() {
            return this.parentContainerCase_ == 4;
        }

        public static FolderContainer[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new FolderContainer[0];
                    }
                }
            }
            return _emptyArray;
        }

        public WorkspaceContainer getWorkspace() {
            if (this.parentContainerCase_ == 4) {
                return (WorkspaceContainer) this.parentContainer_;
            }
            return null;
        }

        public FolderContainer setWorkspace(WorkspaceContainer workspaceContainer) {
            workspaceContainer.getClass();
            this.parentContainerCase_ = 4;
            this.parentContainer_ = workspaceContainer;
            return this;
        }

        public HotseatContainer getHotseat() {
            if (this.parentContainerCase_ == 5) {
                return (HotseatContainer) this.parentContainer_;
            }
            return null;
        }

        public FolderContainer setHotseat(HotseatContainer hotseatContainer) {
            hotseatContainer.getClass();
            this.parentContainerCase_ = 5;
            this.parentContainer_ = hotseatContainer;
            return this;
        }

        public FolderContainer() {
            clear();
        }

        public FolderContainer clear() {
            this.pageIndex = -1;
            this.gridX = -1;
            this.gridY = -1;
            clearParentContainer();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            int i = this.pageIndex;
            if (i != -1) {
                codedOutputByteBufferNano.writeInt32(1, i);
            }
            int i2 = this.gridX;
            if (i2 != -1) {
                codedOutputByteBufferNano.writeInt32(2, i2);
            }
            int i3 = this.gridY;
            if (i3 != -1) {
                codedOutputByteBufferNano.writeInt32(3, i3);
            }
            if (this.parentContainerCase_ == 4) {
                codedOutputByteBufferNano.writeMessage(4, (MessageNano) this.parentContainer_);
            }
            if (this.parentContainerCase_ == 5) {
                codedOutputByteBufferNano.writeMessage(5, (MessageNano) this.parentContainer_);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        @Override // com.google.protobuf.nano.MessageNano
        protected int computeSerializedSize() {
            int iComputeSerializedSize = super.computeSerializedSize();
            int i = this.pageIndex;
            if (i != -1) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i);
            }
            int i2 = this.gridX;
            if (i2 != -1) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, i2);
            }
            int i3 = this.gridY;
            if (i3 != -1) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i3);
            }
            if (this.parentContainerCase_ == 4) {
                iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, (MessageNano) this.parentContainer_);
            }
            return this.parentContainerCase_ == 5 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(5, (MessageNano) this.parentContainer_) : iComputeSerializedSize;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public FolderContainer mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int tag = codedInputByteBufferNano.readTag();
                if (tag == 0) {
                    return this;
                }
                if (tag == 8) {
                    this.pageIndex = codedInputByteBufferNano.readInt32();
                } else if (tag == 16) {
                    this.gridX = codedInputByteBufferNano.readInt32();
                } else if (tag == 24) {
                    this.gridY = codedInputByteBufferNano.readInt32();
                } else if (tag == 34) {
                    if (this.parentContainerCase_ != 4) {
                        this.parentContainer_ = new WorkspaceContainer();
                    }
                    codedInputByteBufferNano.readMessage((MessageNano) this.parentContainer_);
                    this.parentContainerCase_ = 4;
                } else if (tag != 42) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                } else {
                    if (this.parentContainerCase_ != 5) {
                        this.parentContainer_ = new HotseatContainer();
                    }
                    codedInputByteBufferNano.readMessage((MessageNano) this.parentContainer_);
                    this.parentContainerCase_ = 5;
                }
            }
        }

        public static FolderContainer parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (FolderContainer) MessageNano.mergeFrom(new FolderContainer(), bArr);
        }

        public static FolderContainer parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new FolderContainer().mergeFrom(codedInputByteBufferNano);
        }
    }
}
