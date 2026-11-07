package com.android.server.wm;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.ArraySet;
import android.util.IntArray;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.Display;
import android.view.InsetsSource;
import android.view.MagnificationSpec;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.ViewConfiguration;
import android.view.WindowInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.android.internal.os.SomeArgs;
import com.android.server.wm.utils.RegionUtils;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
final class AccessibilityController {
    private static final Rect EMPTY_RECT = new Rect();
    private static final float[] sTempFloats = new float[9];
    private final WindowManagerService mService;
    private SparseArray<DisplayMagnifier> mDisplayMagnifiers = new SparseArray<>();
    private SparseArray<WindowsForAccessibilityObserver> mWindowsForAccessibilityObserver = new SparseArray<>();
    private boolean mAllObserversInitialized = true;

    public AccessibilityController(WindowManagerService service) {
        this.mService = service;
    }

    public boolean setMagnificationCallbacksLocked(int displayId, WindowManagerInternal.MagnificationCallbacks callbacks) {
        Display display;
        if (callbacks != null) {
            if (this.mDisplayMagnifiers.get(displayId) != null) {
                throw new IllegalStateException("Magnification callbacks already set!");
            }
            DisplayContent dc = this.mService.mRoot.getDisplayContent(displayId);
            if (dc == null || (display = dc.getDisplay()) == null || display.getType() == 4) {
                return false;
            }
            this.mDisplayMagnifiers.put(displayId, new DisplayMagnifier(this.mService, dc, display, callbacks));
            return true;
        }
        DisplayMagnifier displayMagnifier = this.mDisplayMagnifiers.get(displayId);
        if (displayMagnifier == null) {
            throw new IllegalStateException("Magnification callbacks already cleared!");
        }
        displayMagnifier.destroyLocked();
        this.mDisplayMagnifiers.remove(displayId);
        return true;
    }

    public boolean setWindowsForAccessibilityCallbackLocked(int displayId, WindowManagerInternal.WindowsForAccessibilityCallback callback) {
        DisplayContent dc = this.mService.mRoot.getDisplayContentOrCreate(displayId);
        if (dc == null) {
            return false;
        }
        if (callback != null) {
            if (isEmbeddedDisplay(dc)) {
                if (this.mWindowsForAccessibilityObserver.get(displayId) == null) {
                    handleWindowObserverOfEmbeddedDisplayLocked(displayId, dc.getParentWindow());
                }
                return false;
            }
            if (this.mWindowsForAccessibilityObserver.get(displayId) != null) {
                throw new IllegalStateException("Windows for accessibility callback of display " + displayId + " already set!");
            }
            WindowsForAccessibilityObserver observer = new WindowsForAccessibilityObserver(this.mService, displayId, callback);
            this.mWindowsForAccessibilityObserver.put(displayId, observer);
            this.mAllObserversInitialized &= observer.mInitialized;
        } else {
            if (isEmbeddedDisplay(dc)) {
                return true;
            }
            WindowsForAccessibilityObserver windowsForA11yObserver = this.mWindowsForAccessibilityObserver.get(displayId);
            if (windowsForA11yObserver == null) {
                throw new IllegalStateException("Windows for accessibility callback of display " + displayId + " already cleared!");
            }
            removeObserverOfEmbeddedDisplay(windowsForA11yObserver);
            this.mWindowsForAccessibilityObserver.remove(displayId);
        }
        return true;
    }

    public void performComputeChangedWindowsNotLocked(int displayId, boolean forceSend) {
        WindowsForAccessibilityObserver observer = null;
        synchronized (this.mService) {
            WindowsForAccessibilityObserver windowsForA11yObserver = this.mWindowsForAccessibilityObserver.get(displayId);
            if (windowsForA11yObserver != null) {
                observer = windowsForA11yObserver;
            }
        }
        if (observer != null) {
            observer.performComputeChangedWindowsNotLocked(forceSend);
        }
    }

    public void setMagnificationSpecLocked(int displayId, MagnificationSpec spec) {
        DisplayMagnifier displayMagnifier = this.mDisplayMagnifiers.get(displayId);
        if (displayMagnifier != null) {
            displayMagnifier.setMagnificationSpecLocked(spec);
        }
        WindowsForAccessibilityObserver windowsForA11yObserver = this.mWindowsForAccessibilityObserver.get(displayId);
        if (windowsForA11yObserver != null) {
            windowsForA11yObserver.scheduleComputeChangedWindowsLocked();
        }
    }

    public void getMagnificationRegionLocked(int displayId, Region outMagnificationRegion) {
        DisplayMagnifier displayMagnifier = this.mDisplayMagnifiers.get(displayId);
        if (displayMagnifier != null) {
            displayMagnifier.getMagnificationRegionLocked(outMagnificationRegion);
        }
    }

    public void onRectangleOnScreenRequestedLocked(int displayId, Rect rectangle) {
        DisplayMagnifier displayMagnifier = this.mDisplayMagnifiers.get(displayId);
        if (displayMagnifier != null) {
            displayMagnifier.onRectangleOnScreenRequestedLocked(rectangle);
        }
    }

    public void onWindowLayersChangedLocked(int displayId) {
        DisplayMagnifier displayMagnifier = this.mDisplayMagnifiers.get(displayId);
        if (displayMagnifier != null) {
            displayMagnifier.onWindowLayersChangedLocked();
        }
        WindowsForAccessibilityObserver windowsForA11yObserver = this.mWindowsForAccessibilityObserver.get(displayId);
        if (windowsForA11yObserver != null) {
            windowsForA11yObserver.scheduleComputeChangedWindowsLocked();
        }
    }

    public void onRotationChangedLocked(DisplayContent displayContent) {
        int displayId = displayContent.getDisplayId();
        DisplayMagnifier displayMagnifier = this.mDisplayMagnifiers.get(displayId);
        if (displayMagnifier != null) {
            displayMagnifier.onRotationChangedLocked(displayContent);
        }
        WindowsForAccessibilityObserver windowsForA11yObserver = this.mWindowsForAccessibilityObserver.get(displayId);
        if (windowsForA11yObserver != null) {
            windowsForA11yObserver.scheduleComputeChangedWindowsLocked();
        }
    }

    public void onAppWindowTransitionLocked(int displayId, int transition) {
        DisplayMagnifier displayMagnifier = this.mDisplayMagnifiers.get(displayId);
        if (displayMagnifier != null) {
            displayMagnifier.onAppWindowTransitionLocked(displayId, transition);
        }
    }

    public void onWindowTransitionLocked(WindowState windowState, int transition) {
        int displayId = windowState.getDisplayId();
        DisplayMagnifier displayMagnifier = this.mDisplayMagnifiers.get(displayId);
        if (displayMagnifier != null) {
            displayMagnifier.onWindowTransitionLocked(windowState, transition);
        }
        WindowsForAccessibilityObserver windowsForA11yObserver = this.mWindowsForAccessibilityObserver.get(displayId);
        if (windowsForA11yObserver != null) {
            windowsForA11yObserver.scheduleComputeChangedWindowsLocked();
        }
    }

    public void onWindowFocusChangedNotLocked(int displayId) {
        WindowsForAccessibilityObserver observer = null;
        synchronized (this.mService) {
            WindowsForAccessibilityObserver windowsForA11yObserver = this.mWindowsForAccessibilityObserver.get(displayId);
            if (windowsForA11yObserver != null) {
                observer = windowsForA11yObserver;
            }
        }
        if (observer != null) {
            observer.performComputeChangedWindowsNotLocked(false);
        }
        sendCallbackToUninitializedObserversIfNeeded();
    }

    private void sendCallbackToUninitializedObserversIfNeeded() throws Throwable {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (this.mAllObserversInitialized) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                if (this.mService.mRoot.getTopFocusedDisplayContent().mCurrentFocus == null) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                List<WindowsForAccessibilityObserver> unInitializedObservers = new ArrayList<>();
                for (int i = this.mWindowsForAccessibilityObserver.size() - 1; i >= 0; i--) {
                    WindowsForAccessibilityObserver observer = this.mWindowsForAccessibilityObserver.valueAt(i);
                    if (!observer.mInitialized) {
                        unInitializedObservers.add(observer);
                    }
                }
                this.mAllObserversInitialized = true;
                WindowManagerService.resetPriorityAfterLockedSection();
                boolean areAllObserversInitialized = true;
                for (int i2 = unInitializedObservers.size() - 1; i2 >= 0; i2--) {
                    WindowsForAccessibilityObserver observer2 = unInitializedObservers.get(i2);
                    observer2.performComputeChangedWindowsNotLocked(true);
                    areAllObserversInitialized &= observer2.mInitialized;
                }
                synchronized (this.mService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        this.mAllObserversInitialized &= areAllObserversInitialized;
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void onSomeWindowResizedOrMovedLocked(int... displayIds) {
        for (int i : displayIds) {
            WindowsForAccessibilityObserver windowsForA11yObserver = this.mWindowsForAccessibilityObserver.get(i);
            if (windowsForA11yObserver != null) {
                windowsForA11yObserver.scheduleComputeChangedWindowsLocked();
            }
        }
    }

    public void drawMagnifiedRegionBorderIfNeededLocked(int displayId, SurfaceControl.Transaction t) {
        DisplayMagnifier displayMagnifier = this.mDisplayMagnifiers.get(displayId);
        if (displayMagnifier != null) {
            displayMagnifier.drawMagnifiedRegionBorderIfNeededLocked(t);
        }
    }

    public MagnificationSpec getMagnificationSpecForWindowLocked(WindowState windowState) {
        int displayId = windowState.getDisplayId();
        DisplayMagnifier displayMagnifier = this.mDisplayMagnifiers.get(displayId);
        if (displayMagnifier != null) {
            return displayMagnifier.getMagnificationSpecForWindowLocked(windowState);
        }
        return null;
    }

    public boolean hasCallbacksLocked() {
        return this.mDisplayMagnifiers.size() > 0 || this.mWindowsForAccessibilityObserver.size() > 0;
    }

    public void setForceShowMagnifiableBoundsLocked(int displayId, boolean show) {
        DisplayMagnifier displayMagnifier = this.mDisplayMagnifiers.get(displayId);
        if (displayMagnifier != null) {
            displayMagnifier.setForceShowMagnifiableBoundsLocked(show);
            displayMagnifier.showMagnificationBoundsIfNeeded();
        }
    }

    public void handleWindowObserverOfEmbeddedDisplayLocked(int embeddedDisplayId, WindowState parentWindow) {
        if (embeddedDisplayId == 0 || parentWindow == null) {
            return;
        }
        WindowState candidate = parentWindow;
        while (candidate != null) {
            parentWindow = candidate;
            candidate = parentWindow.getDisplayContent().getParentWindow();
        }
        int parentDisplayId = parentWindow.getDisplayId();
        WindowsForAccessibilityObserver windowsForA11yObserver = this.mWindowsForAccessibilityObserver.get(parentDisplayId);
        if (windowsForA11yObserver != null) {
            windowsForA11yObserver.addEmbeddedDisplay(embeddedDisplayId);
            this.mWindowsForAccessibilityObserver.put(embeddedDisplayId, windowsForA11yObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void populateTransformationMatrixLocked(WindowState windowState, Matrix outMatrix) {
        windowState.getTransformationMatrix(sTempFloats, outMatrix);
    }

    void dump(PrintWriter pw, String prefix) {
        for (int i = 0; i < this.mDisplayMagnifiers.size(); i++) {
            DisplayMagnifier displayMagnifier = this.mDisplayMagnifiers.valueAt(i);
            if (displayMagnifier != null) {
                displayMagnifier.dump(pw, prefix + "Magnification display# " + this.mDisplayMagnifiers.keyAt(i));
            }
        }
        pw.println(prefix + "mWindowsForAccessibilityObserver=" + this.mWindowsForAccessibilityObserver);
    }

    private void removeObserverOfEmbeddedDisplay(WindowsForAccessibilityObserver observerOfParentDisplay) {
        IntArray embeddedDisplayIdList = observerOfParentDisplay.getAndClearEmbeddedDisplayIdList();
        for (int index = 0; index < embeddedDisplayIdList.size(); index++) {
            int embeddedDisplayId = embeddedDisplayIdList.get(index);
            this.mWindowsForAccessibilityObserver.remove(embeddedDisplayId);
        }
    }

    private static boolean isEmbeddedDisplay(DisplayContent dc) {
        Display display = dc.getDisplay();
        return display.getType() == 5 && dc.getParentWindow() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class DisplayMagnifier {
        private static final boolean DEBUG_LAYERS = false;
        private static final boolean DEBUG_RECTANGLE_REQUESTED = false;
        private static final boolean DEBUG_ROTATION = false;
        private static final boolean DEBUG_VIEWPORT_WINDOW = false;
        private static final boolean DEBUG_WINDOW_TRANSITIONS = false;
        private static final String LOG_TAG = "WindowManager";
        private final WindowManagerInternal.MagnificationCallbacks mCallbacks;
        private final Display mDisplay;
        private final DisplayContent mDisplayContent;
        private final Context mDisplayContext;
        private final Handler mHandler;
        private final long mLongAnimationDuration;
        private final WindowManagerService mService;
        private final Rect mTempRect1 = new Rect();
        private final Rect mTempRect2 = new Rect();
        private final Region mTempRegion1 = new Region();
        private final Region mTempRegion2 = new Region();
        private final Region mTempRegion3 = new Region();
        private final Region mTempRegion4 = new Region();
        private boolean mForceShowMagnifiableBounds = false;
        private final MagnifiedViewport mMagnifedViewport = new MagnifiedViewport();

        public DisplayMagnifier(WindowManagerService windowManagerService, DisplayContent displayContent, Display display, WindowManagerInternal.MagnificationCallbacks callbacks) {
            this.mDisplayContext = windowManagerService.mContext.createDisplayContext(display);
            this.mService = windowManagerService;
            this.mCallbacks = callbacks;
            this.mDisplayContent = displayContent;
            this.mDisplay = display;
            this.mHandler = new MyHandler(this.mService.mH.getLooper());
            this.mLongAnimationDuration = this.mDisplayContext.getResources().getInteger(R.integer.config_longAnimTime);
        }

        public void setMagnificationSpecLocked(MagnificationSpec spec) {
            this.mMagnifedViewport.updateMagnificationSpecLocked(spec);
            this.mMagnifedViewport.recomputeBoundsLocked();
            this.mService.applyMagnificationSpecLocked(this.mDisplay.getDisplayId(), spec);
            this.mService.scheduleAnimationLocked();
        }

        public void setForceShowMagnifiableBoundsLocked(boolean show) {
            this.mForceShowMagnifiableBounds = show;
            this.mMagnifedViewport.setMagnifiedRegionBorderShownLocked(show, true);
        }

        public boolean isForceShowingMagnifiableBoundsLocked() {
            return this.mForceShowMagnifiableBounds;
        }

        public void onRectangleOnScreenRequestedLocked(Rect rectangle) {
            if (!this.mMagnifedViewport.isMagnifyingLocked()) {
                return;
            }
            Rect magnifiedRegionBounds = this.mTempRect2;
            this.mMagnifedViewport.getMagnifiedFrameInContentCoordsLocked(magnifiedRegionBounds);
            if (magnifiedRegionBounds.contains(rectangle)) {
                return;
            }
            SomeArgs args = SomeArgs.obtain();
            args.argi1 = rectangle.left;
            args.argi2 = rectangle.top;
            args.argi3 = rectangle.right;
            args.argi4 = rectangle.bottom;
            this.mHandler.obtainMessage(2, args).sendToTarget();
        }

        public void onWindowLayersChangedLocked() {
            this.mMagnifedViewport.recomputeBoundsLocked();
            this.mService.scheduleAnimationLocked();
        }

        public void onRotationChangedLocked(DisplayContent displayContent) {
            this.mMagnifedViewport.onRotationChangedLocked(displayContent.getPendingTransaction());
            this.mHandler.sendEmptyMessage(4);
        }

        public void onAppWindowTransitionLocked(int displayId, int transition) {
            boolean magnifying = this.mMagnifedViewport.isMagnifyingLocked();
            if (magnifying) {
                switch (transition) {
                    case 6:
                    case 8:
                    case 10:
                    case 12:
                    case 13:
                    case 14:
                        this.mHandler.sendEmptyMessage(3);
                        break;
                }
            }
        }

        /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
            java.lang.UnsupportedOperationException
            	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
            	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
            	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
            	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
            	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
            	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
            */
        public void onWindowTransitionLocked(com.android.server.wm.WindowState r10, int r11) {
            /*
                r9 = this;
                com.android.server.wm.AccessibilityController$DisplayMagnifier$MagnifiedViewport r0 = r9.mMagnifedViewport
                boolean r0 = r0.isMagnifyingLocked()
                android.view.WindowManager$LayoutParams r1 = r10.mAttrs
                int r1 = r1.type
                r2 = 1
                if (r11 == r2) goto L11
                r2 = 3
                if (r11 == r2) goto L11
                goto L5e
            L11:
                if (r0 != 0) goto L14
                goto L5e
            L14:
                r2 = 2
                if (r1 == r2) goto L38
                r2 = 4
                if (r1 == r2) goto L38
                r2 = 1005(0x3ed, float:1.408E-42)
                if (r1 == r2) goto L38
                r2 = 2020(0x7e4, float:2.83E-42)
                if (r1 == r2) goto L38
                r2 = 2024(0x7e8, float:2.836E-42)
                if (r1 == r2) goto L38
                r2 = 2035(0x7f3, float:2.852E-42)
                if (r1 == r2) goto L38
                r2 = 2038(0x7f6, float:2.856E-42)
                if (r1 == r2) goto L38
                switch(r1) {
                    case 1000: goto L38;
                    case 1001: goto L38;
                    case 1002: goto L38;
                    case 1003: goto L38;
                    default: goto L31;
                }
            L31:
                switch(r1) {
                    case 2001: goto L38;
                    case 2002: goto L38;
                    case 2003: goto L38;
                    default: goto L34;
                }
            L34:
                switch(r1) {
                    case 2005: goto L38;
                    case 2006: goto L38;
                    case 2007: goto L38;
                    case 2008: goto L38;
                    case 2009: goto L38;
                    case 2010: goto L38;
                    default: goto L37;
                }
            L37:
                goto L5e
            L38:
                android.graphics.Rect r2 = r9.mTempRect2
                com.android.server.wm.AccessibilityController$DisplayMagnifier$MagnifiedViewport r3 = r9.mMagnifedViewport
                r3.getMagnifiedFrameInContentCoordsLocked(r2)
                android.graphics.Rect r3 = r9.mTempRect1
                android.graphics.Region r4 = r9.mTempRegion1
                r10.getTouchableRegion(r4)
                android.graphics.Region r4 = r9.mTempRegion1
                r4.getBounds(r3)
                boolean r4 = r2.intersect(r3)
                if (r4 != 0) goto L5e
                com.android.server.wm.WindowManagerInternal$MagnificationCallbacks r4 = r9.mCallbacks
                int r5 = r3.left
                int r6 = r3.top
                int r7 = r3.right
                int r8 = r3.bottom
                r4.onRectangleOnScreenRequested(r5, r6, r7, r8)
            L5e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.AccessibilityController.DisplayMagnifier.onWindowTransitionLocked(com.android.server.wm.WindowState, int):void");
        }

        public MagnificationSpec getMagnificationSpecForWindowLocked(WindowState windowState) {
            MagnificationSpec spec = this.mMagnifedViewport.getMagnificationSpecLocked();
            if (spec != null && !spec.isNop() && !windowState.shouldMagnify()) {
                return null;
            }
            return spec;
        }

        public void getMagnificationRegionLocked(Region outMagnificationRegion) {
            this.mMagnifedViewport.recomputeBoundsLocked();
            this.mMagnifedViewport.getMagnificationRegionLocked(outMagnificationRegion);
        }

        public void destroyLocked() {
            this.mMagnifedViewport.destroyWindow();
        }

        public void showMagnificationBoundsIfNeeded() {
            this.mHandler.obtainMessage(5).sendToTarget();
        }

        public void drawMagnifiedRegionBorderIfNeededLocked(SurfaceControl.Transaction t) {
            this.mMagnifedViewport.drawWindowIfNeededLocked(t);
        }

        void dump(PrintWriter pw, String prefix) {
            this.mMagnifedViewport.dump(pw, prefix);
        }

        /* JADX INFO: Access modifiers changed from: private */
        final class MagnifiedViewport {
            private final float mBorderWidth;
            private final Path mCircularPath;
            private final int mDrawBorderInset;
            private boolean mFullRedrawNeeded;
            private final int mHalfBorderWidth;
            private final ViewportWindow mWindow;
            private final SparseArray<WindowState> mTempWindowStates = new SparseArray<>();
            private final RectF mTempRectF = new RectF();
            private final Point mTempPoint = new Point();
            private final Matrix mTempMatrix = new Matrix();
            private final Region mMagnificationRegion = new Region();
            private final Region mOldMagnificationRegion = new Region();
            private final MagnificationSpec mMagnificationSpec = MagnificationSpec.obtain();
            private int mTempLayer = 0;

            public MagnifiedViewport() {
                float dimension = DisplayMagnifier.this.mDisplayContext.getResources().getDimension(R.dimen.autofill_dataset_picker_max_width);
                this.mBorderWidth = dimension;
                this.mHalfBorderWidth = (int) Math.ceil(dimension / 2.0f);
                this.mDrawBorderInset = ((int) this.mBorderWidth) / 2;
                this.mWindow = new ViewportWindow(DisplayMagnifier.this.mDisplayContext);
                if (DisplayMagnifier.this.mDisplayContext.getResources().getConfiguration().isScreenRound()) {
                    this.mCircularPath = new Path();
                    DisplayMagnifier.this.mDisplay.getRealSize(this.mTempPoint);
                    int centerXY = this.mTempPoint.x / 2;
                    this.mCircularPath.addCircle(centerXY, centerXY, centerXY, Path.Direction.CW);
                } else {
                    this.mCircularPath = null;
                }
                recomputeBoundsLocked();
            }

            public void getMagnificationRegionLocked(Region outMagnificationRegion) {
                outMagnificationRegion.set(this.mMagnificationRegion);
            }

            public void updateMagnificationSpecLocked(MagnificationSpec spec) {
                if (spec != null) {
                    this.mMagnificationSpec.initialize(spec.scale, spec.offsetX, spec.offsetY);
                } else {
                    this.mMagnificationSpec.clear();
                }
                if (!DisplayMagnifier.this.mHandler.hasMessages(5)) {
                    setMagnifiedRegionBorderShownLocked(isMagnifyingLocked() || DisplayMagnifier.this.isForceShowingMagnifiableBoundsLocked(), true);
                }
            }

            public void recomputeBoundsLocked() {
                DisplayMagnifier.this.mDisplay.getRealSize(this.mTempPoint);
                int screenWidth = this.mTempPoint.x;
                int screenHeight = this.mTempPoint.y;
                this.mMagnificationRegion.set(0, 0, 0, 0);
                Region availableBounds = DisplayMagnifier.this.mTempRegion1;
                availableBounds.set(0, 0, screenWidth, screenHeight);
                Path path = this.mCircularPath;
                if (path != null) {
                    availableBounds.setPath(path, availableBounds);
                }
                Region nonMagnifiedBounds = DisplayMagnifier.this.mTempRegion4;
                nonMagnifiedBounds.set(0, 0, 0, 0);
                SparseArray<WindowState> visibleWindows = this.mTempWindowStates;
                visibleWindows.clear();
                populateWindowsOnScreenLocked(visibleWindows);
                int visibleWindowCount = visibleWindows.size();
                for (int i = visibleWindowCount - 1; i >= 0; i--) {
                    WindowState windowState = visibleWindows.valueAt(i);
                    if (windowState.mAttrs.type != 2027 && (windowState.mAttrs.privateFlags & 1048576) == 0) {
                        Matrix matrix = this.mTempMatrix;
                        AccessibilityController.populateTransformationMatrixLocked(windowState, matrix);
                        Region touchableRegion = DisplayMagnifier.this.mTempRegion3;
                        windowState.getTouchableRegion(touchableRegion);
                        Rect touchableFrame = DisplayMagnifier.this.mTempRect1;
                        touchableRegion.getBounds(touchableFrame);
                        RectF windowFrame = this.mTempRectF;
                        windowFrame.set(touchableFrame);
                        windowFrame.offset(-windowState.getFrameLw().left, -windowState.getFrameLw().top);
                        matrix.mapRect(windowFrame);
                        Region windowBounds = DisplayMagnifier.this.mTempRegion2;
                        windowBounds.set((int) windowFrame.left, (int) windowFrame.top, (int) windowFrame.right, (int) windowFrame.bottom);
                        Region portionOfWindowAlreadyAccountedFor = DisplayMagnifier.this.mTempRegion3;
                        portionOfWindowAlreadyAccountedFor.set(this.mMagnificationRegion);
                        portionOfWindowAlreadyAccountedFor.op(nonMagnifiedBounds, Region.Op.UNION);
                        windowBounds.op(portionOfWindowAlreadyAccountedFor, Region.Op.DIFFERENCE);
                        if (windowState.shouldMagnify()) {
                            this.mMagnificationRegion.op(windowBounds, Region.Op.UNION);
                            this.mMagnificationRegion.op(availableBounds, Region.Op.INTERSECT);
                        } else {
                            nonMagnifiedBounds.op(windowBounds, Region.Op.UNION);
                            availableBounds.op(windowBounds, Region.Op.DIFFERENCE);
                        }
                        if (AccessibilityController.isUntouchableNavigationBar(windowState, DisplayMagnifier.this.mTempRegion3)) {
                            Rect navBarInsets = AccessibilityController.getNavBarInsets(DisplayMagnifier.this.mDisplayContent);
                            nonMagnifiedBounds.op(navBarInsets, Region.Op.UNION);
                            availableBounds.op(navBarInsets, Region.Op.DIFFERENCE);
                        }
                        if (windowState.isLetterboxedForDisplayCutoutLw()) {
                            Region letterboxBounds = getLetterboxBounds(windowState);
                            nonMagnifiedBounds.op(letterboxBounds, Region.Op.UNION);
                            availableBounds.op(letterboxBounds, Region.Op.DIFFERENCE);
                        }
                        Region accountedBounds = DisplayMagnifier.this.mTempRegion2;
                        accountedBounds.set(this.mMagnificationRegion);
                        accountedBounds.op(nonMagnifiedBounds, Region.Op.UNION);
                        accountedBounds.op(0, 0, screenWidth, screenHeight, Region.Op.INTERSECT);
                        if (accountedBounds.isRect()) {
                            Rect accountedFrame = DisplayMagnifier.this.mTempRect1;
                            accountedBounds.getBounds(accountedFrame);
                            if (accountedFrame.width() == screenWidth && accountedFrame.height() == screenHeight) {
                                break;
                            }
                        }
                    }
                }
                visibleWindows.clear();
                Region region = this.mMagnificationRegion;
                int i2 = this.mDrawBorderInset;
                region.op(i2, i2, screenWidth - i2, screenHeight - i2, Region.Op.INTERSECT);
                boolean magnifiedChanged = !this.mOldMagnificationRegion.equals(this.mMagnificationRegion);
                if (magnifiedChanged) {
                    this.mWindow.setBounds(this.mMagnificationRegion);
                    Rect dirtyRect = DisplayMagnifier.this.mTempRect1;
                    if (!this.mFullRedrawNeeded) {
                        Region dirtyRegion = DisplayMagnifier.this.mTempRegion3;
                        dirtyRegion.set(this.mMagnificationRegion);
                        dirtyRegion.op(this.mOldMagnificationRegion, Region.Op.XOR);
                        dirtyRegion.getBounds(dirtyRect);
                        this.mWindow.invalidate(dirtyRect);
                    } else {
                        this.mFullRedrawNeeded = false;
                        int i3 = this.mDrawBorderInset;
                        dirtyRect.set(i3, i3, screenWidth - i3, screenHeight - i3);
                        this.mWindow.invalidate(dirtyRect);
                    }
                    this.mOldMagnificationRegion.set(this.mMagnificationRegion);
                    SomeArgs args = SomeArgs.obtain();
                    args.arg1 = Region.obtain(this.mMagnificationRegion);
                    DisplayMagnifier.this.mHandler.obtainMessage(1, args).sendToTarget();
                }
            }

            private Region getLetterboxBounds(WindowState windowState) {
                ActivityRecord appToken = windowState.mActivityRecord;
                if (appToken != null) {
                    DisplayMagnifier.this.mDisplay.getRealSize(this.mTempPoint);
                    Rect letterboxInsets = appToken.getLetterboxInsets();
                    int screenWidth = this.mTempPoint.x;
                    int screenHeight = this.mTempPoint.y;
                    Rect nonLetterboxRect = DisplayMagnifier.this.mTempRect1;
                    Region letterboxBounds = DisplayMagnifier.this.mTempRegion3;
                    nonLetterboxRect.set(0, 0, screenWidth, screenHeight);
                    nonLetterboxRect.inset(letterboxInsets);
                    letterboxBounds.set(0, 0, screenWidth, screenHeight);
                    letterboxBounds.op(nonLetterboxRect, Region.Op.DIFFERENCE);
                    return letterboxBounds;
                }
                return new Region();
            }

            public void onRotationChangedLocked(SurfaceControl.Transaction t) {
                if (isMagnifyingLocked() || DisplayMagnifier.this.isForceShowingMagnifiableBoundsLocked()) {
                    setMagnifiedRegionBorderShownLocked(false, false);
                    long delay = (long) (DisplayMagnifier.this.mLongAnimationDuration * DisplayMagnifier.this.mService.getWindowAnimationScaleLocked());
                    Message message = DisplayMagnifier.this.mHandler.obtainMessage(5);
                    DisplayMagnifier.this.mHandler.sendMessageDelayed(message, delay);
                }
                recomputeBoundsLocked();
                this.mWindow.updateSize(t);
            }

            public void setMagnifiedRegionBorderShownLocked(boolean shown, boolean animate) {
                if (shown) {
                    this.mFullRedrawNeeded = true;
                    this.mOldMagnificationRegion.set(0, 0, 0, 0);
                }
                this.mWindow.setShown(shown, animate);
            }

            public void getMagnifiedFrameInContentCoordsLocked(Rect rect) {
                MagnificationSpec spec = this.mMagnificationSpec;
                this.mMagnificationRegion.getBounds(rect);
                rect.offset((int) (-spec.offsetX), (int) (-spec.offsetY));
                rect.scale(1.0f / spec.scale);
            }

            public boolean isMagnifyingLocked() {
                return this.mMagnificationSpec.scale > 1.0f;
            }

            public MagnificationSpec getMagnificationSpecLocked() {
                return this.mMagnificationSpec;
            }

            public void drawWindowIfNeededLocked(SurfaceControl.Transaction t) {
                recomputeBoundsLocked();
                this.mWindow.drawIfNeeded(t);
            }

            public void destroyWindow() {
                this.mWindow.releaseSurface();
            }

            private void populateWindowsOnScreenLocked(final SparseArray<WindowState> outWindows) {
                this.mTempLayer = 0;
                DisplayMagnifier.this.mDisplayContent.forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$AccessibilityController$DisplayMagnifier$MagnifiedViewport$ZNyFGy-UXiWV1D2yZGvH-9qN0AA
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$populateWindowsOnScreenLocked$0$AccessibilityController$DisplayMagnifier$MagnifiedViewport(outWindows, (WindowState) obj);
                    }
                }, false);
            }

            public /* synthetic */ void lambda$populateWindowsOnScreenLocked$0$AccessibilityController$DisplayMagnifier$MagnifiedViewport(SparseArray outWindows, WindowState w) {
                if (w.isOnScreen() && w.isVisibleLw() && w.mAttrs.alpha != 0.0f) {
                    int i = this.mTempLayer + 1;
                    this.mTempLayer = i;
                    outWindows.put(i, w);
                }
            }

            void dump(PrintWriter pw, String prefix) {
                this.mWindow.dump(pw, prefix);
            }

            private final class ViewportWindow {
                private static final String SURFACE_TITLE = "Magnification Overlay";
                private int mAlpha;
                private final AnimationController mAnimationController;
                private boolean mInvalidated;
                private boolean mShown;
                private final Surface mSurface;
                private final SurfaceControl mSurfaceControl;
                private final Region mBounds = new Region();
                private final Rect mDirtyRect = new Rect();
                private final Paint mPaint = new Paint();

                public ViewportWindow(Context context) {
                    this.mSurface = DisplayMagnifier.this.mService.mSurfaceFactory.get();
                    SurfaceControl surfaceControl = null;
                    try {
                        DisplayMagnifier.this.mDisplay.getRealSize(MagnifiedViewport.this.mTempPoint);
                        surfaceControl = DisplayMagnifier.this.mDisplayContent.makeOverlay().setName(SURFACE_TITLE).setBufferSize(MagnifiedViewport.this.mTempPoint.x, MagnifiedViewport.this.mTempPoint.y).setFormat(-3).setCallsite("ViewportWindow").build();
                    } catch (Surface.OutOfResourcesException e) {
                    }
                    this.mSurfaceControl = surfaceControl;
                    SurfaceControl.Transaction t = DisplayMagnifier.this.mService.mTransactionFactory.get();
                    int layer = DisplayMagnifier.this.mService.mPolicy.getWindowLayerFromTypeLw(2027) * 10000;
                    t.setLayer(this.mSurfaceControl, layer).setPosition(this.mSurfaceControl, 0.0f, 0.0f);
                    InputMonitor.setTrustedOverlayInputInfo(this.mSurfaceControl, t, DisplayMagnifier.this.mDisplayContent.getDisplayId(), SURFACE_TITLE);
                    t.apply();
                    this.mSurface.copyFrom(this.mSurfaceControl);
                    this.mAnimationController = new AnimationController(context, DisplayMagnifier.this.mService.mH.getLooper());
                    TypedValue typedValue = new TypedValue();
                    context.getTheme().resolveAttribute(R.attr.colorActivatedHighlight, typedValue, true);
                    int borderColor = context.getColor(typedValue.resourceId);
                    this.mPaint.setStyle(Paint.Style.STROKE);
                    this.mPaint.setStrokeWidth(MagnifiedViewport.this.mBorderWidth);
                    this.mPaint.setColor(borderColor);
                    this.mInvalidated = true;
                }

                public void setShown(boolean shown, boolean animate) {
                    synchronized (DisplayMagnifier.this.mService.mGlobalLock) {
                        try {
                            WindowManagerService.boostPriorityForLockedSection();
                            if (this.mShown == shown) {
                                return;
                            }
                            this.mShown = shown;
                            this.mAnimationController.onFrameShownStateChanged(shown, animate);
                        } finally {
                            WindowManagerService.resetPriorityAfterLockedSection();
                        }
                    }
                }

                public int getAlpha() {
                    int i;
                    synchronized (DisplayMagnifier.this.mService.mGlobalLock) {
                        try {
                            WindowManagerService.boostPriorityForLockedSection();
                            i = this.mAlpha;
                        } finally {
                            WindowManagerService.resetPriorityAfterLockedSection();
                        }
                    }
                    return i;
                }

                public void setAlpha(int alpha) {
                    synchronized (DisplayMagnifier.this.mService.mGlobalLock) {
                        try {
                            WindowManagerService.boostPriorityForLockedSection();
                            if (this.mAlpha == alpha) {
                                return;
                            }
                            this.mAlpha = alpha;
                            invalidate(null);
                        } finally {
                            WindowManagerService.resetPriorityAfterLockedSection();
                        }
                    }
                }

                public void setBounds(Region bounds) {
                    synchronized (DisplayMagnifier.this.mService.mGlobalLock) {
                        try {
                            WindowManagerService.boostPriorityForLockedSection();
                            if (this.mBounds.equals(bounds)) {
                                return;
                            }
                            this.mBounds.set(bounds);
                            invalidate(this.mDirtyRect);
                        } finally {
                            WindowManagerService.resetPriorityAfterLockedSection();
                        }
                    }
                }

                public void updateSize(SurfaceControl.Transaction t) {
                    synchronized (DisplayMagnifier.this.mService.mGlobalLock) {
                        try {
                            WindowManagerService.boostPriorityForLockedSection();
                            DisplayMagnifier.this.mDisplay.getRealSize(MagnifiedViewport.this.mTempPoint);
                            t.setBufferSize(this.mSurfaceControl, MagnifiedViewport.this.mTempPoint.x, MagnifiedViewport.this.mTempPoint.y);
                            invalidate(this.mDirtyRect);
                        } finally {
                            WindowManagerService.resetPriorityAfterLockedSection();
                        }
                    }
                }

                public void invalidate(Rect dirtyRect) {
                    if (dirtyRect != null) {
                        this.mDirtyRect.set(dirtyRect);
                    } else {
                        this.mDirtyRect.setEmpty();
                    }
                    this.mInvalidated = true;
                    DisplayMagnifier.this.mService.scheduleAnimationLocked();
                }

                public void drawIfNeeded(SurfaceControl.Transaction t) {
                    synchronized (DisplayMagnifier.this.mService.mGlobalLock) {
                        try {
                            WindowManagerService.boostPriorityForLockedSection();
                            if (this.mInvalidated) {
                                this.mInvalidated = false;
                                if (this.mAlpha > 0) {
                                    Canvas canvas = null;
                                    try {
                                        if (this.mDirtyRect.isEmpty()) {
                                            this.mBounds.getBounds(this.mDirtyRect);
                                        }
                                        this.mDirtyRect.inset(-MagnifiedViewport.this.mHalfBorderWidth, -MagnifiedViewport.this.mHalfBorderWidth);
                                        canvas = this.mSurface.lockCanvas(this.mDirtyRect);
                                    } catch (Surface.OutOfResourcesException e) {
                                    } catch (IllegalArgumentException e2) {
                                    }
                                    if (canvas == null) {
                                        return;
                                    }
                                    canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                                    this.mPaint.setAlpha(this.mAlpha);
                                    Path path = this.mBounds.getBoundaryPath();
                                    canvas.drawPath(path, this.mPaint);
                                    this.mSurface.unlockCanvasAndPost(canvas);
                                    t.show(this.mSurfaceControl);
                                } else {
                                    t.hide(this.mSurfaceControl);
                                }
                            }
                        } finally {
                            WindowManagerService.resetPriorityAfterLockedSection();
                        }
                    }
                }

                public void releaseSurface() {
                    DisplayMagnifier.this.mService.mTransactionFactory.get().remove(this.mSurfaceControl).apply();
                    this.mSurface.release();
                }

                void dump(PrintWriter pw, String prefix) {
                    pw.println(prefix + " mBounds= " + this.mBounds + " mDirtyRect= " + this.mDirtyRect + " mWidth= " + this.mSurfaceControl.getWidth() + " mHeight= " + this.mSurfaceControl.getHeight());
                }

                private final class AnimationController extends Handler {
                    private static final int MAX_ALPHA = 255;
                    private static final int MIN_ALPHA = 0;
                    private static final int MSG_FRAME_SHOWN_STATE_CHANGED = 1;
                    private static final String PROPERTY_NAME_ALPHA = "alpha";
                    private final ValueAnimator mShowHideFrameAnimator;

                    public AnimationController(Context context, Looper looper) {
                        super(looper);
                        this.mShowHideFrameAnimator = ObjectAnimator.ofInt(ViewportWindow.this, PROPERTY_NAME_ALPHA, 0, 255);
                        Interpolator interpolator = new DecelerateInterpolator(2.5f);
                        long longAnimationDuration = context.getResources().getInteger(R.integer.config_longAnimTime);
                        this.mShowHideFrameAnimator.setInterpolator(interpolator);
                        this.mShowHideFrameAnimator.setDuration(longAnimationDuration);
                    }

                    public void onFrameShownStateChanged(boolean z, boolean z2) {
                        obtainMessage(1, z ? 1 : 0, z2 ? 1 : 0).sendToTarget();
                    }

                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        if (message.what == 1) {
                            boolean shown = message.arg1 == 1;
                            boolean animate = message.arg2 == 1;
                            if (animate) {
                                if (this.mShowHideFrameAnimator.isRunning()) {
                                    this.mShowHideFrameAnimator.reverse();
                                    return;
                                } else if (shown) {
                                    this.mShowHideFrameAnimator.start();
                                    return;
                                } else {
                                    this.mShowHideFrameAnimator.reverse();
                                    return;
                                }
                            }
                            this.mShowHideFrameAnimator.cancel();
                            if (shown) {
                                ViewportWindow.this.setAlpha(255);
                            } else {
                                ViewportWindow.this.setAlpha(0);
                            }
                        }
                    }
                }
            }
        }

        private class MyHandler extends Handler {
            public static final int MESSAGE_NOTIFY_MAGNIFICATION_REGION_CHANGED = 1;
            public static final int MESSAGE_NOTIFY_RECTANGLE_ON_SCREEN_REQUESTED = 2;
            public static final int MESSAGE_NOTIFY_ROTATION_CHANGED = 4;
            public static final int MESSAGE_NOTIFY_USER_CONTEXT_CHANGED = 3;
            public static final int MESSAGE_SHOW_MAGNIFIED_REGION_BOUNDS_IF_NEEDED = 5;

            public MyHandler(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = message.what;
                if (i == 1) {
                    Region magnifiedBounds = (Region) ((SomeArgs) message.obj).arg1;
                    DisplayMagnifier.this.mCallbacks.onMagnificationRegionChanged(magnifiedBounds);
                    magnifiedBounds.recycle();
                    return;
                }
                if (i == 2) {
                    SomeArgs args = (SomeArgs) message.obj;
                    int left = args.argi1;
                    int top = args.argi2;
                    int right = args.argi3;
                    int bottom = args.argi4;
                    DisplayMagnifier.this.mCallbacks.onRectangleOnScreenRequested(left, top, right, bottom);
                    args.recycle();
                    return;
                }
                if (i == 3) {
                    DisplayMagnifier.this.mCallbacks.onUserContextChanged();
                    return;
                }
                if (i == 4) {
                    int rotation = message.arg1;
                    DisplayMagnifier.this.mCallbacks.onRotationChanged(rotation);
                    return;
                }
                if (i == 5) {
                    synchronized (DisplayMagnifier.this.mService.mGlobalLock) {
                        try {
                            WindowManagerService.boostPriorityForLockedSection();
                            if (DisplayMagnifier.this.mMagnifedViewport.isMagnifyingLocked() || DisplayMagnifier.this.isForceShowingMagnifiableBoundsLocked()) {
                                DisplayMagnifier.this.mMagnifedViewport.setMagnifiedRegionBorderShownLocked(true, true);
                                DisplayMagnifier.this.mService.scheduleAnimationLocked();
                            }
                        } finally {
                            WindowManagerService.resetPriorityAfterLockedSection();
                        }
                    }
                }
            }
        }
    }

    static boolean isUntouchableNavigationBar(WindowState windowState, Region touchableRegion) {
        if (windowState.mAttrs.type != 2019) {
            return false;
        }
        windowState.getTouchableRegion(touchableRegion);
        return touchableRegion.isEmpty();
    }

    static Rect getNavBarInsets(DisplayContent displayContent) {
        InsetsSource source = displayContent.getInsetsStateController().getRawInsetsState().peekSource(1);
        return source != null ? source.getFrame() : EMPTY_RECT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class WindowsForAccessibilityObserver {
        private static final boolean DEBUG = false;
        private static final String LOG_TAG = "WindowManager";
        private final WindowManagerInternal.WindowsForAccessibilityCallback mCallback;
        private final int mDisplayId;
        private final Handler mHandler;
        private boolean mInitialized;
        private final WindowManagerService mService;
        private final SparseArray<WindowState> mTempWindowStates = new SparseArray<>();
        private final Set<IBinder> mTempBinderSet = new ArraySet();
        private final RectF mTempRectF = new RectF();
        private final Matrix mTempMatrix = new Matrix();
        private final Point mTempPoint = new Point();
        private final Region mTempRegion = new Region();
        private final Region mTempRegion1 = new Region();
        private final IntArray mEmbeddedDisplayIdList = new IntArray(0);
        private final long mRecurringAccessibilityEventsIntervalMillis = ViewConfiguration.getSendRecurringAccessibilityEventsInterval();

        public WindowsForAccessibilityObserver(WindowManagerService windowManagerService, int displayId, WindowManagerInternal.WindowsForAccessibilityCallback callback) throws Throwable {
            this.mService = windowManagerService;
            this.mCallback = callback;
            this.mDisplayId = displayId;
            this.mHandler = new MyHandler(this.mService.mH.getLooper());
            computeChangedWindows(true);
        }

        public void performComputeChangedWindowsNotLocked(boolean forceSend) throws Throwable {
            this.mHandler.removeMessages(1);
            computeChangedWindows(forceSend);
        }

        public void scheduleComputeChangedWindowsLocked() {
            if (!this.mHandler.hasMessages(1)) {
                this.mHandler.sendEmptyMessageDelayed(1, this.mRecurringAccessibilityEventsIntervalMillis);
            }
        }

        IntArray getAndClearEmbeddedDisplayIdList() {
            IntArray returnedArray = new IntArray(this.mEmbeddedDisplayIdList.size());
            returnedArray.addAll(this.mEmbeddedDisplayIdList);
            this.mEmbeddedDisplayIdList.clear();
            return returnedArray;
        }

        void addEmbeddedDisplay(int displayId) {
            if (displayId == this.mDisplayId) {
                return;
            }
            this.mEmbeddedDisplayIdList.add(displayId);
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x017d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void computeChangedWindows(boolean r23) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 383
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.AccessibilityController.WindowsForAccessibilityObserver.computeChangedWindows(boolean):void");
        }

        private boolean windowMattersToAccessibility(WindowState windowState, Region regionInScreen, Region unaccountedSpace, HashSet<Integer> skipRemainingWindowsForTasks) {
            RecentsAnimationController controller = this.mService.getRecentsAnimationController();
            if (controller != null && controller.shouldIgnoreForAccessibility(windowState)) {
                return false;
            }
            if (windowState.isFocused()) {
                return true;
            }
            Task task = windowState.getTask();
            if (task != null && skipRemainingWindowsForTasks.contains(Integer.valueOf(task.mTaskId))) {
                return false;
            }
            if ((windowState.mAttrs.flags & 16) != 0 && windowState.mAttrs.type != 2034) {
                return false;
            }
            unaccountedSpace.quickReject(regionInScreen);
            return isReportedWindowType(windowState.mAttrs.type);
        }

        private void updateUnaccountedSpace(WindowState windowState, Region regionInScreen, Region unaccountedSpace, HashSet<Integer> skipRemainingWindowsForTasks) {
            if (windowState.mAttrs.type != 2032) {
                unaccountedSpace.op(regionInScreen, unaccountedSpace, Region.Op.REVERSE_DIFFERENCE);
                if ((windowState.mAttrs.flags & 40) == 0) {
                    if (!windowState.hasTapExcludeRegion()) {
                        unaccountedSpace.op(windowState.getDisplayFrameLw(), unaccountedSpace, Region.Op.REVERSE_DIFFERENCE);
                    } else {
                        Region displayRegion = new Region(windowState.getDisplayFrameLw());
                        Region tapExcludeRegion = new Region();
                        windowState.getTapExcludeRegion(tapExcludeRegion);
                        displayRegion.op(tapExcludeRegion, displayRegion, Region.Op.REVERSE_DIFFERENCE);
                        unaccountedSpace.op(displayRegion, unaccountedSpace, Region.Op.REVERSE_DIFFERENCE);
                    }
                    Task task = windowState.getTask();
                    if (task != null) {
                        skipRemainingWindowsForTasks.add(Integer.valueOf(task.mTaskId));
                    } else if (!windowState.hasTapExcludeRegion()) {
                        unaccountedSpace.setEmpty();
                    }
                }
            }
        }

        private void computeWindowRegionInScreen(final WindowState windowState, final Region outRegion) {
            Region touchableRegion = this.mTempRegion1;
            windowState.getTouchableRegion(touchableRegion);
            final Matrix matrix = this.mTempMatrix;
            AccessibilityController.populateTransformationMatrixLocked(windowState, matrix);
            RegionUtils.forEachRect(touchableRegion, new Consumer() { // from class: com.android.server.wm.-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$2C1tADzS58YZU_H5KqoEnZ2M57I
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$computeWindowRegionInScreen$0$AccessibilityController$WindowsForAccessibilityObserver(windowState, matrix, outRegion, (Rect) obj);
                }
            });
        }

        public /* synthetic */ void lambda$computeWindowRegionInScreen$0$AccessibilityController$WindowsForAccessibilityObserver(WindowState windowState, Matrix matrix, Region outRegion, Rect rect) {
            RectF windowFrame = this.mTempRectF;
            windowFrame.set(rect);
            windowFrame.offset(-windowState.getFrameLw().left, -windowState.getFrameLw().top);
            matrix.mapRect(windowFrame);
            outRegion.union(new Rect((int) windowFrame.left, (int) windowFrame.top, (int) windowFrame.right, (int) windowFrame.bottom));
        }

        private static void addPopulatedWindowInfo(WindowState windowState, Region regionInScreen, List<WindowInfo> out, Set<IBinder> tokenOut) {
            WindowInfo window = windowState.getWindowInfo();
            window.regionInScreen.set(regionInScreen);
            window.layer = tokenOut.size();
            out.add(window);
            tokenOut.add(window.token);
        }

        private static void clearAndRecycleWindows(List<WindowInfo> windows) {
            int windowCount = windows.size();
            for (int i = windowCount - 1; i >= 0; i--) {
                windows.remove(i).recycle();
            }
        }

        private static boolean isReportedWindowType(int windowType) {
            return (windowType == 2013 || windowType == 2021 || windowType == 2016 || windowType == 2018 || windowType == 1004 || windowType == 2015 || windowType == 2030) ? false : true;
        }

        private void populateVisibleWindowsOnScreenLocked(SparseArray<WindowState> outWindows) {
            final List<WindowState> tempWindowStatesList = new ArrayList<>();
            DisplayContent dc = this.mService.mRoot.getDisplayContent(this.mDisplayId);
            if (dc == null) {
                return;
            }
            dc.forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$gS9b6G5QkV-2hX2iGcgQl5HPWws
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    AccessibilityController.WindowsForAccessibilityObserver.lambda$populateVisibleWindowsOnScreenLocked$1(tempWindowStatesList, (WindowState) obj);
                }
            }, false);
            this.mService.mRoot.forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$n5Rg8WjCeBbjXNbZvPUlKzhx8Nw
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$populateVisibleWindowsOnScreenLocked$2$AccessibilityController$WindowsForAccessibilityObserver(tempWindowStatesList, (WindowState) obj);
                }
            }, false);
            for (int i = 0; i < tempWindowStatesList.size(); i++) {
                outWindows.put(i, tempWindowStatesList.get(i));
            }
        }

        static /* synthetic */ void lambda$populateVisibleWindowsOnScreenLocked$1(List tempWindowStatesList, WindowState w) {
            if (w.isVisibleLw()) {
                tempWindowStatesList.add(w);
            }
        }

        public /* synthetic */ void lambda$populateVisibleWindowsOnScreenLocked$2$AccessibilityController$WindowsForAccessibilityObserver(List tempWindowStatesList, WindowState w) {
            WindowState parentWindow = findRootDisplayParentWindow(w);
            if (parentWindow != null && w.isVisibleLw() && tempWindowStatesList.contains(parentWindow)) {
                tempWindowStatesList.add(tempWindowStatesList.lastIndexOf(parentWindow), w);
            }
        }

        private WindowState findRootDisplayParentWindow(WindowState win) {
            WindowState displayParentWindow = win.getDisplayContent().getParentWindow();
            if (displayParentWindow == null) {
                return null;
            }
            WindowState candidate = displayParentWindow;
            while (candidate != null) {
                displayParentWindow = candidate;
                candidate = displayParentWindow.getDisplayContent().getParentWindow();
            }
            return displayParentWindow;
        }

        private WindowState getTopFocusWindow() {
            return this.mService.mRoot.getTopFocusedDisplayContent().mCurrentFocus;
        }

        public String toString() {
            return "WindowsForAccessibilityObserver{mDisplayId=" + this.mDisplayId + ", mEmbeddedDisplayIdList=" + Arrays.toString(this.mEmbeddedDisplayIdList.toArray()) + ", mInitialized=" + this.mInitialized + '}';
        }

        private class MyHandler extends Handler {
            public static final int MESSAGE_COMPUTE_CHANGED_WINDOWS = 1;

            public MyHandler(Looper looper) {
                super(looper, null, false);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) throws Throwable {
                if (message.what == 1) {
                    WindowsForAccessibilityObserver.this.computeChangedWindows(false);
                }
            }
        }
    }
}
