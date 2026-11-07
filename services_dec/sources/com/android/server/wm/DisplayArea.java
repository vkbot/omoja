package com.android.server.wm;

import android.content.res.Configuration;
import android.graphics.Rect;
import android.util.proto.ProtoOutputStream;
import android.view.SurfaceControl;
import android.window.DisplayAreaInfo;
import android.window.IDisplayAreaOrganizer;
import com.android.internal.util.Preconditions;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import com.android.server.wm.WindowContainer;
import java.util.Comparator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;

/* JADX INFO: loaded from: classes2.dex */
public class DisplayArea<T extends WindowContainer> extends WindowContainer<T> {
    final int mFeatureId;
    private final String mName;
    IDisplayAreaOrganizer mOrganizer;
    private final DisplayAreaOrganizerController mOrganizerController;
    private final Configuration mTmpConfiguration;
    protected final Type mType;

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
    public /* bridge */ /* synthetic */ void commitPendingTransaction() {
        super.commitPendingTransaction();
    }

    @Override // com.android.server.wm.WindowContainer
    public /* bridge */ /* synthetic */ int compareTo(WindowContainer windowContainer) {
        return super.compareTo(windowContainer);
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
    public /* bridge */ /* synthetic */ SurfaceControl getAnimationLeashParent() {
        return super.getAnimationLeashParent();
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceFreezer.Freezable
    public /* bridge */ /* synthetic */ SurfaceControl getFreezeSnapshotTarget() {
        return super.getFreezeSnapshotTarget();
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
    public /* bridge */ /* synthetic */ SurfaceControl getParentSurfaceControl() {
        return super.getParentSurfaceControl();
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
    public /* bridge */ /* synthetic */ SurfaceControl.Transaction getPendingTransaction() {
        return super.getPendingTransaction();
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
    public /* bridge */ /* synthetic */ SurfaceControl getSurfaceControl() {
        return super.getSurfaceControl();
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
    public /* bridge */ /* synthetic */ int getSurfaceHeight() {
        return super.getSurfaceHeight();
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
    public /* bridge */ /* synthetic */ int getSurfaceWidth() {
        return super.getSurfaceWidth();
    }

    @Override // com.android.server.wm.WindowContainer
    public /* bridge */ /* synthetic */ SurfaceControl.Transaction getSyncTransaction() {
        return super.getSyncTransaction();
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
    public /* bridge */ /* synthetic */ SurfaceControl.Builder makeAnimationLeash() {
        return super.makeAnimationLeash();
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
    public /* bridge */ /* synthetic */ void onAnimationLeashCreated(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        super.onAnimationLeashCreated(transaction, surfaceControl);
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
    public /* bridge */ /* synthetic */ void onAnimationLeashLost(SurfaceControl.Transaction transaction) {
        super.onAnimationLeashLost(transaction);
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public /* bridge */ /* synthetic */ void onRequestedOverrideConfigurationChanged(Configuration configuration) {
        super.onRequestedOverrideConfigurationChanged(configuration);
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.BLASTSyncEngine.TransactionReadyListener
    public /* bridge */ /* synthetic */ void onTransactionReady(int i, Set set) {
        super.onTransactionReady(i, set);
    }

    DisplayArea(WindowManagerService wms, Type type, String name) {
        this(wms, type, name, -1);
    }

    DisplayArea(WindowManagerService wms, Type type, String name, int featureId) {
        super(wms);
        this.mTmpConfiguration = new Configuration();
        this.mOrientation = -2;
        this.mType = type;
        this.mName = name;
        this.mFeatureId = featureId;
        this.mRemoteToken = new WindowContainer.RemoteToken(this);
        this.mOrganizerController = wms.mAtmService.mWindowOrganizerController.mDisplayAreaOrganizerController;
    }

    @Override // com.android.server.wm.WindowContainer
    void onChildPositionChanged(WindowContainer child) {
        super.onChildPositionChanged(child);
        Type.checkChild(this.mType, Type.typeOf(child));
        if (child instanceof ActivityStack) {
            return;
        }
        for (int i = 1; i < getChildCount(); i++) {
            WindowContainer top = getChildAt(i - 1);
            WindowContainer bottom = getChildAt(i);
            if (child == top || child == bottom) {
                Type.checkSiblings(Type.typeOf(top), Type.typeOf(bottom));
            }
        }
    }

    @Override // com.android.server.wm.WindowContainer
    boolean needsZBoost() {
        return false;
    }

    @Override // com.android.server.wm.WindowContainer
    boolean fillsParent() {
        return true;
    }

    @Override // com.android.server.wm.ConfigurationContainer
    String getName() {
        return this.mName;
    }

    public String toString() {
        return this.mName + "@" + System.identityHashCode(this);
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public final void dumpDebug(ProtoOutputStream proto, long fieldId, int logLevel) {
        long token = proto.start(fieldId);
        super.dumpDebug(proto, 1146756268033L, logLevel);
        proto.write(1138166333442L, this.mName);
        proto.end(token);
    }

    @Override // com.android.server.wm.WindowContainer
    long getProtoFieldId() {
        return 1146756268036L;
    }

    @Override // com.android.server.wm.WindowContainer
    void forAllDisplayAreas(Consumer<DisplayArea> callback) {
        super.forAllDisplayAreas(callback);
        callback.accept(this);
    }

    void setOrganizer(IDisplayAreaOrganizer organizer) {
        if (this.mOrganizer == organizer) {
            return;
        }
        IDisplayAreaOrganizer lastOrganizer = this.mOrganizer;
        this.mOrganizer = organizer;
        sendDisplayAreaVanished(lastOrganizer);
        sendDisplayAreaAppeared();
    }

    void sendDisplayAreaAppeared() {
        IDisplayAreaOrganizer iDisplayAreaOrganizer = this.mOrganizer;
        if (iDisplayAreaOrganizer == null) {
            return;
        }
        this.mOrganizerController.onDisplayAreaAppeared(iDisplayAreaOrganizer, this);
    }

    void sendDisplayAreaVanished(IDisplayAreaOrganizer organizer) {
        if (organizer == null) {
            return;
        }
        migrateToNewSurfaceControl();
        this.mOrganizerController.onDisplayAreaVanished(organizer, this);
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public void onConfigurationChanged(Configuration newParentConfig) {
        this.mTmpConfiguration.setTo(getConfiguration());
        super.onConfigurationChanged(newParentConfig);
        if (this.mOrganizer != null && getConfiguration().diff(this.mTmpConfiguration) != 0) {
            this.mOrganizerController.onDisplayAreaInfoChanged(this.mOrganizer, this);
        }
    }

    @Override // com.android.server.wm.WindowContainer
    boolean isOrganized() {
        return this.mOrganizer != null;
    }

    DisplayAreaInfo getDisplayAreaInfo() {
        DisplayAreaInfo info = new DisplayAreaInfo(this.mRemoteToken.toWindowContainerToken(), getDisplayContent().getDisplayId(), this.mFeatureId);
        info.configuration.setTo(getConfiguration());
        return info;
    }

    public static class Tokens extends DisplayArea<WindowToken> {
        private final Predicate<WindowState> mGetOrientingWindow;
        int mLastKeyguardForcedOrientation;
        private final Comparator<WindowToken> mWindowComparator;

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ void commitPendingTransaction() {
            super.commitPendingTransaction();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer
        public /* bridge */ /* synthetic */ int compareTo(WindowContainer windowContainer) {
            return super.compareTo(windowContainer);
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ SurfaceControl getAnimationLeashParent() {
            return super.getAnimationLeashParent();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceFreezer.Freezable
        public /* bridge */ /* synthetic */ SurfaceControl getFreezeSnapshotTarget() {
            return super.getFreezeSnapshotTarget();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ SurfaceControl getParentSurfaceControl() {
            return super.getParentSurfaceControl();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ SurfaceControl.Transaction getPendingTransaction() {
            return super.getPendingTransaction();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ SurfaceControl getSurfaceControl() {
            return super.getSurfaceControl();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ int getSurfaceHeight() {
            return super.getSurfaceHeight();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ int getSurfaceWidth() {
            return super.getSurfaceWidth();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer
        public /* bridge */ /* synthetic */ SurfaceControl.Transaction getSyncTransaction() {
            return super.getSyncTransaction();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ SurfaceControl.Builder makeAnimationLeash() {
            return super.makeAnimationLeash();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ void onAnimationLeashCreated(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
            super.onAnimationLeashCreated(transaction, surfaceControl);
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ void onAnimationLeashLost(SurfaceControl.Transaction transaction) {
            super.onAnimationLeashLost(transaction);
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
        public /* bridge */ /* synthetic */ void onRequestedOverrideConfigurationChanged(Configuration configuration) {
            super.onRequestedOverrideConfigurationChanged(configuration);
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.BLASTSyncEngine.TransactionReadyListener
        public /* bridge */ /* synthetic */ void onTransactionReady(int i, Set set) {
            super.onTransactionReady(i, set);
        }

        public /* synthetic */ boolean lambda$new$0$DisplayArea$Tokens(WindowState w) {
            if (!w.isVisible() || !w.mLegacyPolicyVisibilityAfterAnim) {
                return false;
            }
            WindowManagerPolicy policy = this.mWmService.mPolicy;
            if (policy.isKeyguardHostWindow(w.mAttrs)) {
                if (this.mWmService.mKeyguardGoingAway) {
                    return false;
                }
                boolean isUnoccluding = this.mDisplayContent.mAppTransition.getAppTransition() == 23 && this.mDisplayContent.mUnknownAppVisibilityController.allResolved();
                if (policy.isKeyguardShowingAndNotOccluded() || isUnoccluding) {
                    return true;
                }
            }
            int req = w.mAttrs.screenOrientation;
            return (req == -1 || req == 3 || req == -2) ? false : true;
        }

        Tokens(WindowManagerService wms, Type type, String name) {
            super(wms, type, name, 2);
            this.mLastKeyguardForcedOrientation = -1;
            this.mWindowComparator = Comparator.comparingInt(new ToIntFunction() { // from class: com.android.server.wm.-$$Lambda$CD-g9zNm970tG9hCSQ-1BiBOrwY
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    return ((WindowToken) obj).getWindowLayerFromType();
                }
            });
            this.mGetOrientingWindow = new Predicate() { // from class: com.android.server.wm.-$$Lambda$DisplayArea$Tokens$m3rhEbIWQl888W_2uGBIkkXLdlA
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return this.f$0.lambda$new$0$DisplayArea$Tokens((WindowState) obj);
                }
            };
        }

        void addChild(WindowToken token) {
            addChild(token, this.mWindowComparator);
        }

        @Override // com.android.server.wm.WindowContainer
        int getOrientation(int candidate) {
            this.mLastOrientationSource = null;
            WindowState win = getWindow(this.mGetOrientingWindow);
            if (win == null) {
                return candidate;
            }
            int req = win.mAttrs.screenOrientation;
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                String protoLogParam0 = String.valueOf(win);
                long protoLogParam1 = req;
                long protoLogParam2 = this.mDisplayContent.getDisplayId();
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 1674747211, 20, null, protoLogParam0, Long.valueOf(protoLogParam1), Long.valueOf(protoLogParam2));
            }
            if (this.mWmService.mPolicy.isKeyguardHostWindow(win.mAttrs)) {
                if (req != -2 && req != -1) {
                    this.mLastKeyguardForcedOrientation = req;
                } else {
                    req = this.mLastKeyguardForcedOrientation;
                }
            }
            this.mLastOrientationSource = win;
            return req;
        }
    }

    @Override // com.android.server.wm.WindowContainer
    DisplayArea getDisplayArea() {
        return this;
    }

    public static class Root extends DisplayArea<DisplayArea> {
        private final Dimmer mDimmer;
        private final Rect mTmpDimBoundsRect;

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ void commitPendingTransaction() {
            super.commitPendingTransaction();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer
        public /* bridge */ /* synthetic */ int compareTo(WindowContainer windowContainer) {
            return super.compareTo(windowContainer);
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ SurfaceControl getAnimationLeashParent() {
            return super.getAnimationLeashParent();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceFreezer.Freezable
        public /* bridge */ /* synthetic */ SurfaceControl getFreezeSnapshotTarget() {
            return super.getFreezeSnapshotTarget();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ SurfaceControl getParentSurfaceControl() {
            return super.getParentSurfaceControl();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ SurfaceControl.Transaction getPendingTransaction() {
            return super.getPendingTransaction();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ SurfaceControl getSurfaceControl() {
            return super.getSurfaceControl();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ int getSurfaceHeight() {
            return super.getSurfaceHeight();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ int getSurfaceWidth() {
            return super.getSurfaceWidth();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer
        public /* bridge */ /* synthetic */ SurfaceControl.Transaction getSyncTransaction() {
            return super.getSyncTransaction();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ SurfaceControl.Builder makeAnimationLeash() {
            return super.makeAnimationLeash();
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ void onAnimationLeashCreated(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
            super.onAnimationLeashCreated(transaction, surfaceControl);
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
        public /* bridge */ /* synthetic */ void onAnimationLeashLost(SurfaceControl.Transaction transaction) {
            super.onAnimationLeashLost(transaction);
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
        public /* bridge */ /* synthetic */ void onRequestedOverrideConfigurationChanged(Configuration configuration) {
            super.onRequestedOverrideConfigurationChanged(configuration);
        }

        @Override // com.android.server.wm.DisplayArea, com.android.server.wm.WindowContainer, com.android.server.wm.BLASTSyncEngine.TransactionReadyListener
        public /* bridge */ /* synthetic */ void onTransactionReady(int i, Set set) {
            super.onTransactionReady(i, set);
        }

        Root(WindowManagerService wms) {
            super(wms, Type.ANY, "DisplayArea.Root", 0);
            this.mDimmer = new Dimmer(this);
            this.mTmpDimBoundsRect = new Rect();
        }

        @Override // com.android.server.wm.WindowContainer
        Dimmer getDimmer() {
            return this.mDimmer;
        }

        @Override // com.android.server.wm.WindowContainer
        void prepareSurfaces() {
            this.mDimmer.resetDimStates();
            super.prepareSurfaces();
            getBounds(this.mTmpDimBoundsRect);
            if (forAllTasks(new Function() { // from class: com.android.server.wm.-$$Lambda$DisplayArea$Root$FFTAJJ7j74rtyQzx7LluB65mKYM
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Boolean.valueOf(!((Task) obj).canAffectSystemUiFlags());
                }
            })) {
                this.mDimmer.resetDimStates();
            }
            if (this.mDimmer.updateDims(getPendingTransaction(), this.mTmpDimBoundsRect)) {
                scheduleAnimation();
            }
        }
    }

    enum Type {
        ABOVE_TASKS,
        BELOW_TASKS,
        ANY;

        static void checkSiblings(Type bottom, Type top) {
            Type type = BELOW_TASKS;
            Preconditions.checkState(bottom == type || top != type, bottom + " must be above BELOW_TASKS");
            Type type2 = ABOVE_TASKS;
            Preconditions.checkState(bottom != type2 || top == type2, top + " must be below ABOVE_TASKS");
        }

        static void checkChild(Type parent, Type child) {
            int i = AnonymousClass1.$SwitchMap$com$android$server$wm$DisplayArea$Type[parent.ordinal()];
            if (i == 1) {
                Preconditions.checkState(child == ABOVE_TASKS, "ABOVE_TASKS can only contain ABOVE_TASKS");
            } else if (i == 2) {
                Preconditions.checkState(child == BELOW_TASKS, "BELOW_TASKS can only contain BELOW_TASKS");
            }
        }

        static Type typeOf(WindowContainer c) {
            if (c instanceof DisplayArea) {
                return ((DisplayArea) c).mType;
            }
            if ((c instanceof WindowToken) && !(c instanceof ActivityRecord)) {
                return typeOf((WindowToken) c);
            }
            if (c instanceof ActivityStack) {
                return ANY;
            }
            throw new IllegalArgumentException("Unknown container: " + c);
        }

        private static Type typeOf(WindowToken c) {
            return c.getWindowLayerFromType() < 2 ? BELOW_TASKS : ABOVE_TASKS;
        }
    }

    /* JADX INFO: renamed from: com.android.server.wm.DisplayArea$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$server$wm$DisplayArea$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$com$android$server$wm$DisplayArea$Type = iArr;
            try {
                iArr[Type.ABOVE_TASKS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$android$server$wm$DisplayArea$Type[Type.BELOW_TASKS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }
}
