package com.android.server.wm;

import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Debug;
import android.os.IBinder;
import android.os.Trace;
import android.util.ArraySet;
import android.util.Pair;
import android.util.Pools;
import android.util.proto.ProtoOutputStream;
import android.view.DisplayInfo;
import android.view.MagnificationSpec;
import android.view.RemoteAnimationDefinition;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.view.SurfaceSession;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.window.IWindowContainerToken;
import android.window.WindowContainerToken;
import com.android.internal.util.ToBooleanFunction;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import com.android.server.wm.WindowContainer;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
class WindowContainer<E extends WindowContainer> extends ConfigurationContainer<E> implements Comparable<WindowContainer>, SurfaceAnimator.Animatable, SurfaceFreezer.Freezable, BLASTSyncEngine.TransactionReadyListener {
    static final int ANIMATION_LAYER_BOOSTED = 1;
    static final int ANIMATION_LAYER_HOME = 2;
    static final int ANIMATION_LAYER_STANDARD = 0;
    static final int POSITION_BOTTOM = Integer.MIN_VALUE;
    static final int POSITION_TOP = Integer.MAX_VALUE;
    private static final String TAG = "WindowManager";
    SurfaceControl mAnimationBoundsLayer;
    private boolean mAnyParentAnimating;
    SurfaceControl.Transaction mBLASTSyncTransaction;
    private boolean mCommittedReparentToAnimationLeash;
    protected DisplayContent mDisplayContent;
    private MagnificationSpec mLastMagnificationSpec;
    protected WindowContainer mLastOrientationSource;
    boolean mLaunchTaskBehind;
    boolean mNeedsAnimationBoundsLayer;
    boolean mNeedsZBoost;
    private final SurfaceControl.Transaction mPendingTransaction;
    boolean mReparenting;
    protected final SurfaceAnimator mSurfaceAnimator;
    protected SurfaceControl mSurfaceControl;
    final SurfaceFreezer mSurfaceFreezer;
    WindowContainerThumbnail mThumbnail;
    int mTransit;
    int mTransitFlags;
    BLASTSyncEngine.TransactionReadyListener mWaitingListener;
    int mWaitingSyncId;
    protected final WindowManagerService mWmService;
    private WindowContainer<WindowContainer> mParent = null;
    protected final WindowList<E> mChildren = new WindowList<>();
    protected int mOrientation = -1;
    private final Pools.SynchronizedPool<WindowContainer<E>.ForAllWindowsConsumerWrapper> mConsumerWrapperPool = new Pools.SynchronizedPool<>(3);
    private int mLastLayer = 0;
    private SurfaceControl mLastRelativeToLayer = null;
    final ArrayList<WindowState> mWaitingForDrawn = new ArrayList<>();
    private final ArraySet<WindowContainer> mSurfaceAnimationSources = new ArraySet<>();
    private final Point mTmpPos = new Point();
    protected final Point mLastSurfacePosition = new Point();
    private int mTreeWeight = 1;
    final Point mTmpPoint = new Point();
    protected final Rect mTmpRect = new Rect();
    final Rect mTmpPrevBounds = new Rect();
    private boolean mIsFocusable = true;
    RemoteToken mRemoteToken = null;
    BLASTSyncEngine mBLASTSyncEngine = new BLASTSyncEngine();
    boolean mUsingBLASTSyncTransaction = false;
    private final LinkedList<WindowContainer> mTmpChain1 = new LinkedList<>();
    private final LinkedList<WindowContainer> mTmpChain2 = new LinkedList<>();

    public interface AnimationFlags {
        public static final int CHILDREN = 4;
        public static final int PARENTS = 2;
        public static final int TRANSITION = 1;
    }

    @interface AnimationLayer {
    }

    interface PreAssignChildLayersCallback {
        void onPreAssignChildLayers();
    }

    WindowContainer(WindowManagerService wms) {
        this.mWmService = wms;
        this.mPendingTransaction = wms.mTransactionFactory.get();
        this.mBLASTSyncTransaction = wms.mTransactionFactory.get();
        this.mSurfaceAnimator = new SurfaceAnimator(this, new SurfaceAnimator.OnAnimationFinishedCallback() { // from class: com.android.server.wm.-$$Lambda$dwJG8BAnLlvKNGuDY9U3-haNY4M
            @Override // com.android.server.wm.SurfaceAnimator.OnAnimationFinishedCallback
            public final void onAnimationFinished(int i, AnimationAdapter animationAdapter) {
                this.f$0.onAnimationFinished(i, animationAdapter);
            }
        }, wms);
        this.mSurfaceFreezer = new SurfaceFreezer(this, wms);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.server.wm.ConfigurationContainer
    public final WindowContainer getParent() {
        return this.mParent;
    }

    @Override // com.android.server.wm.ConfigurationContainer
    protected int getChildCount() {
        return this.mChildren.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.server.wm.ConfigurationContainer
    public E getChildAt(int index) {
        return this.mChildren.get(index);
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public void onConfigurationChanged(Configuration newParentConfig) {
        super.onConfigurationChanged(newParentConfig);
        updateSurfacePosition();
        scheduleAnimation();
    }

    void reparent(WindowContainer newParent, int position) {
        if (newParent == null) {
            throw new IllegalArgumentException("reparent: can't reparent to null " + this);
        }
        WindowContainer<WindowContainer> windowContainer = this.mParent;
        if (this.mParent == newParent) {
            throw new IllegalArgumentException("WC=" + this + " already child of " + this.mParent);
        }
        DisplayContent prevDc = windowContainer.getDisplayContent();
        DisplayContent dc = newParent.getDisplayContent();
        this.mReparenting = true;
        windowContainer.removeChild(this);
        newParent.addChild(this, position);
        this.mReparenting = false;
        dc.setLayoutNeeded();
        if (prevDc != dc) {
            onDisplayChanged(dc);
            prevDc.setLayoutNeeded();
        }
        getDisplayContent().layoutAndAssignWindowLayersIfNeeded();
        onParentChanged(newParent, windowContainer);
    }

    protected final void setParent(WindowContainer<WindowContainer> parent) {
        DisplayContent displayContent;
        WindowContainer<WindowContainer> windowContainer = this.mParent;
        this.mParent = parent;
        if (parent != null) {
            parent.onChildAdded(this);
        }
        if (!this.mReparenting) {
            WindowContainer<WindowContainer> windowContainer2 = this.mParent;
            if (windowContainer2 != null && (displayContent = windowContainer2.mDisplayContent) != null && this.mDisplayContent != displayContent) {
                onDisplayChanged(displayContent);
            }
            onParentChanged(this.mParent, windowContainer);
        }
    }

    @Override // com.android.server.wm.ConfigurationContainer
    void onParentChanged(ConfigurationContainer newParent, ConfigurationContainer oldParent) {
        onParentChanged(newParent, oldParent, null);
    }

    void onParentChanged(ConfigurationContainer newParent, ConfigurationContainer oldParent, PreAssignChildLayersCallback callback) {
        super.onParentChanged(newParent, oldParent);
        if (this.mParent == null) {
            return;
        }
        if (this.mSurfaceControl == null) {
            createSurfaceControl(false);
        } else {
            reparentSurfaceControl(getSyncTransaction(), this.mParent.mSurfaceControl);
        }
        if (callback != null) {
            callback.onPreAssignChildLayers();
        }
        this.mParent.assignChildLayers();
        scheduleAnimation();
    }

    void createSurfaceControl(boolean force) {
        setInitialSurfaceControlProperties(makeSurface());
    }

    void setInitialSurfaceControlProperties(SurfaceControl.Builder b) {
        setSurfaceControl(b.setCallsite("WindowContainer.setInitialSurfaceControlProperties").build());
        getSyncTransaction().show(this.mSurfaceControl);
        onSurfaceShown(getSyncTransaction());
        updateSurfacePosition();
    }

    void migrateToNewSurfaceControl() {
        SurfaceControl.Transaction t = getPendingTransaction();
        t.remove(this.mSurfaceControl);
        this.mLastSurfacePosition.set(0, 0);
        SurfaceControl.Builder b = this.mWmService.makeSurfaceBuilder(null).setContainerLayer().setName(getName());
        setInitialSurfaceControlProperties(b);
        SurfaceControl surfaceControl = this.mSurfaceControl;
        WindowContainer<WindowContainer> windowContainer = this.mParent;
        t.reparent(surfaceControl, windowContainer != null ? windowContainer.getSurfaceControl() : null);
        SurfaceControl surfaceControl2 = this.mLastRelativeToLayer;
        if (surfaceControl2 != null) {
            t.setRelativeLayer(this.mSurfaceControl, surfaceControl2, this.mLastLayer);
        } else {
            t.setLayer(this.mSurfaceControl, this.mLastLayer);
        }
        for (int i = 0; i < this.mChildren.size(); i++) {
            SurfaceControl sc = this.mChildren.get(i).getSurfaceControl();
            if (sc != null) {
                t.reparent(sc, this.mSurfaceControl);
            }
        }
        scheduleAnimation();
    }

    void onSurfaceShown(SurfaceControl.Transaction t) {
    }

    protected void addChild(E child, Comparator<E> comparator) {
        if (!child.mReparenting && child.getParent() != null) {
            throw new IllegalArgumentException("addChild: container=" + child.getName() + " is already a child of container=" + child.getParent().getName() + " can't add to container=" + getName());
        }
        int positionToAdd = -1;
        if (comparator != null) {
            int count = this.mChildren.size();
            for (int i = 0; i < count; i++) {
                if (comparator.compare(child, this.mChildren.get(i)) < 0) {
                    positionToAdd = i;
                    break;
                }
            }
        }
        if (positionToAdd == -1) {
            this.mChildren.add(child);
        } else {
            this.mChildren.add(positionToAdd, child);
        }
        child.setParent(this);
    }

    void addChild(E child, int index) {
        if (!child.mReparenting && child.getParent() != null) {
            throw new IllegalArgumentException("addChild: container=" + child.getName() + " is already a child of container=" + child.getParent().getName() + " can't add to container=" + getName() + "\n callers=" + Debug.getCallers(15, "\n"));
        }
        if ((index < 0 && index != Integer.MIN_VALUE) || (index > this.mChildren.size() && index != POSITION_TOP)) {
            throw new IllegalArgumentException("addChild: invalid position=" + index + ", children number=" + this.mChildren.size());
        }
        if (index == POSITION_TOP) {
            index = this.mChildren.size();
        } else if (index == Integer.MIN_VALUE) {
            index = 0;
        }
        this.mChildren.add(index, child);
        child.setParent(this);
    }

    private void onChildAdded(WindowContainer child) {
        this.mTreeWeight += child.mTreeWeight;
        for (WindowContainer parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.mTreeWeight += child.mTreeWeight;
        }
        onChildPositionChanged(child);
    }

    void removeChild(E child) {
        if (this.mChildren.remove(child)) {
            onChildRemoved(child);
            if (!child.mReparenting) {
                child.setParent(null);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("removeChild: container=" + child.getName() + " is not a child of container=" + getName());
    }

    private void onChildRemoved(WindowContainer child) {
        this.mTreeWeight -= child.mTreeWeight;
        for (WindowContainer parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.mTreeWeight -= child.mTreeWeight;
        }
        onChildPositionChanged(child);
    }

    void removeImmediately() {
        DisplayContent dc = getDisplayContent();
        if (dc != null) {
            this.mSurfaceFreezer.unfreeze(getSyncTransaction());
            dc.mChangingContainers.remove(this);
        }
        while (!this.mChildren.isEmpty()) {
            E child = this.mChildren.peekLast();
            child.removeImmediately();
            if (this.mChildren.remove(child)) {
                onChildRemoved(child);
            }
        }
        if (this.mSurfaceControl != null) {
            getSyncTransaction().remove(this.mSurfaceControl);
            setSurfaceControl(null);
            this.mLastSurfacePosition.set(0, 0);
            scheduleAnimation();
        }
        WindowContainer<WindowContainer> windowContainer = this.mParent;
        if (windowContainer != null) {
            windowContainer.removeChild(this);
        }
    }

    int getPrefixOrderIndex() {
        WindowContainer<WindowContainer> windowContainer = this.mParent;
        if (windowContainer == null) {
            return 0;
        }
        return windowContainer.getPrefixOrderIndex(this);
    }

    private int getPrefixOrderIndex(WindowContainer child) {
        WindowContainer childI;
        int order = 0;
        for (int i = 0; i < this.mChildren.size() && child != (childI = this.mChildren.get(i)); i++) {
            order += childI.mTreeWeight;
        }
        WindowContainer<WindowContainer> windowContainer = this.mParent;
        if (windowContainer != null) {
            order += windowContainer.getPrefixOrderIndex(this);
        }
        return order + 1;
    }

    void removeIfPossible() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowContainer wc = this.mChildren.get(i);
            wc.removeIfPossible();
        }
    }

    boolean hasChild(E child) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            E current = this.mChildren.get(i);
            if (current == child || current.hasChild(child)) {
                return true;
            }
        }
        return false;
    }

    boolean isDescendantOf(WindowContainer ancestor) {
        WindowContainer parent = getParent();
        if (parent == ancestor) {
            return true;
        }
        return parent != null && parent.isDescendantOf(ancestor);
    }

    void positionChildAt(int position, E child, boolean includingParents) {
        if (child.getParent() != this) {
            throw new IllegalArgumentException("positionChildAt: container=" + child.getName() + " is not a child of container=" + getName() + " current parent=" + child.getParent());
        }
        if (position >= this.mChildren.size() - 1) {
            position = POSITION_TOP;
        } else if (position <= 0) {
            position = Integer.MIN_VALUE;
        }
        if (position == Integer.MIN_VALUE) {
            if (this.mChildren.peekFirst() != child) {
                this.mChildren.remove(child);
                this.mChildren.addFirst(child);
                onChildPositionChanged(child);
            }
            if (includingParents && getParent() != null) {
                getParent().positionChildAt(Integer.MIN_VALUE, this, true);
                return;
            }
            return;
        }
        if (position == POSITION_TOP) {
            if (this.mChildren.peekLast() != child) {
                this.mChildren.remove(child);
                this.mChildren.add(child);
                onChildPositionChanged(child);
            }
            if (includingParents && getParent() != null) {
                getParent().positionChildAt(POSITION_TOP, this, true);
                return;
            }
            return;
        }
        if (this.mChildren.indexOf(child) != position) {
            this.mChildren.remove(child);
            this.mChildren.add(position, child);
            onChildPositionChanged(child);
        }
    }

    void onChildPositionChanged(WindowContainer child) {
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public void onRequestedOverrideConfigurationChanged(Configuration overrideConfiguration) {
        int diff = diffRequestedOverrideBounds(overrideConfiguration.windowConfiguration.getBounds());
        super.onRequestedOverrideConfigurationChanged(overrideConfiguration);
        WindowContainer<WindowContainer> windowContainer = this.mParent;
        if (windowContainer != null) {
            windowContainer.onDescendantOverrideConfigurationChanged();
        }
        if (diff == 0) {
            return;
        }
        if ((diff & 2) == 2) {
            onResize();
        } else {
            onMovedByResize();
        }
    }

    void onDescendantOverrideConfigurationChanged() {
        WindowContainer<WindowContainer> windowContainer = this.mParent;
        if (windowContainer != null) {
            windowContainer.onDescendantOverrideConfigurationChanged();
        }
    }

    void onDisplayChanged(DisplayContent dc) {
        DisplayContent displayContent = this.mDisplayContent;
        if (displayContent != null && displayContent.mChangingContainers.remove(this)) {
            this.mSurfaceFreezer.unfreeze(getPendingTransaction());
        }
        this.mDisplayContent = dc;
        if (dc != null && dc != this) {
            dc.getPendingTransaction().merge(this.mPendingTransaction);
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowContainer child = this.mChildren.get(i);
            child.onDisplayChanged(dc);
        }
    }

    DisplayContent getDisplayContent() {
        return this.mDisplayContent;
    }

    DisplayArea getDisplayArea() {
        WindowContainer parent = getParent();
        if (parent != null) {
            return parent.getDisplayArea();
        }
        return null;
    }

    boolean isAttached() {
        return getDisplayArea() != null;
    }

    void setWaitingForDrawnIfResizingChanged() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowContainer wc = this.mChildren.get(i);
            wc.setWaitingForDrawnIfResizingChanged();
        }
    }

    void onResize() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowContainer wc = this.mChildren.get(i);
            wc.onParentResize();
        }
    }

    void onParentResize() {
        if (hasOverrideBounds()) {
            return;
        }
        onResize();
    }

    void onMovedByResize() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowContainer wc = this.mChildren.get(i);
            wc.onMovedByResize();
        }
    }

    void resetDragResizingChangeReported() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowContainer wc = this.mChildren.get(i);
            wc.resetDragResizingChangeReported();
        }
    }

    void forceWindowsScaleableInTransaction(boolean force) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowContainer wc = this.mChildren.get(i);
            wc.forceWindowsScaleableInTransaction(force);
        }
    }

    final boolean isAnimating(int flags, int typesToCheck) {
        return getAnimatingContainer(flags, typesToCheck) != null;
    }

    @Deprecated
    final boolean isAnimatingExcluding(int flags, int typesToExclude) {
        return isAnimating(flags, (~typesToExclude) & (-1));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public final boolean isAnimating(int flags) {
        return isAnimating(flags, -1);
    }

    boolean isWaitingForTransitionStart() {
        return false;
    }

    boolean isAppTransitioning() {
        return getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$WindowContainer$4sX6UUtugZXD_J917yuWIm58Q9M
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((ActivityRecord) obj).isAnimating(3);
            }
        }) != null;
    }

    final boolean isAnimating() {
        return isAnimating(0);
    }

    boolean isChangingAppTransition() {
        DisplayContent displayContent = this.mDisplayContent;
        return displayContent != null && displayContent.mChangingContainers.contains(this);
    }

    void sendAppVisibilityToClients() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowContainer wc = this.mChildren.get(i);
            wc.sendAppVisibilityToClients();
        }
    }

    boolean hasContentToDisplay() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowContainer wc = this.mChildren.get(i);
            if (wc.hasContentToDisplay()) {
                return true;
            }
        }
        return false;
    }

    boolean isVisible() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowContainer wc = this.mChildren.get(i);
            if (wc.isVisible()) {
                return true;
            }
        }
        return false;
    }

    void onChildVisibilityRequested(boolean visible) {
        this.mSurfaceFreezer.unfreeze(getSyncTransaction());
        DisplayContent displayContent = this.mDisplayContent;
        if (displayContent != null) {
            displayContent.mChangingContainers.remove(this);
        }
        WindowContainer parent = getParent();
        if (parent != null) {
            parent.onChildVisibilityRequested(visible);
        }
    }

    void writeIdentifierToProto(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1120986464257L, System.identityHashCode(this));
        proto.write(1120986464258L, -10000);
        proto.write(1138166333443L, "WindowContainer");
        proto.end(token);
    }

    boolean isFocusable() {
        WindowContainer parent = getParent();
        return (parent == null || parent.isFocusable()) && this.mIsFocusable;
    }

    boolean setFocusable(boolean focusable) {
        if (this.mIsFocusable == focusable) {
            return false;
        }
        this.mIsFocusable = focusable;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    boolean isOnTop() {
        WindowContainer parent = getParent();
        return parent != 0 && parent.getTopChild() == this && parent.isOnTop();
    }

    E getTopChild() {
        return this.mChildren.peekLast();
    }

    boolean handleCompleteDeferredRemoval() {
        boolean stillDeferringRemoval = false;
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowContainer wc = this.mChildren.get(i);
            stillDeferringRemoval |= wc.handleCompleteDeferredRemoval();
            if (!hasChild()) {
                return false;
            }
        }
        return stillDeferringRemoval;
    }

    void checkAppWindowsReadyToShow() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowContainer wc = this.mChildren.get(i);
            wc.checkAppWindowsReadyToShow();
        }
    }

    void onAppTransitionDone() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowContainer wc = this.mChildren.get(i);
            wc.onAppTransitionDone();
        }
    }

    boolean onDescendantOrientationChanged(IBinder freezeDisplayToken, ConfigurationContainer requestingContainer) {
        WindowContainer parent = getParent();
        if (parent == null) {
            return false;
        }
        return parent.onDescendantOrientationChanged(freezeDisplayToken, requestingContainer);
    }

    boolean handlesOrientationChangeFromDescendant() {
        WindowContainer parent = getParent();
        return parent != null && parent.handlesOrientationChangeFromDescendant();
    }

    int getRequestedConfigurationOrientation() {
        int i = this.mOrientation;
        if (i == 5) {
            DisplayContent displayContent = this.mDisplayContent;
            if (displayContent != null) {
                return displayContent.getNaturalOrientation();
            }
            return 0;
        }
        if (i == 14) {
            return getConfiguration().orientation;
        }
        if (ActivityInfo.isFixedOrientationLandscape(i)) {
            return 2;
        }
        if (ActivityInfo.isFixedOrientationPortrait(this.mOrientation)) {
            return 1;
        }
        return 0;
    }

    void setOrientation(int orientation) {
        setOrientation(orientation, null, null);
    }

    void setOrientation(int orientation, IBinder freezeDisplayToken, ConfigurationContainer requestingContainer) {
        if (this.mOrientation == orientation) {
            return;
        }
        this.mOrientation = orientation;
        WindowContainer parent = getParent();
        if (parent != null) {
            if (getConfiguration().orientation != getRequestedConfigurationOrientation()) {
                onConfigurationChanged(parent.getConfiguration());
            }
            onDescendantOrientationChanged(freezeDisplayToken, requestingContainer);
        }
    }

    int getOrientation() {
        return getOrientation(this.mOrientation);
    }

    int getOrientation(int candidate) {
        this.mLastOrientationSource = null;
        if (!fillsParent()) {
            return -2;
        }
        int i = this.mOrientation;
        if (i != -2 && i != -1) {
            this.mLastOrientationSource = this;
            return i;
        }
        for (int i2 = this.mChildren.size() - 1; i2 >= 0; i2--) {
            WindowContainer wc = this.mChildren.get(i2);
            int orientation = wc.getOrientation(candidate == 3 ? 3 : -2);
            if (orientation == 3) {
                candidate = orientation;
                this.mLastOrientationSource = wc;
            } else if (orientation != -2 && (wc.fillsParent() || orientation != -1)) {
                if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                    String protoLogParam0 = String.valueOf(wc.toString());
                    long protoLogParam1 = orientation;
                    String protoLogParam2 = String.valueOf(ActivityInfo.screenOrientationToString(orientation));
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -1108775960, 4, null, protoLogParam0, Long.valueOf(protoLogParam1), protoLogParam2);
                }
                this.mLastOrientationSource = wc;
                return orientation;
            }
        }
        return candidate;
    }

    WindowContainer getLastOrientationSource() {
        WindowContainer nextSource;
        WindowContainer<E> windowContainer = this.mLastOrientationSource;
        if (windowContainer != null && windowContainer != this && (nextSource = windowContainer.getLastOrientationSource()) != null) {
            return nextSource;
        }
        return windowContainer;
    }

    boolean fillsParent() {
        return false;
    }

    void switchUser(int userId) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            this.mChildren.get(i).switchUser(userId);
        }
    }

    boolean showToCurrentUser() {
        return true;
    }

    boolean forAllWindows(ToBooleanFunction<WindowState> callback, boolean traverseTopToBottom) {
        if (traverseTopToBottom) {
            for (int i = this.mChildren.size() - 1; i >= 0; i--) {
                if (this.mChildren.get(i).forAllWindows(callback, traverseTopToBottom)) {
                    return true;
                }
            }
            return false;
        }
        int count = this.mChildren.size();
        for (int i2 = 0; i2 < count; i2++) {
            if (this.mChildren.get(i2).forAllWindows(callback, traverseTopToBottom)) {
                return true;
            }
        }
        return false;
    }

    void forAllWindows(Consumer<WindowState> callback, boolean traverseTopToBottom) {
        WindowContainer<E>.ForAllWindowsConsumerWrapper wrapper = obtainConsumerWrapper(callback);
        forAllWindows(wrapper, traverseTopToBottom);
        wrapper.release();
    }

    boolean forAllActivities(Function<ActivityRecord, Boolean> callback) {
        return forAllActivities(callback, true);
    }

    boolean forAllActivities(Function<ActivityRecord, Boolean> callback, boolean traverseTopToBottom) {
        if (traverseTopToBottom) {
            for (int i = this.mChildren.size() - 1; i >= 0; i--) {
                if (this.mChildren.get(i).forAllActivities(callback, traverseTopToBottom)) {
                    return true;
                }
            }
            return false;
        }
        int count = this.mChildren.size();
        for (int i2 = 0; i2 < count; i2++) {
            if (this.mChildren.get(i2).forAllActivities(callback, traverseTopToBottom)) {
                return true;
            }
        }
        return false;
    }

    void forAllActivities(Consumer<ActivityRecord> callback) {
        forAllActivities(callback, true);
    }

    void forAllActivities(Consumer<ActivityRecord> callback, boolean traverseTopToBottom) {
        if (traverseTopToBottom) {
            for (int i = this.mChildren.size() - 1; i >= 0; i--) {
                this.mChildren.get(i).forAllActivities(callback, traverseTopToBottom);
            }
            return;
        }
        int count = this.mChildren.size();
        for (int i2 = 0; i2 < count; i2++) {
            this.mChildren.get(i2).forAllActivities(callback, traverseTopToBottom);
        }
    }

    final boolean forAllActivities(Function<ActivityRecord, Boolean> callback, WindowContainer boundary, boolean includeBoundary, boolean traverseTopToBottom) {
        return forAllActivities(callback, boundary, includeBoundary, traverseTopToBottom, new boolean[1]);
    }

    private boolean forAllActivities(Function<ActivityRecord, Boolean> callback, WindowContainer boundary, boolean includeBoundary, boolean traverseTopToBottom, boolean[] boundaryFound) {
        if (traverseTopToBottom) {
            for (int i = this.mChildren.size() - 1; i >= 0; i--) {
                if (processForAllActivitiesWithBoundary(callback, boundary, includeBoundary, traverseTopToBottom, boundaryFound, this.mChildren.get(i))) {
                    return true;
                }
            }
            return false;
        }
        int count = this.mChildren.size();
        for (int i2 = 0; i2 < count; i2++) {
            if (processForAllActivitiesWithBoundary(callback, boundary, includeBoundary, traverseTopToBottom, boundaryFound, this.mChildren.get(i2))) {
                return true;
            }
        }
        return false;
    }

    private boolean processForAllActivitiesWithBoundary(Function<ActivityRecord, Boolean> callback, WindowContainer boundary, boolean includeBoundary, boolean traverseTopToBottom, boolean[] boundaryFound, WindowContainer wc) {
        if (wc == boundary) {
            boundaryFound[0] = true;
            if (!includeBoundary) {
                return false;
            }
        }
        if (boundaryFound[0]) {
            return wc.forAllActivities(callback, traverseTopToBottom);
        }
        return wc.forAllActivities(callback, boundary, includeBoundary, traverseTopToBottom, boundaryFound);
    }

    boolean hasActivity() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            if (this.mChildren.get(i).hasActivity()) {
                return true;
            }
        }
        return false;
    }

    ActivityRecord getActivity(Predicate<ActivityRecord> callback) {
        return getActivity(callback, true);
    }

    ActivityRecord getActivity(Predicate<ActivityRecord> callback, boolean traverseTopToBottom) {
        return getActivity(callback, traverseTopToBottom, null);
    }

    ActivityRecord getActivity(Predicate<ActivityRecord> callback, boolean traverseTopToBottom, ActivityRecord boundary) {
        if (traverseTopToBottom) {
            for (int i = this.mChildren.size() - 1; i >= 0; i--) {
                WindowContainer wc = this.mChildren.get(i);
                if (wc == boundary) {
                    return boundary;
                }
                ActivityRecord r = wc.getActivity(callback, traverseTopToBottom, boundary);
                if (r != null) {
                    return r;
                }
            }
            return null;
        }
        int count = this.mChildren.size();
        for (int i2 = 0; i2 < count; i2++) {
            WindowContainer wc2 = this.mChildren.get(i2);
            if (wc2 == boundary) {
                return boundary;
            }
            ActivityRecord r2 = wc2.getActivity(callback, traverseTopToBottom, boundary);
            if (r2 != null) {
                return r2;
            }
        }
        return null;
    }

    final ActivityRecord getActivity(Predicate<ActivityRecord> callback, WindowContainer boundary, boolean includeBoundary, boolean traverseTopToBottom) {
        return getActivity(callback, boundary, includeBoundary, traverseTopToBottom, new boolean[1]);
    }

    private ActivityRecord getActivity(Predicate<ActivityRecord> callback, WindowContainer boundary, boolean includeBoundary, boolean traverseTopToBottom, boolean[] boundaryFound) {
        if (traverseTopToBottom) {
            for (int i = this.mChildren.size() - 1; i >= 0; i--) {
                ActivityRecord r = processGetActivityWithBoundary(callback, boundary, includeBoundary, traverseTopToBottom, boundaryFound, this.mChildren.get(i));
                if (r != null) {
                    return r;
                }
            }
            return null;
        }
        int count = this.mChildren.size();
        for (int i2 = 0; i2 < count; i2++) {
            ActivityRecord r2 = processGetActivityWithBoundary(callback, boundary, includeBoundary, traverseTopToBottom, boundaryFound, this.mChildren.get(i2));
            if (r2 != null) {
                return r2;
            }
        }
        return null;
    }

    private ActivityRecord processGetActivityWithBoundary(Predicate<ActivityRecord> callback, WindowContainer boundary, boolean includeBoundary, boolean traverseTopToBottom, boolean[] boundaryFound, WindowContainer wc) {
        if (wc == boundary || boundary == null) {
            boundaryFound[0] = true;
            if (!includeBoundary) {
                return null;
            }
        }
        if (boundaryFound[0]) {
            return wc.getActivity(callback, traverseTopToBottom);
        }
        return wc.getActivity(callback, boundary, includeBoundary, traverseTopToBottom, boundaryFound);
    }

    static /* synthetic */ boolean lambda$getActivityAbove$1(ActivityRecord above) {
        return true;
    }

    ActivityRecord getActivityAbove(ActivityRecord r) {
        return getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$WindowContainer$WskrGbNwLeexLlAXUNUyGLhHEWA
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return WindowContainer.lambda$getActivityAbove$1((ActivityRecord) obj);
            }
        }, r, false, false);
    }

    static /* synthetic */ boolean lambda$getActivityBelow$2(ActivityRecord below) {
        return true;
    }

    ActivityRecord getActivityBelow(ActivityRecord r) {
        return getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$WindowContainer$sh5zVifGKSmT1fuGQxK_5_eAZ20
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return WindowContainer.lambda$getActivityBelow$2((ActivityRecord) obj);
            }
        }, r, false, true);
    }

    static /* synthetic */ boolean lambda$getBottomMostActivity$3(ActivityRecord r) {
        return true;
    }

    ActivityRecord getBottomMostActivity() {
        return getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$WindowContainer$TQFCJtak2E5nTjAEG9Q24yp-Oi8
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return WindowContainer.lambda$getBottomMostActivity$3((ActivityRecord) obj);
            }
        }, false);
    }

    static /* synthetic */ boolean lambda$getTopMostActivity$4(ActivityRecord r) {
        return true;
    }

    ActivityRecord getTopMostActivity() {
        return getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$WindowContainer$hEnPtnCJ_pCrhm4O_2UvgVpB0HQ
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return WindowContainer.lambda$getTopMostActivity$4((ActivityRecord) obj);
            }
        }, true);
    }

    ActivityRecord getTopActivity(boolean includeFinishing, boolean includeOverlays) {
        if (includeFinishing) {
            if (includeOverlays) {
                return getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$WindowContainer$XFf_Y8TZb5u_pVgOD-hm95z8ghM
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return WindowContainer.lambda$getTopActivity$5((ActivityRecord) obj);
                    }
                });
            }
            return getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$WindowContainer$1ZEE7fA5djns2jQRzCNudNIbJ1U
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return WindowContainer.lambda$getTopActivity$6((ActivityRecord) obj);
                }
            });
        }
        if (includeOverlays) {
            return getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$WindowContainer$-A4y17DMfFWJcsomzkr9vLbjQAE
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return WindowContainer.lambda$getTopActivity$7((ActivityRecord) obj);
                }
            });
        }
        return getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$WindowContainer$7u99Gj9w15XaOTtX23LKq-yXn5o
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return WindowContainer.lambda$getTopActivity$8((ActivityRecord) obj);
            }
        });
    }

    static /* synthetic */ boolean lambda$getTopActivity$5(ActivityRecord r) {
        return true;
    }

    static /* synthetic */ boolean lambda$getTopActivity$6(ActivityRecord r) {
        return !r.isTaskOverlay();
    }

    static /* synthetic */ boolean lambda$getTopActivity$7(ActivityRecord r) {
        return !r.finishing;
    }

    static /* synthetic */ boolean lambda$getTopActivity$8(ActivityRecord r) {
        return (r.finishing || r.isTaskOverlay()) ? false : true;
    }

    void forAllWallpaperWindows(Consumer<WallpaperWindowToken> callback) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            this.mChildren.get(i).forAllWallpaperWindows(callback);
        }
    }

    boolean forAllTasks(Function<Task, Boolean> callback) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            if (this.mChildren.get(i).forAllTasks(callback)) {
                return true;
            }
        }
        return false;
    }

    boolean forAllLeafTasks(Function<Task, Boolean> callback) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            if (this.mChildren.get(i).forAllLeafTasks(callback)) {
                return true;
            }
        }
        return false;
    }

    void forAllTasks(Consumer<Task> callback) {
        forAllTasks(callback, true);
    }

    void forAllTasks(Consumer<Task> callback, boolean traverseTopToBottom) {
        int count = this.mChildren.size();
        if (traverseTopToBottom) {
            for (int i = count - 1; i >= 0; i--) {
                this.mChildren.get(i).forAllTasks(callback, traverseTopToBottom);
            }
            return;
        }
        for (int i2 = 0; i2 < count; i2++) {
            this.mChildren.get(i2).forAllTasks(callback, traverseTopToBottom);
        }
    }

    void forAllLeafTasks(Consumer<Task> callback, boolean traverseTopToBottom) {
        int count = this.mChildren.size();
        if (traverseTopToBottom) {
            for (int i = count - 1; i >= 0; i--) {
                this.mChildren.get(i).forAllLeafTasks(callback, traverseTopToBottom);
            }
            return;
        }
        for (int i2 = 0; i2 < count; i2++) {
            this.mChildren.get(i2).forAllLeafTasks(callback, traverseTopToBottom);
        }
    }

    Task getTaskAbove(Task t) {
        return getTask(new Predicate() { // from class: com.android.server.wm.-$$Lambda$WindowContainer$VgO_jyvTwx2IcoTcwvoIKxat95M
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return WindowContainer.lambda$getTaskAbove$9((Task) obj);
            }
        }, t, false, false);
    }

    static /* synthetic */ boolean lambda$getTaskAbove$9(Task above) {
        return true;
    }

    static /* synthetic */ boolean lambda$getTaskBelow$10(Task below) {
        return true;
    }

    Task getTaskBelow(Task t) {
        return getTask(new Predicate() { // from class: com.android.server.wm.-$$Lambda$WindowContainer$7x9zhFx3vhSZ5lMUA8efWaz-6co
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return WindowContainer.lambda$getTaskBelow$10((Task) obj);
            }
        }, t, false, true);
    }

    static /* synthetic */ boolean lambda$getBottomMostTask$11(Task t) {
        return true;
    }

    Task getBottomMostTask() {
        return getTask(new Predicate() { // from class: com.android.server.wm.-$$Lambda$WindowContainer$k_PpuHAHKhi1gqk1dQsXNnYX7Ok
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return WindowContainer.lambda$getBottomMostTask$11((Task) obj);
            }
        }, false);
    }

    static /* synthetic */ boolean lambda$getTopMostTask$12(Task t) {
        return true;
    }

    Task getTopMostTask() {
        return getTask(new Predicate() { // from class: com.android.server.wm.-$$Lambda$WindowContainer$lJjjxJS1wJFikrxN0jFMgNna43g
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return WindowContainer.lambda$getTopMostTask$12((Task) obj);
            }
        }, true);
    }

    Task getTask(Predicate<Task> callback) {
        return getTask(callback, true);
    }

    Task getTask(Predicate<Task> callback, boolean traverseTopToBottom) {
        if (traverseTopToBottom) {
            for (int i = this.mChildren.size() - 1; i >= 0; i--) {
                Task t = this.mChildren.get(i).getTask(callback, traverseTopToBottom);
                if (t != null) {
                    return t;
                }
            }
            return null;
        }
        int count = this.mChildren.size();
        for (int i2 = 0; i2 < count; i2++) {
            Task t2 = this.mChildren.get(i2).getTask(callback, traverseTopToBottom);
            if (t2 != null) {
                return t2;
            }
        }
        return null;
    }

    final Task getTask(Predicate<Task> callback, WindowContainer boundary, boolean includeBoundary, boolean traverseTopToBottom) {
        return getTask(callback, boundary, includeBoundary, traverseTopToBottom, new boolean[1]);
    }

    private Task getTask(Predicate<Task> callback, WindowContainer boundary, boolean includeBoundary, boolean traverseTopToBottom, boolean[] boundaryFound) {
        if (traverseTopToBottom) {
            for (int i = this.mChildren.size() - 1; i >= 0; i--) {
                Task t = processGetTaskWithBoundary(callback, boundary, includeBoundary, traverseTopToBottom, boundaryFound, this.mChildren.get(i));
                if (t != null) {
                    return t;
                }
            }
            return null;
        }
        int count = this.mChildren.size();
        for (int i2 = 0; i2 < count; i2++) {
            Task t2 = processGetTaskWithBoundary(callback, boundary, includeBoundary, traverseTopToBottom, boundaryFound, this.mChildren.get(i2));
            if (t2 != null) {
                return t2;
            }
        }
        return null;
    }

    private Task processGetTaskWithBoundary(Predicate<Task> callback, WindowContainer boundary, boolean includeBoundary, boolean traverseTopToBottom, boolean[] boundaryFound, WindowContainer wc) {
        if (wc == boundary || boundary == null) {
            boundaryFound[0] = true;
            if (!includeBoundary) {
                return null;
            }
        }
        if (boundaryFound[0]) {
            return wc.getTask(callback, traverseTopToBottom);
        }
        return wc.getTask(callback, boundary, includeBoundary, traverseTopToBottom, boundaryFound);
    }

    WindowState getWindow(Predicate<WindowState> callback) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState w = this.mChildren.get(i).getWindow(callback);
            if (w != null) {
                return w;
            }
        }
        return null;
    }

    void forAllDisplayAreas(Consumer<DisplayArea> callback) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            this.mChildren.get(i).forAllDisplayAreas(callback);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(WindowContainer other) {
        if (this == other) {
            return 0;
        }
        WindowContainer<WindowContainer> windowContainer = this.mParent;
        if (windowContainer != null && windowContainer == other.mParent) {
            WindowList<WindowContainer> list = windowContainer.mChildren;
            return list.indexOf(this) > list.indexOf(other) ? 1 : -1;
        }
        LinkedList<WindowContainer> thisParentChain = this.mTmpChain1;
        LinkedList<WindowContainer> otherParentChain = this.mTmpChain2;
        try {
            getParents(thisParentChain);
            other.getParents(otherParentChain);
            WindowContainer commonAncestor = null;
            WindowContainer thisTop = thisParentChain.peekLast();
            for (WindowContainer otherTop = otherParentChain.peekLast(); thisTop != null && otherTop != null && thisTop == otherTop; otherTop = otherParentChain.peekLast()) {
                commonAncestor = thisParentChain.removeLast();
                otherParentChain.removeLast();
                thisTop = thisParentChain.peekLast();
            }
            if (commonAncestor == null) {
                throw new IllegalArgumentException("No in the same hierarchy this=" + thisParentChain + " other=" + otherParentChain);
            }
            if (commonAncestor == this) {
                this.mTmpChain1.clear();
                this.mTmpChain2.clear();
                return -1;
            }
            if (commonAncestor == other) {
                this.mTmpChain1.clear();
                this.mTmpChain2.clear();
                return 1;
            }
            WindowList<WindowContainer> list2 = commonAncestor.mChildren;
            int i = list2.indexOf(thisParentChain.peekLast()) <= list2.indexOf(otherParentChain.peekLast()) ? -1 : 1;
            this.mTmpChain1.clear();
            this.mTmpChain2.clear();
            return i;
        } catch (Throwable th) {
            this.mTmpChain1.clear();
            this.mTmpChain2.clear();
            throw th;
        }
    }

    private void getParents(LinkedList<WindowContainer> parents) {
        parents.clear();
        WindowContainer<WindowContainer> windowContainer = this;
        do {
            parents.addLast(windowContainer);
            windowContainer = windowContainer.mParent;
        } while (windowContainer != null);
    }

    SurfaceControl.Builder makeSurface() {
        WindowContainer p = getParent();
        return p.makeChildSurface(this);
    }

    SurfaceControl.Builder makeChildSurface(WindowContainer child) {
        WindowContainer p = getParent();
        return p.makeChildSurface(child).setParent(this.mSurfaceControl);
    }

    public SurfaceControl getParentSurfaceControl() {
        WindowContainer parent = getParent();
        if (parent == null) {
            return null;
        }
        return parent.getSurfaceControl();
    }

    boolean shouldMagnify() {
        if (this.mSurfaceControl == null) {
            return false;
        }
        for (int i = 0; i < this.mChildren.size(); i++) {
            if (!this.mChildren.get(i).shouldMagnify()) {
                return false;
            }
        }
        return true;
    }

    SurfaceSession getSession() {
        if (getParent() != null) {
            return getParent().getSession();
        }
        return null;
    }

    void assignLayer(SurfaceControl.Transaction t, int layer) {
        boolean changed = (layer == this.mLastLayer && this.mLastRelativeToLayer == null) ? false : true;
        if (this.mSurfaceControl != null && changed) {
            setLayer(t, layer);
            this.mLastLayer = layer;
            this.mLastRelativeToLayer = null;
        }
    }

    void assignRelativeLayer(SurfaceControl.Transaction t, SurfaceControl relativeTo, int layer) {
        boolean changed = (layer == this.mLastLayer && this.mLastRelativeToLayer == relativeTo) ? false : true;
        if (this.mSurfaceControl != null && changed) {
            setRelativeLayer(t, relativeTo, layer);
            this.mLastLayer = layer;
            this.mLastRelativeToLayer = relativeTo;
        }
    }

    protected void setLayer(SurfaceControl.Transaction t, int layer) {
        this.mSurfaceAnimator.setLayer(t, layer);
    }

    protected void setRelativeLayer(SurfaceControl.Transaction t, SurfaceControl relativeTo, int layer) {
        this.mSurfaceAnimator.setRelativeLayer(t, relativeTo, layer);
    }

    protected void reparentSurfaceControl(SurfaceControl.Transaction t, SurfaceControl newParent) {
        this.mSurfaceAnimator.reparent(t, newParent);
    }

    void assignChildLayers(SurfaceControl.Transaction t) {
        int layer = 0;
        for (int j = 0; j < this.mChildren.size(); j++) {
            WindowContainer wc = this.mChildren.get(j);
            wc.assignChildLayers(t);
            if (!wc.needsZBoost()) {
                wc.assignLayer(t, layer);
                layer++;
            }
        }
        for (int j2 = 0; j2 < this.mChildren.size(); j2++) {
            WindowContainer wc2 = this.mChildren.get(j2);
            if (wc2.needsZBoost()) {
                wc2.assignLayer(t, layer);
                layer++;
            }
        }
    }

    void assignChildLayers() {
        assignChildLayers(getSyncTransaction());
        scheduleAnimation();
    }

    boolean needsZBoost() {
        if (this.mNeedsZBoost) {
            return true;
        }
        for (int i = 0; i < this.mChildren.size(); i++) {
            if (this.mChildren.get(i).needsZBoost()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public void dumpDebug(ProtoOutputStream proto, long fieldId, int logLevel) {
        boolean isVisible = isVisible();
        if (logLevel == 2 && !isVisible) {
            return;
        }
        long token = proto.start(fieldId);
        super.dumpDebug(proto, 1146756268033L, logLevel);
        proto.write(1120986464258L, this.mOrientation);
        proto.write(1133871366147L, isVisible);
        if (this.mSurfaceAnimator.isAnimating()) {
            this.mSurfaceAnimator.dumpDebug(proto, 1146756268036L);
        }
        for (int i = 0; i < getChildCount(); i++) {
            long childToken = proto.start(2246267895813L);
            WindowContainer childAt = getChildAt(i);
            childAt.dumpDebug(proto, childAt.getProtoFieldId(), logLevel);
            proto.end(childToken);
        }
        proto.end(token);
    }

    long getProtoFieldId() {
        return 1146756268034L;
    }

    private WindowContainer<E>.ForAllWindowsConsumerWrapper obtainConsumerWrapper(Consumer<WindowState> consumer) {
        WindowContainer<E>.ForAllWindowsConsumerWrapper wrapper = (ForAllWindowsConsumerWrapper) this.mConsumerWrapperPool.acquire();
        if (wrapper == null) {
            wrapper = new ForAllWindowsConsumerWrapper();
        }
        wrapper.setConsumer(consumer);
        return wrapper;
    }

    private final class ForAllWindowsConsumerWrapper implements ToBooleanFunction<WindowState> {
        private Consumer<WindowState> mConsumer;

        private ForAllWindowsConsumerWrapper() {
        }

        void setConsumer(Consumer<WindowState> consumer) {
            this.mConsumer = consumer;
        }

        public boolean apply(WindowState w) {
            this.mConsumer.accept(w);
            return false;
        }

        void release() {
            this.mConsumer = null;
            WindowContainer.this.mConsumerWrapperPool.release(this);
        }
    }

    void applyMagnificationSpec(SurfaceControl.Transaction t, MagnificationSpec spec) {
        if (shouldMagnify()) {
            t.setMatrix(this.mSurfaceControl, spec.scale, 0.0f, 0.0f, spec.scale).setPosition(this.mSurfaceControl, spec.offsetX, spec.offsetY);
            this.mLastMagnificationSpec = spec;
            return;
        }
        clearMagnificationSpec(t);
        for (int i = 0; i < this.mChildren.size(); i++) {
            this.mChildren.get(i).applyMagnificationSpec(t, spec);
        }
    }

    void clearMagnificationSpec(SurfaceControl.Transaction t) {
        if (this.mLastMagnificationSpec != null) {
            t.setMatrix(this.mSurfaceControl, 1.0f, 0.0f, 0.0f, 1.0f).setPosition(this.mSurfaceControl, 0.0f, 0.0f);
        }
        this.mLastMagnificationSpec = null;
        for (int i = 0; i < this.mChildren.size(); i++) {
            this.mChildren.get(i).clearMagnificationSpec(t);
        }
    }

    void prepareSurfaces() {
        this.mCommittedReparentToAnimationLeash = this.mSurfaceAnimator.hasLeash();
        for (int i = 0; i < this.mChildren.size(); i++) {
            this.mChildren.get(i).prepareSurfaces();
        }
    }

    boolean hasCommittedReparentToAnimationLeash() {
        return this.mCommittedReparentToAnimationLeash;
    }

    void scheduleAnimation() {
        WindowContainer<WindowContainer> windowContainer = this.mParent;
        if (windowContainer != null) {
            windowContainer.scheduleAnimation();
        }
    }

    public SurfaceControl getSurfaceControl() {
        return this.mSurfaceControl;
    }

    public SurfaceControl.Transaction getSyncTransaction() {
        if (this.mUsingBLASTSyncTransaction) {
            return this.mBLASTSyncTransaction;
        }
        return getPendingTransaction();
    }

    public SurfaceControl.Transaction getPendingTransaction() {
        DisplayContent displayContent = getDisplayContent();
        if (displayContent != null && displayContent != this) {
            return displayContent.getPendingTransaction();
        }
        return this.mPendingTransaction;
    }

    void startAnimation(SurfaceControl.Transaction t, AnimationAdapter anim, boolean hidden, int type, SurfaceAnimator.OnAnimationFinishedCallback animationFinishedCallback) {
        this.mSurfaceAnimator.startAnimation(t, anim, hidden, type, animationFinishedCallback, this.mSurfaceFreezer);
    }

    void startAnimation(SurfaceControl.Transaction t, AnimationAdapter anim, boolean hidden, int type) {
        startAnimation(t, anim, hidden, type, null);
    }

    void transferAnimation(WindowContainer from) {
        this.mSurfaceAnimator.transferAnimation(from.mSurfaceAnimator);
    }

    void cancelAnimation() {
        doAnimationFinished(this.mSurfaceAnimator.getAnimationType(), this.mSurfaceAnimator.getAnimation());
        this.mSurfaceAnimator.cancelAnimation();
        this.mSurfaceFreezer.unfreeze(getPendingTransaction());
    }

    ArraySet<WindowContainer> getAnimationSources() {
        return this.mSurfaceAnimationSources;
    }

    public SurfaceControl getFreezeSnapshotTarget() {
        return null;
    }

    public SurfaceControl.Builder makeAnimationLeash() {
        return makeSurface().setContainerLayer();
    }

    public SurfaceControl getAnimationLeashParent() {
        return getParentSurfaceControl();
    }

    SurfaceControl getAppAnimationLayer(int animationLayer) {
        WindowContainer parent = getParent();
        if (parent != null) {
            return parent.getAppAnimationLayer(animationLayer);
        }
        return null;
    }

    Rect getAnimationBounds(int appStackClipMode) {
        return getBounds();
    }

    void getAnimationPosition(Point outPosition) {
        getRelativePosition(outPosition);
    }

    boolean applyAnimation(WindowManager.LayoutParams lp, int transit, boolean enter, boolean isVoiceInteraction, ArrayList<WindowContainer> sources) {
        if (this.mWmService.mDisableTransitionAnimation) {
            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
                String protoLogParam0 = String.valueOf(this);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM, -33096143, 0, null, protoLogParam0);
            }
            cancelAnimation();
            return false;
        }
        try {
            Trace.traceBegin(32L, "WC#applyAnimation");
            if (okToAnimate()) {
                applyAnimationUnchecked(lp, enter, transit, isVoiceInteraction, sources);
            } else {
                cancelAnimation();
            }
            return isAnimating();
        } finally {
            Trace.traceEnd(32L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    Pair<AnimationAdapter, AnimationAdapter> getAnimationAdapter(WindowManager.LayoutParams lp, int transit, boolean enter, boolean isVoiceInteraction) {
        float windowCornerRadius;
        int appStackClipMode = getDisplayContent().mAppTransition.getAppStackClipMode();
        Rect screenBounds = getAnimationBounds(appStackClipMode);
        this.mTmpRect.set(screenBounds);
        getAnimationPosition(this.mTmpPoint);
        if (!WindowManagerService.sHierarchicalAnimations) {
            this.mTmpPoint.set(this.mTmpRect.left, this.mTmpRect.top);
        }
        this.mTmpRect.offsetTo(0, 0);
        RemoteAnimationController remoteAnimationController = getDisplayContent().mAppTransition.getRemoteAnimationController();
        boolean isChanging = AppTransition.isChangeTransit(transit) && enter && isChangingAppTransition();
        Object localAnimationAdapter = null;
        if (remoteAnimationController != null && !this.mSurfaceAnimator.isAnimationStartDelayed()) {
            Rect localBounds = new Rect(this.mTmpRect);
            localBounds.offsetTo(this.mTmpPoint.x, this.mTmpPoint.y);
            Point point = this.mTmpPoint;
            if (isChanging) {
                localAnimationAdapter = this.mSurfaceFreezer.mFreezeBounds;
            }
            RemoteAnimationController.RemoteAnimationRecord adapters = remoteAnimationController.createRemoteAnimationRecord(this, point, localBounds, screenBounds, localAnimationAdapter);
            Pair<AnimationAdapter, AnimationAdapter> resultAdapters = new Pair<>(adapters.mAdapter, adapters.mThumbnailAdapter);
            return resultAdapters;
        }
        if (!isChanging) {
            this.mNeedsAnimationBoundsLayer = appStackClipMode == 0;
            Animation a = loadAnimation(lp, transit, enter, isVoiceInteraction);
            if (a == null) {
                Pair<AnimationAdapter, AnimationAdapter> resultAdapters2 = new Pair<>(null, null);
                return resultAdapters2;
            }
            if (!inMultiWindowMode()) {
                windowCornerRadius = getDisplayContent().getWindowCornerRadius();
            } else {
                windowCornerRadius = 0.0f;
            }
            AnimationAdapter adapter = new LocalAnimationAdapter(new WindowAnimationSpec(a, this.mTmpPoint, this.mTmpRect, getDisplayContent().mAppTransition.canSkipFirstFrame(), appStackClipMode, true, windowCornerRadius), getSurfaceAnimationRunner());
            Pair<AnimationAdapter, AnimationAdapter> resultAdapters3 = new Pair<>(adapter, null);
            this.mNeedsZBoost = a.getZAdjustment() == 1 || AppTransition.isClosingTransit(transit);
            this.mTransit = transit;
            this.mTransitFlags = getDisplayContent().mAppTransition.getTransitFlags();
            return resultAdapters3;
        }
        float durationScale = this.mWmService.getTransitionAnimationScaleLocked();
        DisplayInfo displayInfo = getDisplayContent().getDisplayInfo();
        this.mTmpRect.offsetTo(this.mTmpPoint.x, this.mTmpPoint.y);
        AnimationAdapter adapter2 = new LocalAnimationAdapter(new WindowChangeAnimationSpec(this.mSurfaceFreezer.mFreezeBounds, this.mTmpRect, displayInfo, durationScale, true, false), getSurfaceAnimationRunner());
        if (this.mSurfaceFreezer.mSnapshot != null) {
            localAnimationAdapter = new LocalAnimationAdapter(new WindowChangeAnimationSpec(this.mSurfaceFreezer.mFreezeBounds, this.mTmpRect, displayInfo, durationScale, true, true), getSurfaceAnimationRunner());
        }
        Pair<AnimationAdapter, AnimationAdapter> resultAdapters4 = new Pair<>(adapter2, localAnimationAdapter);
        this.mTransit = transit;
        this.mTransitFlags = getDisplayContent().mAppTransition.getTransitFlags();
        return resultAdapters4;
    }

    protected void applyAnimationUnchecked(WindowManager.LayoutParams lp, boolean enter, int transit, boolean isVoiceInteraction, ArrayList<WindowContainer> sources) {
        Pair<AnimationAdapter, AnimationAdapter> adapters = getAnimationAdapter(lp, transit, enter, isVoiceInteraction);
        AnimationAdapter adapter = (AnimationAdapter) adapters.first;
        AnimationAdapter thumbnailAdapter = (AnimationAdapter) adapters.second;
        if (adapter != null) {
            if (sources != null) {
                this.mSurfaceAnimationSources.addAll(sources);
            }
            startAnimation(getPendingTransaction(), adapter, !isVisible(), 1);
            if (adapter.getShowWallpaper()) {
                getDisplayContent().pendingLayoutChanges |= 4;
            }
            if (thumbnailAdapter != null) {
                this.mSurfaceFreezer.mSnapshot.startAnimation(getPendingTransaction(), thumbnailAdapter, 1, new SurfaceAnimator.OnAnimationFinishedCallback() { // from class: com.android.server.wm.-$$Lambda$WindowContainer$W-sszXlHtLhM67cNP4BrYetIqZA
                    @Override // com.android.server.wm.SurfaceAnimator.OnAnimationFinishedCallback
                    public final void onAnimationFinished(int i, AnimationAdapter animationAdapter) {
                        WindowContainer.lambda$applyAnimationUnchecked$13(i, animationAdapter);
                    }
                });
            }
        }
    }

    static /* synthetic */ void lambda$applyAnimationUnchecked$13(int type, AnimationAdapter anim) {
    }

    final SurfaceAnimationRunner getSurfaceAnimationRunner() {
        return this.mWmService.mSurfaceAnimationRunner;
    }

    private Animation loadAnimation(WindowManager.LayoutParams lp, int transit, boolean enter, boolean isVoiceInteraction) {
        boolean enter2;
        if (isOrganized()) {
            return null;
        }
        DisplayContent displayContent = getDisplayContent();
        DisplayInfo displayInfo = displayContent.getDisplayInfo();
        int width = displayInfo.appWidth;
        int height = displayInfo.appHeight;
        if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
            String protoLogParam0 = String.valueOf(this);
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM, 1584270979, 0, null, protoLogParam0);
        }
        Rect frame = new Rect(0, 0, width, height);
        Rect displayFrame = new Rect(0, 0, displayInfo.logicalWidth, displayInfo.logicalHeight);
        Rect insets = new Rect();
        Rect stableInsets = new Rect();
        Rect surfaceInsets = new Rect();
        getAnimationFrames(frame, insets, stableInsets, surfaceInsets);
        if (!this.mLaunchTaskBehind) {
            enter2 = enter;
        } else {
            enter2 = false;
        }
        if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
            String protoLogParam1 = String.valueOf(AppTransition.appTransitionToString(transit));
            boolean protoLogParam2 = enter2;
            String protoLogParam3 = String.valueOf(frame);
            String protoLogParam4 = String.valueOf(insets);
            String protoLogParam5 = String.valueOf(surfaceInsets);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 1831008694, 12, null, protoLogParam1, Boolean.valueOf(protoLogParam2), protoLogParam3, protoLogParam4, protoLogParam5);
        }
        Configuration displayConfig = displayContent.getConfiguration();
        Animation a = getDisplayContent().mAppTransition.loadAnimation(lp, transit, enter2, displayConfig.uiMode, displayConfig.orientation, frame, displayFrame, insets, surfaceInsets, stableInsets, isVoiceInteraction, inFreeformWindowingMode(), this);
        if (a != null) {
            if (a != null) {
                a.restrictDuration(BackupAgentTimeoutParameters.DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS);
            }
            int containingWidth = frame.width();
            int containingHeight = frame.height();
            a.initialize(containingWidth, containingHeight, width, height);
            a.scaleCurrentDuration(this.mWmService.getTransitionAnimationScaleLocked());
        }
        return a;
    }

    RemoteAnimationTarget createRemoteAnimationTarget(RemoteAnimationController.RemoteAnimationRecord record) {
        return null;
    }

    boolean canCreateRemoteAnimationTarget() {
        return false;
    }

    boolean okToDisplay() {
        DisplayContent dc = getDisplayContent();
        return dc != null && dc.okToDisplay();
    }

    boolean okToAnimate() {
        return okToAnimate(false);
    }

    boolean okToAnimate(boolean ignoreFrozen) {
        DisplayContent dc = getDisplayContent();
        return dc != null && dc.okToAnimate(ignoreFrozen);
    }

    public void commitPendingTransaction() {
        scheduleAnimation();
    }

    void reassignLayer(SurfaceControl.Transaction t) {
        WindowContainer parent = getParent();
        if (parent != null) {
            parent.assignChildLayers(t);
        }
    }

    void resetSurfacePositionForAnimationLeash(SurfaceControl.Transaction t) {
        t.setPosition(this.mSurfaceControl, 0.0f, 0.0f);
        this.mLastSurfacePosition.set(0, 0);
    }

    public void onAnimationLeashCreated(SurfaceControl.Transaction t, SurfaceControl leash) {
        this.mLastLayer = -1;
        reassignLayer(t);
        resetSurfacePositionForAnimationLeash(t);
    }

    public void onAnimationLeashLost(SurfaceControl.Transaction t) {
        this.mLastLayer = -1;
        this.mSurfaceFreezer.unfreeze(t);
        reassignLayer(t);
        updateSurfacePosition(t);
    }

    private void doAnimationFinished(int type, AnimationAdapter anim) {
        for (int i = 0; i < this.mSurfaceAnimationSources.size(); i++) {
            this.mSurfaceAnimationSources.valueAt(i).onAnimationFinished(type, anim);
        }
        this.mSurfaceAnimationSources.clear();
    }

    protected void onAnimationFinished(int type, AnimationAdapter anim) {
        doAnimationFinished(type, anim);
        this.mWmService.onAnimationFinished();
        this.mNeedsZBoost = false;
    }

    AnimationAdapter getAnimation() {
        return this.mSurfaceAnimator.getAnimation();
    }

    WindowContainer getAnimatingContainer(int flags, int typesToCheck) {
        if (isSelfAnimating(flags, typesToCheck)) {
            return this;
        }
        if ((flags & 2) != 0) {
            for (WindowContainer parent = getParent(); parent != null; parent = parent.getParent()) {
                if (parent.isSelfAnimating(flags, typesToCheck)) {
                    return parent;
                }
            }
        }
        if ((flags & 4) != 0) {
            for (int i = 0; i < this.mChildren.size(); i++) {
                WindowContainer wc = this.mChildren.get(i).getAnimatingContainer(flags & (-3), typesToCheck);
                if (wc != null) {
                    return wc;
                }
            }
            return null;
        }
        return null;
    }

    protected boolean isSelfAnimating(int flags, int typesToCheck) {
        if (!this.mSurfaceAnimator.isAnimating() || (this.mSurfaceAnimator.getAnimationType() & typesToCheck) <= 0) {
            return (flags & 1) != 0 && isWaitingForTransitionStart();
        }
        return true;
    }

    @Deprecated
    final WindowContainer getAnimatingContainer() {
        return getAnimatingContainer(2, -1);
    }

    void startDelayingAnimationStart() {
        this.mSurfaceAnimator.startDelayingAnimationStart();
    }

    void endDelayingAnimationStart() {
        this.mSurfaceAnimator.endDelayingAnimationStart();
    }

    public int getSurfaceWidth() {
        return this.mSurfaceControl.getWidth();
    }

    public int getSurfaceHeight() {
        return this.mSurfaceControl.getHeight();
    }

    void dump(PrintWriter pw, String prefix, boolean dumpAll) {
        if (this.mSurfaceAnimator.isAnimating()) {
            pw.print(prefix);
            pw.println("ContainerAnimator:");
            this.mSurfaceAnimator.dump(pw, prefix + "  ");
        }
        if (this.mLastOrientationSource != null && this == this.mDisplayContent) {
            pw.println(prefix + "mLastOrientationSource=" + this.mLastOrientationSource);
            pw.println(prefix + "deepestLastOrientationSource=" + getLastOrientationSource());
        }
    }

    final void updateSurfacePosition() {
        updateSurfacePosition(getSyncTransaction());
    }

    void updateSurfacePosition(SurfaceControl.Transaction t) {
        if (isOrganized() || this.mSurfaceControl == null || this.mSurfaceAnimator.hasLeash()) {
            return;
        }
        getRelativePosition(this.mTmpPos);
        if (this.mTmpPos.equals(this.mLastSurfacePosition)) {
            return;
        }
        t.setPosition(this.mSurfaceControl, this.mTmpPos.x, this.mTmpPos.y);
        this.mLastSurfacePosition.set(this.mTmpPos.x, this.mTmpPos.y);
    }

    Point getLastSurfacePosition() {
        return this.mLastSurfacePosition;
    }

    void getAnimationFrames(Rect outFrame, Rect outInsets, Rect outStableInsets, Rect outSurfaceInsets) {
        DisplayInfo displayInfo = getDisplayContent().getDisplayInfo();
        outFrame.set(0, 0, displayInfo.appWidth, displayInfo.appHeight);
        outInsets.setEmpty();
        outStableInsets.setEmpty();
        outSurfaceInsets.setEmpty();
    }

    void getRelativePosition(Point outPos) {
        if (isOrganized()) {
            outPos.set(0, 0);
            return;
        }
        Rect dispBounds = getBounds();
        outPos.set(dispBounds.left, dispBounds.top);
        WindowContainer parent = getParent();
        if (parent != null) {
            Rect parentBounds = parent.getBounds();
            outPos.offset(-parentBounds.left, -parentBounds.top);
        }
    }

    void waitForAllWindowsDrawn() {
        forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$WindowContainer$Nezf9LuhT9GSLKWzqEWp7WKs5W8
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$waitForAllWindowsDrawn$14$WindowContainer((WindowState) obj);
            }
        }, true);
    }

    public /* synthetic */ void lambda$waitForAllWindowsDrawn$14$WindowContainer(WindowState w) {
        w.requestDrawIfNeeded(this.mWaitingForDrawn);
    }

    Dimmer getDimmer() {
        WindowContainer<WindowContainer> windowContainer = this.mParent;
        if (windowContainer == null) {
            return null;
        }
        return windowContainer.getDimmer();
    }

    void setSurfaceControl(SurfaceControl sc) {
        this.mSurfaceControl = sc;
    }

    RemoteAnimationDefinition getRemoteAnimationDefinition() {
        return null;
    }

    Task asTask() {
        return null;
    }

    ActivityRecord asActivityRecord() {
        return null;
    }

    boolean isOrganized() {
        return false;
    }

    static WindowContainer fromBinder(IBinder binder) {
        return RemoteToken.fromBinder(binder).getContainer();
    }

    static class RemoteToken extends IWindowContainerToken.Stub {
        final WeakReference<WindowContainer> mWeakRef;
        private WindowContainerToken mWindowContainerToken;

        RemoteToken(WindowContainer container) {
            this.mWeakRef = new WeakReference<>(container);
        }

        WindowContainer getContainer() {
            return this.mWeakRef.get();
        }

        /* JADX WARN: Multi-variable type inference failed */
        static RemoteToken fromBinder(IBinder iBinder) {
            return (RemoteToken) iBinder;
        }

        WindowContainerToken toWindowContainerToken() {
            if (this.mWindowContainerToken == null) {
                this.mWindowContainerToken = new WindowContainerToken(this);
            }
            return this.mWindowContainerToken;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("RemoteToken{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(' ');
            sb.append(this.mWeakRef.get());
            sb.append('}');
            return sb.toString();
        }
    }

    public void onTransactionReady(int mSyncId, Set<WindowContainer> windowContainersReady) {
        if (this.mWaitingListener == null) {
            return;
        }
        windowContainersReady.add(this);
        this.mWaitingListener.onTransactionReady(this.mWaitingSyncId, windowContainersReady);
        this.mWaitingListener = null;
        this.mWaitingSyncId = -1;
    }

    boolean addChildrenToSyncSet(int localId) {
        boolean willSync = false;
        for (int i = 0; i < this.mChildren.size(); i++) {
            WindowContainer child = this.mChildren.get(i);
            willSync |= this.mBLASTSyncEngine.addToSyncSet(localId, child);
        }
        return willSync;
    }

    boolean setPendingListener(BLASTSyncEngine.TransactionReadyListener waitingListener, int waitingId) {
        if (!isVisible() || this.mWaitingListener != null) {
            return false;
        }
        this.mUsingBLASTSyncTransaction = true;
        this.mWaitingSyncId = waitingId;
        this.mWaitingListener = waitingListener;
        return true;
    }

    boolean prepareForSync(BLASTSyncEngine.TransactionReadyListener waitingListener, int waitingId) {
        boolean willSync = setPendingListener(waitingListener, waitingId);
        if (!willSync) {
            return false;
        }
        int localId = this.mBLASTSyncEngine.startSyncSet(this);
        boolean willSync2 = willSync | addChildrenToSyncSet(localId);
        this.mBLASTSyncEngine.setReady(localId);
        return willSync2;
    }

    boolean useBLASTSync() {
        return this.mUsingBLASTSyncTransaction;
    }

    void mergeBlastSyncTransaction(SurfaceControl.Transaction t) {
        t.merge(this.mBLASTSyncTransaction);
        this.mUsingBLASTSyncTransaction = false;
    }
}
