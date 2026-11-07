package com.android.server.wm;

import android.app.IWindowToken;
import android.app.servertransaction.FixedRotationAdjustmentsItem;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Debug;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Slog;
import android.util.SparseArray;
import android.util.proto.ProtoOutputStream;
import android.view.DisplayAdjustments;
import android.view.DisplayInfo;
import android.view.InsetsState;
import android.view.SurfaceControl;
import android.view.WindowManager;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
class WindowToken extends WindowContainer<WindowState> {
    private static final String TAG = "WindowManager";
    boolean hasVisible;
    private boolean mBinderDied;
    private DeathRecipient mDeathRecipient;
    private FixedRotationTransformState mFixedRotationTransformState;
    final boolean mFromClientToken;
    private Configuration mLastReportedConfig;
    private int mLastReportedDisplay;
    final boolean mOwnerCanManageAppTokens;
    private final int mOwnerUid;
    boolean mPersistOnEmpty;
    final boolean mRoundedCornerOverlay;
    private final Comparator<WindowState> mWindowComparator;
    boolean paused;
    String stringName;
    final IBinder token;
    boolean waitingToShow;
    final int windowType;

    private static class FixedRotationTransformState {
        final DisplayFrames mDisplayFrames;
        final DisplayInfo mDisplayInfo;
        final Configuration mRotatedOverrideConfiguration;
        final SeamlessRotator mRotator;
        final InsetsState mInsetsState = new InsetsState();
        final ArrayList<WindowToken> mAssociatedTokens = new ArrayList<>(3);
        final ArrayList<WindowContainer<?>> mRotatedContainers = new ArrayList<>(3);
        final SparseArray<Rect> mBarContentFrames = new SparseArray<>();
        boolean mIsTransforming = true;

        FixedRotationTransformState(DisplayInfo rotatedDisplayInfo, DisplayFrames rotatedDisplayFrames, Configuration rotatedConfig, int currentRotation) {
            this.mDisplayInfo = rotatedDisplayInfo;
            this.mDisplayFrames = rotatedDisplayFrames;
            this.mRotatedOverrideConfiguration = rotatedConfig;
            this.mRotator = new SeamlessRotator(rotatedDisplayInfo.rotation, currentRotation, rotatedDisplayInfo, true);
        }

        void transform(WindowContainer<?> container) {
            this.mRotator.unrotate(container.getPendingTransaction(), container);
            if (!this.mRotatedContainers.contains(container)) {
                this.mRotatedContainers.add(container);
            }
        }

        void resetTransform() {
            for (int i = this.mRotatedContainers.size() - 1; i >= 0; i--) {
                WindowContainer<?> c = this.mRotatedContainers.get(i);
                if (c.getParent() != null) {
                    this.mRotator.finish(c.getPendingTransaction(), c);
                }
            }
        }

        void disassociate(WindowToken token) {
            this.mAssociatedTokens.remove(token);
            this.mRotatedContainers.remove(token);
        }
    }

    private class DeathRecipient implements IBinder.DeathRecipient {
        private boolean mHasUnlinkToDeath;

        private DeathRecipient() {
            this.mHasUnlinkToDeath = false;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (WindowToken.this.mWmService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowToken.this.mBinderDied = true;
                    WindowToken.this.removeImmediately();
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        void linkToDeath() throws RemoteException {
            WindowToken.this.token.linkToDeath(this, 0);
        }

        void unlinkToDeath() {
            if (this.mHasUnlinkToDeath) {
                return;
            }
            WindowToken.this.token.unlinkToDeath(this, 0);
            this.mHasUnlinkToDeath = true;
        }
    }

    public /* synthetic */ int lambda$new$0$WindowToken(WindowState newWindow, WindowState existingWindow) {
        if (newWindow.mToken == this) {
            if (existingWindow.mToken == this) {
                return isFirstChildWindowGreaterThanSecond(newWindow, existingWindow) ? 1 : -1;
            }
            throw new IllegalArgumentException("existingWindow=" + existingWindow + " is not a child of token=" + this);
        }
        throw new IllegalArgumentException("newWindow=" + newWindow + " is not a child of token=" + this);
    }

    WindowToken(WindowManagerService service, IBinder _token, int type, boolean persistOnEmpty, DisplayContent dc, boolean ownerCanManageAppTokens) {
        this(service, _token, type, persistOnEmpty, dc, ownerCanManageAppTokens, false);
    }

    WindowToken(WindowManagerService service, IBinder _token, int type, boolean persistOnEmpty, DisplayContent dc, boolean ownerCanManageAppTokens, boolean roundedCornerOverlay) {
        this(service, _token, type, persistOnEmpty, dc, ownerCanManageAppTokens, -1, roundedCornerOverlay, false);
    }

    WindowToken(WindowManagerService service, IBinder _token, int type, boolean persistOnEmpty, DisplayContent dc, boolean ownerCanManageAppTokens, int ownerUid, boolean roundedCornerOverlay, boolean fromClientToken) {
        super(service);
        this.paused = false;
        this.mLastReportedDisplay = -1;
        this.mBinderDied = false;
        this.mWindowComparator = new Comparator() { // from class: com.android.server.wm.-$$Lambda$WindowToken$tFLHn4S6WuSXW1gp1kvT_sp7WC0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return this.f$0.lambda$new$0$WindowToken((WindowState) obj, (WindowState) obj2);
            }
        };
        this.token = _token;
        this.windowType = type;
        this.mPersistOnEmpty = persistOnEmpty;
        this.mOwnerCanManageAppTokens = ownerCanManageAppTokens;
        this.mOwnerUid = ownerUid;
        this.mRoundedCornerOverlay = roundedCornerOverlay;
        this.mFromClientToken = fromClientToken;
        if (dc != null) {
            dc.addWindowToken(_token, this);
        }
        if (shouldReportToClient()) {
            try {
                DeathRecipient deathRecipient = new DeathRecipient();
                this.mDeathRecipient = deathRecipient;
                deathRecipient.linkToDeath();
            } catch (RemoteException e) {
                Slog.e(TAG, "Unable to add window token with type " + this.windowType + " on display " + dc.getDisplayId(), e);
                this.mDeathRecipient = null;
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void removeAllWindowsIfPossible() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState win = (WindowState) this.mChildren.get(i);
            if (ProtoLog$Cache.WM_DEBUG_WINDOW_MOVEMENT_enabled) {
                String protoLogParam0 = String.valueOf(win);
                ProtoLogImpl.w(ProtoLogGroup.WM_DEBUG_WINDOW_MOVEMENT, 913494177, 0, null, protoLogParam0);
            }
            win.removeIfPossible();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void setExiting() {
        if (isEmpty()) {
            super.removeImmediately();
            return;
        }
        this.mPersistOnEmpty = false;
        if (!isVisible()) {
            return;
        }
        int count = this.mChildren.size();
        boolean changed = false;
        boolean delayed = isAnimating(7);
        for (int i = 0; i < count; i++) {
            WindowState win = (WindowState) this.mChildren.get(i);
            changed |= win.onSetAppExiting();
        }
        ActivityRecord app = asActivityRecord();
        if (app != null) {
            app.setVisible(false);
        }
        if (changed) {
            this.mWmService.mWindowPlacerLocked.performSurfacePlacement();
            this.mWmService.updateFocusedWindowLocked(0, false);
        }
        if (delayed) {
            this.mDisplayContent.mExitingTokens.add(this);
        }
    }

    float getSizeCompatScale() {
        return this.mDisplayContent.mCompatibleScreenScale;
    }

    protected boolean isFirstChildWindowGreaterThanSecond(WindowState newWindow, WindowState existingWindow) {
        return newWindow.mBaseLayer >= existingWindow.mBaseLayer;
    }

    void addWindow(WindowState win) {
        if (ProtoLog$Cache.WM_DEBUG_FOCUS_enabled) {
            String protoLogParam0 = String.valueOf(win);
            String protoLogParam1 = String.valueOf(Debug.getCallers(5));
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_FOCUS, 1219600119, 0, null, protoLogParam0, protoLogParam1);
        }
        if (win.isChildWindow()) {
            return;
        }
        if (this.mSurfaceControl == null) {
            createSurfaceControl(true);
        }
        if (!this.mChildren.contains(win)) {
            if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
                String protoLogParam2 = String.valueOf(win);
                String protoLogParam3 = String.valueOf(this);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, 241961619, 0, null, protoLogParam2, protoLogParam3);
            }
            addChild(win, this.mWindowComparator);
            this.mWmService.mWindowsChanged = true;
        }
    }

    @Override // com.android.server.wm.WindowContainer
    void createSurfaceControl(boolean force) {
        if (!this.mFromClientToken || force) {
            super.createSurfaceControl(force);
        }
    }

    boolean isEmpty() {
        return this.mChildren.isEmpty();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    WindowState getReplacingWindow() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState win = (WindowState) this.mChildren.get(i);
            WindowState replacing = win.getReplacingWindow();
            if (replacing != null) {
                return replacing;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    boolean windowsCanBeWallpaperTarget() {
        for (int j = this.mChildren.size() - 1; j >= 0; j--) {
            WindowState w = (WindowState) this.mChildren.get(j);
            if ((w.mAttrs.flags & 1048576) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.server.wm.WindowContainer
    void removeImmediately() {
        if (this.mDisplayContent != null) {
            this.mDisplayContent.removeWindowToken(this.token);
        }
        super.removeImmediately();
        reportWindowTokenRemovedToClient();
    }

    private void reportWindowTokenRemovedToClient() {
        if (!shouldReportToClient()) {
            return;
        }
        this.mDeathRecipient.unlinkToDeath();
        IWindowToken windowTokenClient = IWindowToken.Stub.asInterface(this.token);
        try {
            windowTokenClient.onWindowTokenRemoved();
        } catch (RemoteException e) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 838570988, 0, "Could not report token removal to the window token client.", (Object[]) null);
            }
        }
    }

    @Override // com.android.server.wm.WindowContainer
    void onDisplayChanged(DisplayContent dc) {
        dc.reParentWindowToken(this);
        super.onDisplayChanged(dc);
        reportConfigToWindowTokenClient();
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public void onConfigurationChanged(Configuration newParentConfig) {
        super.onConfigurationChanged(newParentConfig);
        reportConfigToWindowTokenClient();
    }

    void reportConfigToWindowTokenClient() {
        if (!shouldReportToClient()) {
            return;
        }
        if (this.mLastReportedConfig == null) {
            this.mLastReportedConfig = new Configuration();
        }
        Configuration config = getConfiguration();
        int displayId = getDisplayContent().getDisplayId();
        if (config.diff(this.mLastReportedConfig) == 0 && displayId == this.mLastReportedDisplay) {
            return;
        }
        this.mLastReportedConfig.setTo(config);
        this.mLastReportedDisplay = displayId;
        IWindowToken windowTokenClient = IWindowToken.Stub.asInterface(this.token);
        try {
            windowTokenClient.onConfigurationChanged(config, displayId);
        } catch (RemoteException e) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -639305784, 0, "Could not report config changes to the window token client.", (Object[]) null);
            }
        }
    }

    private boolean shouldReportToClient() {
        return asActivityRecord() == null && this.mFromClientToken && !this.mBinderDied;
    }

    @Override // com.android.server.wm.WindowContainer
    void assignLayer(SurfaceControl.Transaction t, int layer) {
        if (this.windowType == 2034) {
            super.assignRelativeLayer(t, this.mDisplayContent.getDefaultTaskDisplayArea().getSplitScreenDividerAnchor(), 1);
        } else if (this.mRoundedCornerOverlay) {
            super.assignLayer(t, 1073741826);
        } else {
            super.assignLayer(t, layer);
        }
    }

    @Override // com.android.server.wm.WindowContainer
    SurfaceControl.Builder makeSurface() {
        SurfaceControl.Builder builder = super.makeSurface();
        if (this.mRoundedCornerOverlay) {
            builder.setParent(null);
        }
        return builder;
    }

    boolean hasFixedRotationTransform() {
        return this.mFixedRotationTransformState != null;
    }

    boolean hasFixedRotationTransform(WindowToken token) {
        FixedRotationTransformState fixedRotationTransformState = this.mFixedRotationTransformState;
        if (fixedRotationTransformState == null || token == null) {
            return false;
        }
        return this == token || fixedRotationTransformState == token.mFixedRotationTransformState;
    }

    boolean isFinishingFixedRotationTransform() {
        FixedRotationTransformState fixedRotationTransformState = this.mFixedRotationTransformState;
        return (fixedRotationTransformState == null || fixedRotationTransformState.mIsTransforming) ? false : true;
    }

    boolean isFixedRotationTransforming() {
        FixedRotationTransformState fixedRotationTransformState = this.mFixedRotationTransformState;
        return fixedRotationTransformState != null && fixedRotationTransformState.mIsTransforming;
    }

    DisplayInfo getFixedRotationTransformDisplayInfo() {
        if (isFixedRotationTransforming()) {
            return this.mFixedRotationTransformState.mDisplayInfo;
        }
        return null;
    }

    DisplayFrames getFixedRotationTransformDisplayFrames() {
        if (isFixedRotationTransforming()) {
            return this.mFixedRotationTransformState.mDisplayFrames;
        }
        return null;
    }

    Rect getFixedRotationTransformDisplayBounds() {
        if (isFixedRotationTransforming()) {
            return this.mFixedRotationTransformState.mRotatedOverrideConfiguration.windowConfiguration.getBounds();
        }
        return null;
    }

    Rect getFixedRotationBarContentFrame(int windowType) {
        if (isFixedRotationTransforming()) {
            return this.mFixedRotationTransformState.mBarContentFrames.get(windowType);
        }
        return null;
    }

    InsetsState getFixedRotationTransformInsetsState() {
        if (isFixedRotationTransforming()) {
            return this.mFixedRotationTransformState.mInsetsState;
        }
        return null;
    }

    void applyFixedRotationTransform(DisplayInfo info, DisplayFrames displayFrames, Configuration config) {
        FixedRotationTransformState fixedRotationTransformState = this.mFixedRotationTransformState;
        if (fixedRotationTransformState != null) {
            fixedRotationTransformState.disassociate(this);
        }
        FixedRotationTransformState fixedRotationTransformState2 = new FixedRotationTransformState(info, displayFrames, new Configuration(config), this.mDisplayContent.getRotation());
        this.mFixedRotationTransformState = fixedRotationTransformState2;
        fixedRotationTransformState2.mAssociatedTokens.add(this);
        this.mDisplayContent.getDisplayPolicy().simulateLayoutDisplay(displayFrames, this.mFixedRotationTransformState.mInsetsState, this.mFixedRotationTransformState.mBarContentFrames);
        onFixedRotationStatePrepared();
    }

    void linkFixedRotationTransform(WindowToken other) {
        FixedRotationTransformState fixedRotationTransformState;
        FixedRotationTransformState fixedRotationState = other.mFixedRotationTransformState;
        if (fixedRotationState == null || (fixedRotationTransformState = this.mFixedRotationTransformState) == fixedRotationState) {
            return;
        }
        if (fixedRotationTransformState != null) {
            fixedRotationTransformState.disassociate(this);
        }
        this.mFixedRotationTransformState = fixedRotationState;
        fixedRotationState.mAssociatedTokens.add(this);
        onFixedRotationStatePrepared();
    }

    private void onFixedRotationStatePrepared() {
        notifyFixedRotationTransform(true);
        onConfigurationChanged(getParent().getConfiguration());
        ActivityRecord r = asActivityRecord();
        if (r != null && r.hasProcess()) {
            r.app.registerActivityConfigurationListener(r);
        }
    }

    boolean hasAnimatingFixedRotationTransition() {
        FixedRotationTransformState fixedRotationTransformState = this.mFixedRotationTransformState;
        if (fixedRotationTransformState == null) {
            return false;
        }
        for (int i = fixedRotationTransformState.mAssociatedTokens.size() - 1; i >= 0; i--) {
            ActivityRecord r = this.mFixedRotationTransformState.mAssociatedTokens.get(i).asActivityRecord();
            if (r != null && r.isAnimating(3)) {
                return true;
            }
        }
        return false;
    }

    void finishFixedRotationTransform() {
        finishFixedRotationTransform(null);
    }

    void finishFixedRotationTransform(Runnable applyDisplayRotation) {
        FixedRotationTransformState state = this.mFixedRotationTransformState;
        if (state == null) {
            return;
        }
        state.resetTransform();
        state.mIsTransforming = false;
        if (applyDisplayRotation != null) {
            applyDisplayRotation.run();
        }
        for (int i = state.mAssociatedTokens.size() - 1; i >= 0; i--) {
            WindowToken token = state.mAssociatedTokens.get(i);
            token.mFixedRotationTransformState = null;
            token.notifyFixedRotationTransform(false);
            if (applyDisplayRotation == null) {
                token.cancelFixedRotationTransform();
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void notifyFixedRotationTransform(boolean enabled) {
        WindowProcessController app;
        DisplayAdjustments.FixedRotationAdjustments adjustments = null;
        ArrayList<WindowProcessController> notifiedProcesses = null;
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState w = (WindowState) this.mChildren.get(i);
            if (w.mAttrs.type == 3) {
                ActivityRecord r = asActivityRecord();
                if (r != null) {
                    app = r.app;
                }
            } else {
                app = this.mWmService.mAtmService.mProcessMap.getProcess(w.mSession.mPid);
            }
            if (app != null && app.hasThread()) {
                if (notifiedProcesses == null) {
                    notifiedProcesses = new ArrayList<>(2);
                    adjustments = enabled ? createFixedRotationAdjustmentsIfNeeded() : null;
                } else if (notifiedProcesses.contains(app)) {
                }
                notifiedProcesses.add(app);
                try {
                    this.mWmService.mAtmService.getLifecycleManager().scheduleTransaction(app.getThread(), FixedRotationAdjustmentsItem.obtain(this.token, adjustments));
                } catch (RemoteException e) {
                    Slog.w(TAG, "Failed to schedule DisplayAdjustmentsItem to " + app, e);
                }
            }
        }
    }

    private void cancelFixedRotationTransform() {
        WindowContainer<?> parent = getParent();
        if (parent == null) {
            return;
        }
        int originalRotation = getWindowConfiguration().getRotation();
        onConfigurationChanged(parent.getConfiguration());
        onCancelFixedRotationTransform(originalRotation);
    }

    void onCancelFixedRotationTransform(int originalDisplayRotation) {
    }

    DisplayAdjustments.FixedRotationAdjustments createFixedRotationAdjustmentsIfNeeded() {
        if (!isFixedRotationTransforming()) {
            return null;
        }
        DisplayInfo displayInfo = this.mFixedRotationTransformState.mDisplayInfo;
        return new DisplayAdjustments.FixedRotationAdjustments(displayInfo.rotation, displayInfo.appWidth, displayInfo.appHeight, displayInfo.displayCutout);
    }

    @Override // com.android.server.wm.ConfigurationContainer
    void resolveOverrideConfiguration(Configuration newParentConfig) {
        super.resolveOverrideConfiguration(newParentConfig);
        if (isFixedRotationTransforming()) {
            getResolvedOverrideConfiguration().updateFrom(this.mFixedRotationTransformState.mRotatedOverrideConfiguration);
        }
    }

    @Override // com.android.server.wm.WindowContainer
    void updateSurfacePosition(SurfaceControl.Transaction t) {
        super.updateSurfacePosition(t);
        if (isFixedRotationTransforming()) {
            this.mFixedRotationTransformState.transform(this);
        }
    }

    @Override // com.android.server.wm.WindowContainer
    void resetSurfacePositionForAnimationLeash(SurfaceControl.Transaction t) {
        if (!isFixedRotationTransforming()) {
            super.resetSurfacePositionForAnimationLeash(t);
        }
    }

    void adjustWindowParams(WindowState win, WindowManager.LayoutParams attrs) {
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public void dumpDebug(ProtoOutputStream proto, long fieldId, int logLevel) {
        if (logLevel == 2 && !isVisible()) {
            return;
        }
        long token = proto.start(fieldId);
        super.dumpDebug(proto, 1146756268033L, logLevel);
        proto.write(1120986464258L, System.identityHashCode(this));
        proto.write(1133871366149L, this.waitingToShow);
        proto.write(1133871366150L, this.paused);
        proto.end(token);
    }

    @Override // com.android.server.wm.WindowContainer
    long getProtoFieldId() {
        return 1146756268039L;
    }

    @Override // com.android.server.wm.WindowContainer
    void dump(PrintWriter pw, String prefix, boolean dumpAll) {
        super.dump(pw, prefix, dumpAll);
        pw.print(prefix);
        pw.print("windows=");
        pw.println(this.mChildren);
        pw.print(prefix);
        pw.print("windowType=");
        pw.print(this.windowType);
        pw.print(" hasVisible=");
        pw.print(this.hasVisible);
        if (this.waitingToShow) {
            pw.print(" waitingToShow=true");
        }
        pw.println();
        if (hasFixedRotationTransform()) {
            pw.print(prefix);
            pw.print("fixedRotationConfig=");
            pw.println(this.mFixedRotationTransformState.mRotatedOverrideConfiguration);
        }
    }

    public String toString() {
        if (this.stringName == null) {
            this.stringName = "WindowToken{" + Integer.toHexString(System.identityHashCode(this)) + " " + this.token + '}';
        }
        return this.stringName;
    }

    @Override // com.android.server.wm.ConfigurationContainer
    String getName() {
        return toString();
    }

    boolean canLayerAboveSystemBars() {
        int layer = this.mWmService.mPolicy.getWindowLayerFromTypeLw(this.windowType, this.mOwnerCanManageAppTokens);
        int navLayer = this.mWmService.mPolicy.getWindowLayerFromTypeLw(2019, this.mOwnerCanManageAppTokens);
        return this.mOwnerCanManageAppTokens && layer > navLayer;
    }

    int getWindowLayerFromType() {
        return this.mWmService.mPolicy.getWindowLayerFromTypeLw(this.windowType, this.mOwnerCanManageAppTokens);
    }

    int getOwnerUid() {
        return this.mOwnerUid;
    }
}
