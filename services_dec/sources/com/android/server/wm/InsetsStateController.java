package com.android.server.wm;

import android.app.WindowConfiguration;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.SparseArray;
import android.view.InsetsSource;
import android.view.InsetsSourceControl;
import android.view.InsetsState;
import android.view.ViewRootImpl;
import android.view.WindowManager;
import com.android.server.inputmethod.InputMethodManagerInternal;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.function.Consumer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes2.dex */
class InsetsStateController {
    private final DisplayContent mDisplayContent;
    private final InsetsState mLastState = new InsetsState();
    private final InsetsState mState = new InsetsState();
    private final ArrayMap<Integer, InsetsSourceProvider> mProviders = new ArrayMap<>();
    private final ArrayMap<InsetsControlTarget, ArrayList<Integer>> mControlTargetTypeMap = new ArrayMap<>();
    private final SparseArray<InsetsControlTarget> mTypeControlTargetMap = new SparseArray<>();
    private final SparseArray<InsetsControlTarget> mTypeFakeControlTargetMap = new SparseArray<>();
    private final ArraySet<InsetsControlTarget> mPendingControlChanged = new ArraySet<>();
    private final Consumer<WindowState> mDispatchInsetsChanged = new Consumer() { // from class: com.android.server.wm.-$$Lambda$InsetsStateController$sIYEJIR4ztgffCLMi5Z1RvdxyYs
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            InsetsStateController.lambda$new$0((WindowState) obj);
        }
    };
    private final InsetsControlTarget mEmptyImeControlTarget = new AnonymousClass1();

    static /* synthetic */ void lambda$new$0(WindowState w) {
        if (w.isVisible()) {
            w.notifyInsetsChanged();
        }
    }

    /* JADX INFO: renamed from: com.android.server.wm.InsetsStateController$1, reason: invalid class name */
    class AnonymousClass1 implements InsetsControlTarget {
        AnonymousClass1() {
        }

        @Override // com.android.server.wm.InsetsControlTarget
        public void notifyInsetsControlChanged() {
            InsetsSourceControl[] controls = InsetsStateController.this.getControlsForDispatch(this);
            if (controls == null) {
                return;
            }
            for (InsetsSourceControl control : controls) {
                if (control.getType() == 17) {
                    InsetsStateController.this.mDisplayContent.mWmService.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$InsetsStateController$1$-dEtYGbz4qvW5yFCIz0yJqWDBWA
                        @Override // java.lang.Runnable
                        public final void run() {
                            InputMethodManagerInternal.get().removeImeSurface();
                        }
                    });
                }
            }
        }
    }

    InsetsStateController(DisplayContent displayContent) {
        this.mDisplayContent = displayContent;
    }

    InsetsState getInsetsForDispatch(WindowState target) {
        InsetsState rotatedState = target.mToken.getFixedRotationTransformInsetsState();
        if (rotatedState != null) {
            return rotatedState;
        }
        InsetsSourceProvider provider = target.getControllableInsetProvider();
        int type = provider != null ? provider.getSource().getType() : -1;
        return getInsetsForDispatchInner(type, target.getWindowingMode(), target.isAlwaysOnTop(), isAboveIme(target));
    }

    InsetsState getInsetsForWindowMetrics(WindowManager.LayoutParams attrs) {
        int windowingMode;
        int type = getInsetsTypeForLayoutParams(attrs);
        WindowToken token = this.mDisplayContent.getWindowToken(attrs.token);
        boolean alwaysOnTop = false;
        if (token == null) {
            windowingMode = 0;
        } else {
            windowingMode = token.getWindowingMode();
        }
        if (token != null && token.isAlwaysOnTop()) {
            alwaysOnTop = true;
        }
        return getInsetsForDispatchInner(type, windowingMode, alwaysOnTop, isAboveIme(token));
    }

    private boolean isAboveIme(WindowContainer target) {
        WindowState imeWindow = this.mDisplayContent.mInputMethodWindow;
        if (target == null || imeWindow == null || !(target instanceof WindowState)) {
            return false;
        }
        WindowState win = (WindowState) target;
        return win.needsRelativeLayeringToIme() || !win.mBehindIme;
    }

    private static int getInsetsTypeForLayoutParams(WindowManager.LayoutParams attrs) {
        int type = attrs.type;
        if (type == 2000) {
            return 0;
        }
        if (type == 2011) {
            return 17;
        }
        if (type == 2019) {
            return 1;
        }
        if (attrs.providesInsetsTypes != null) {
            for (int insetsType : attrs.providesInsetsTypes) {
                if (insetsType == 0 || insetsType == 1 || insetsType == 18 || insetsType == 19) {
                    return insetsType;
                }
            }
            return -1;
        }
        return -1;
    }

    private InsetsState getInsetsForDispatchInner(int type, int windowingMode, boolean isAlwaysOnTop, boolean aboveIme) {
        InsetsSource imeSource;
        InsetsState state = this.mState;
        if (type != -1) {
            state = new InsetsState(state);
            state.removeSource(type);
            if (type == 1 || type == 19) {
                state.removeSource(17);
                state.removeSource(0);
                state.removeSource(18);
                state.removeSource(2);
            }
            if (type == 0 || type == 18) {
                state.removeSource(2);
            }
            if (type == 17) {
                for (int i = this.mProviders.size() - 1; i >= 0; i--) {
                    InsetsSourceProvider otherProvider = this.mProviders.valueAt(i);
                    if (otherProvider.overridesImeFrame()) {
                        InsetsSource override = new InsetsSource(state.getSource(otherProvider.getSource().getType()));
                        override.setFrame(otherProvider.getImeOverrideFrame());
                        state.addSource(override);
                    }
                }
            }
        }
        if (WindowConfiguration.isFloating(windowingMode) || (windowingMode == 6 && isAlwaysOnTop)) {
            state = new InsetsState(state);
            state.removeSource(0);
            state.removeSource(1);
        }
        if (aboveIme && (imeSource = state.peekSource(17)) != null && imeSource.isVisible()) {
            InsetsSource imeSource2 = new InsetsSource(imeSource);
            imeSource2.setVisible(false);
            imeSource2.setFrame(0, 0, 0, 0);
            InsetsState state2 = new InsetsState(state);
            state2.addSource(imeSource2);
            return state2;
        }
        return state;
    }

    InsetsState getRawInsetsState() {
        return this.mState;
    }

    InsetsSourceControl[] getControlsForDispatch(InsetsControlTarget target) {
        ArrayList<Integer> controlled = this.mControlTargetTypeMap.get(target);
        if (controlled == null) {
            return null;
        }
        int size = controlled.size();
        InsetsSourceControl[] result = new InsetsSourceControl[size];
        for (int i = 0; i < size; i++) {
            result[i] = this.mProviders.get(controlled.get(i)).getControl(target);
        }
        return result;
    }

    InsetsSourceProvider getSourceProvider(int type) {
        if (type == 17) {
            return this.mProviders.computeIfAbsent(Integer.valueOf(type), new Function() { // from class: com.android.server.wm.-$$Lambda$InsetsStateController$pXoYGy4X5aPw1QFi0iIWKiTMlDg
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return this.f$0.lambda$getSourceProvider$1$InsetsStateController((Integer) obj);
                }
            });
        }
        return this.mProviders.computeIfAbsent(Integer.valueOf(type), new Function() { // from class: com.android.server.wm.-$$Lambda$InsetsStateController$c8m0K1Ykk6OHrDEJKWFPmp5WxKU
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.lambda$getSourceProvider$2$InsetsStateController((Integer) obj);
            }
        });
    }

    public /* synthetic */ InsetsSourceProvider lambda$getSourceProvider$1$InsetsStateController(Integer key) {
        return new ImeInsetsSourceProvider(this.mState.getSource(key.intValue()), this, this.mDisplayContent);
    }

    public /* synthetic */ InsetsSourceProvider lambda$getSourceProvider$2$InsetsStateController(Integer key) {
        return new InsetsSourceProvider(this.mState.getSource(key.intValue()), this, this.mDisplayContent);
    }

    ImeInsetsSourceProvider getImeSourceProvider() {
        return (ImeInsetsSourceProvider) getSourceProvider(17);
    }

    InsetsSourceProvider peekSourceProvider(int type) {
        return this.mProviders.get(Integer.valueOf(type));
    }

    void onPostLayout() {
        this.mState.setDisplayFrame(this.mDisplayContent.getBounds());
        for (int i = this.mProviders.size() - 1; i >= 0; i--) {
            this.mProviders.valueAt(i).onPostLayout();
        }
        ArrayList<WindowState> winInsetsChanged = this.mDisplayContent.mWinInsetsChanged;
        if (!this.mLastState.equals(this.mState)) {
            this.mLastState.set(this.mState, true);
            notifyInsetsChanged();
        } else {
            for (int i2 = winInsetsChanged.size() - 1; i2 >= 0; i2--) {
                this.mDispatchInsetsChanged.accept(winInsetsChanged.get(i2));
            }
        }
        winInsetsChanged.clear();
    }

    void onInsetsModified(InsetsControlTarget windowState, InsetsState state) {
        InsetsSourceProvider provider;
        boolean changed = false;
        for (int i = 0; i < 20; i++) {
            InsetsSource source = state.peekSource(i);
            if (source != null && (provider = this.mProviders.get(Integer.valueOf(source.getType()))) != null) {
                changed |= provider.onInsetsModified(windowState, source);
            }
        }
        if (changed) {
            notifyInsetsChanged();
            this.mDisplayContent.updateSystemGestureExclusion();
            this.mDisplayContent.getDisplayPolicy().updateSystemUiVisibilityLw();
        }
    }

    void computeSimulatedState(InsetsState state, WindowState win, DisplayFrames displayFrames, WindowFrames windowFrames) {
        for (int i = this.mProviders.size() - 1; i >= 0; i--) {
            InsetsSourceProvider provider = this.mProviders.valueAt(i);
            if (provider.mWin == win) {
                state.addSource(provider.createSimulatedSource(displayFrames, windowFrames));
            }
        }
    }

    boolean isFakeTarget(int type, InsetsControlTarget target) {
        return this.mTypeFakeControlTargetMap.get(type) == target;
    }

    void onImeControlTargetChanged(InsetsControlTarget imeTarget) {
        InsetsControlTarget target = imeTarget != null ? imeTarget : this.mEmptyImeControlTarget;
        onControlChanged(17, target);
        if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
            String protoLogParam0 = String.valueOf(target != null ? target.getWindow() : "null");
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_IME, 1658605381, 0, null, protoLogParam0);
        }
        notifyPendingInsetsControlChanged();
    }

    void onBarControlTargetChanged(InsetsControlTarget statusControlling, InsetsControlTarget fakeStatusControlling, InsetsControlTarget navControlling, InsetsControlTarget fakeNavControlling) {
        onControlChanged(0, statusControlling);
        onControlChanged(1, navControlling);
        onControlChanged(18, statusControlling);
        onControlChanged(19, navControlling);
        onControlFakeTargetChanged(0, fakeStatusControlling);
        onControlFakeTargetChanged(1, fakeNavControlling);
        onControlFakeTargetChanged(18, fakeStatusControlling);
        onControlFakeTargetChanged(19, fakeNavControlling);
        notifyPendingInsetsControlChanged();
    }

    void notifyControlRevoked(InsetsControlTarget previousControlTarget, InsetsSourceProvider provider) {
        removeFromControlMaps(previousControlTarget, provider.getSource().getType(), false);
    }

    private void onControlChanged(int type, InsetsControlTarget target) {
        InsetsSourceProvider provider;
        InsetsControlTarget previous = this.mTypeControlTargetMap.get(type);
        if (target == previous || (provider = this.mProviders.get(Integer.valueOf(type))) == null || !provider.isControllable()) {
            return;
        }
        provider.updateControlForTarget(target, false);
        InsetsControlTarget target2 = provider.getControlTarget();
        if (previous != null) {
            removeFromControlMaps(previous, type, false);
            this.mPendingControlChanged.add(previous);
        }
        if (target2 != null) {
            addToControlMaps(target2, type, false);
            this.mPendingControlChanged.add(target2);
        }
    }

    void onControlFakeTargetChanged(int type, InsetsControlTarget fakeTarget) {
        InsetsControlTarget previous;
        InsetsSourceProvider provider;
        if (ViewRootImpl.sNewInsetsMode != 2 || fakeTarget == (previous = this.mTypeFakeControlTargetMap.get(type)) || (provider = this.mProviders.get(Integer.valueOf(type))) == null) {
            return;
        }
        provider.updateControlForFakeTarget(fakeTarget);
        if (previous != null) {
            removeFromControlMaps(previous, type, true);
            this.mPendingControlChanged.add(previous);
        }
        if (fakeTarget != null) {
            addToControlMaps(fakeTarget, type, true);
            this.mPendingControlChanged.add(fakeTarget);
        }
    }

    private void removeFromControlMaps(InsetsControlTarget target, int type, boolean fake) {
        ArrayList<Integer> array = this.mControlTargetTypeMap.get(target);
        if (array == null) {
            return;
        }
        array.remove(Integer.valueOf(type));
        if (array.isEmpty()) {
            this.mControlTargetTypeMap.remove(target);
        }
        if (fake) {
            this.mTypeFakeControlTargetMap.remove(type);
        } else {
            this.mTypeControlTargetMap.remove(type);
        }
    }

    private void addToControlMaps(InsetsControlTarget target, int type, boolean fake) {
        ArrayList<Integer> array = this.mControlTargetTypeMap.computeIfAbsent(target, new Function() { // from class: com.android.server.wm.-$$Lambda$InsetsStateController$0D_z1-eyl79cSyxMEkWr97-EhW0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return InsetsStateController.lambda$addToControlMaps$3((InsetsControlTarget) obj);
            }
        });
        array.add(Integer.valueOf(type));
        if (fake) {
            this.mTypeFakeControlTargetMap.put(type, target);
        } else {
            this.mTypeControlTargetMap.put(type, target);
        }
    }

    static /* synthetic */ ArrayList lambda$addToControlMaps$3(InsetsControlTarget key) {
        return new ArrayList();
    }

    void notifyControlChanged(InsetsControlTarget target) {
        this.mPendingControlChanged.add(target);
        notifyPendingInsetsControlChanged();
    }

    private void notifyPendingInsetsControlChanged() {
        if (this.mPendingControlChanged.isEmpty()) {
            return;
        }
        this.mDisplayContent.mWmService.mAnimator.addAfterPrepareSurfacesRunnable(new Runnable() { // from class: com.android.server.wm.-$$Lambda$InsetsStateController$-1iOXDf-1s3wDHcMIHBKNk6MS3I
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$notifyPendingInsetsControlChanged$4$InsetsStateController();
            }
        });
    }

    public /* synthetic */ void lambda$notifyPendingInsetsControlChanged$4$InsetsStateController() {
        for (int i = this.mProviders.size() - 1; i >= 0; i--) {
            InsetsSourceProvider provider = this.mProviders.valueAt(i);
            provider.onSurfaceTransactionApplied();
        }
        for (int i2 = this.mPendingControlChanged.size() - 1; i2 >= 0; i2--) {
            InsetsControlTarget controlTarget = this.mPendingControlChanged.valueAt(i2);
            controlTarget.notifyInsetsControlChanged();
        }
        this.mPendingControlChanged.clear();
    }

    void notifyInsetsChanged() {
        this.mDisplayContent.notifyInsetsChanged(this.mDispatchInsetsChanged);
    }

    void dump(String prefix, PrintWriter pw) {
        pw.println(prefix + "WindowInsetsStateController");
        this.mState.dump(prefix + "  ", pw);
        pw.println(prefix + "  Control map:");
        int i = this.mTypeControlTargetMap.size();
        while (true) {
            i--;
            if (i < 0) {
                break;
            }
            pw.print(prefix + "  ");
            pw.println(InsetsState.typeToString(this.mTypeControlTargetMap.keyAt(i)) + " -> " + this.mTypeControlTargetMap.valueAt(i));
        }
        pw.println(prefix + "  InsetsSourceProviders map:");
        for (int i2 = this.mProviders.size() + (-1); i2 >= 0; i2 += -1) {
            pw.print(prefix + "  ");
            pw.println(InsetsState.typeToString(this.mProviders.keyAt(i2).intValue()) + " -> ");
            this.mProviders.valueAt(i2).dump(pw, prefix);
        }
    }
}
