package com.android.server.wm;

import android.graphics.Rect;
import android.graphics.Region;
import android.os.Debug;
import android.os.Trace;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import android.view.SurfaceControl;
import android.view.WindowContentFrameStats;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
class WindowSurfaceController {
    static final String TAG = "WindowManager";
    final WindowStateAnimator mAnimator;
    SurfaceControl mBLASTSurfaceControl;
    boolean mChildrenDetached;
    private final WindowManagerService mService;
    SurfaceControl mSurfaceControl;
    private int mSurfaceH;
    private int mSurfaceW;
    private final SurfaceControl.Transaction mTmpTransaction;
    private final Session mWindowSession;
    private final int mWindowType;
    private final String title;
    private boolean mSurfaceShown = false;
    private float mSurfaceX = 0.0f;
    private float mSurfaceY = 0.0f;
    private Rect mSurfaceCrop = new Rect(0, 0, -1, -1);
    private float mLastDsdx = 1.0f;
    private float mLastDtdx = 0.0f;
    private float mLastDsdy = 0.0f;
    private float mLastDtdy = 1.0f;
    private float mSurfaceAlpha = 0.0f;
    private int mSurfaceLayer = 0;
    private boolean mHiddenForCrop = false;
    private boolean mHiddenForOtherReasons = true;

    WindowSurfaceController(String name, int w, int h, int format, int flags, WindowStateAnimator animator, int windowType, int ownerUid) {
        this.mSurfaceW = 0;
        this.mSurfaceH = 0;
        this.mAnimator = animator;
        this.mSurfaceW = w;
        this.mSurfaceH = h;
        this.title = name;
        this.mService = animator.mService;
        WindowState win = animator.mWin;
        this.mWindowType = windowType;
        this.mWindowSession = win.mSession;
        this.mTmpTransaction = this.mService.mTransactionFactory.get();
        Trace.traceBegin(32L, "new SurfaceControl");
        SurfaceControl.Builder b = win.makeSurface().setParent(win.getSurfaceControl()).setName(name).setBufferSize(w, h).setFormat(format).setFlags(flags).setMetadata(2, windowType).setMetadata(1, ownerUid).setCallsite("WindowSurfaceController");
        boolean useBLAST = this.mService.mUseBLAST && (win.getAttrs().privateFlags & 33554432) != 0;
        if (useBLAST) {
            b.setContainerLayer();
        }
        this.mSurfaceControl = b.build();
        if (useBLAST) {
            this.mBLASTSurfaceControl = win.makeSurface().setParent(this.mSurfaceControl).setName(name + "(BLAST)").setHidden(false).setBLASTLayer().setCallsite("WindowSurfaceController").build();
        }
        Trace.traceEnd(32L);
    }

    void reparentChildrenInTransaction(WindowSurfaceController other) {
        SurfaceControl surfaceControl;
        if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
            String protoLogParam0 = String.valueOf(this);
            String protoLogParam1 = String.valueOf(other);
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, -444624452, 0, null, protoLogParam0, protoLogParam1);
        }
        SurfaceControl surfaceControl2 = this.mSurfaceControl;
        if (surfaceControl2 != null && (surfaceControl = other.mSurfaceControl) != null) {
            surfaceControl2.reparentChildren(surfaceControl);
        }
    }

    void detachChildren() {
        if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, 123161180, 0, null, (Object[]) null);
        }
        this.mChildrenDetached = true;
        SurfaceControl surfaceControl = this.mSurfaceControl;
        if (surfaceControl != null) {
            surfaceControl.detachChildren();
        }
    }

    void hide(SurfaceControl.Transaction transaction, String reason) {
        if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
            String protoLogParam0 = String.valueOf(reason);
            String protoLogParam1 = String.valueOf(this.title);
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, -1259022216, 0, null, protoLogParam0, protoLogParam1);
        }
        this.mHiddenForOtherReasons = true;
        this.mAnimator.destroyPreservedSurfaceLocked();
        if (this.mSurfaceShown) {
            hideSurface(transaction);
        }
    }

    private void hideSurface(SurfaceControl.Transaction transaction) {
        if (this.mSurfaceControl == null) {
            return;
        }
        setShown(false);
        try {
            transaction.hide(this.mSurfaceControl);
        } catch (RuntimeException e) {
            Slog.w(TAG, "Exception hiding surface in " + this);
        }
    }

    void destroyNotInTransaction() {
        SurfaceControl surfaceControl;
        if (ProtoLog$Cache.WM_SHOW_SURFACE_ALLOC_enabled) {
            String protoLogParam0 = String.valueOf(this);
            String protoLogParam1 = String.valueOf(Debug.getCallers(8));
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_SURFACE_ALLOC, -861707633, 0, null, protoLogParam0, protoLogParam1);
        }
        try {
            try {
                if (this.mSurfaceControl != null) {
                    this.mTmpTransaction.remove(this.mSurfaceControl).apply();
                }
                setShown(false);
                this.mSurfaceControl = null;
                surfaceControl = this.mBLASTSurfaceControl;
                if (surfaceControl == null) {
                    return;
                }
            } catch (RuntimeException e) {
                Slog.w(TAG, "Error destroying surface in: " + this, e);
                setShown(false);
                this.mSurfaceControl = null;
                surfaceControl = this.mBLASTSurfaceControl;
                if (surfaceControl == null) {
                    return;
                }
            }
            surfaceControl.release();
        } catch (Throwable th) {
            setShown(false);
            this.mSurfaceControl = null;
            SurfaceControl surfaceControl2 = this.mBLASTSurfaceControl;
            if (surfaceControl2 != null) {
                surfaceControl2.release();
            }
            throw th;
        }
    }

    void setCropInTransaction(Rect clipRect, boolean recoveringMemory) {
        if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
            String protoLogParam0 = String.valueOf(clipRect.toShortString());
            String protoLogParam1 = String.valueOf(this.title);
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, -324085783, 0, null, protoLogParam0, protoLogParam1);
        }
        try {
            if (clipRect.width() > 0 && clipRect.height() > 0) {
                if (!clipRect.equals(this.mSurfaceCrop)) {
                    this.mSurfaceControl.setWindowCrop(clipRect);
                    this.mSurfaceCrop.set(clipRect);
                }
                this.mHiddenForCrop = false;
                updateVisibility();
                return;
            }
            this.mHiddenForCrop = true;
            this.mAnimator.destroyPreservedSurfaceLocked();
            updateVisibility();
        } catch (RuntimeException e) {
            Slog.w(TAG, "Error setting crop surface of " + this + " crop=" + clipRect.toShortString(), e);
            if (!recoveringMemory) {
                this.mAnimator.reclaimSomeSurfaceMemory("crop", true);
            }
        }
    }

    void clearCropInTransaction(boolean recoveringMemory) {
        if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
            String protoLogParam0 = String.valueOf(this.title);
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, -29233992, 0, null, protoLogParam0);
        }
        try {
            Rect clipRect = new Rect(0, 0, -1, -1);
            if (this.mSurfaceCrop.equals(clipRect)) {
                return;
            }
            this.mSurfaceControl.setWindowCrop(clipRect);
            this.mSurfaceCrop.set(clipRect);
        } catch (RuntimeException e) {
            Slog.w(TAG, "Error setting clearing crop of " + this, e);
            if (!recoveringMemory) {
                this.mAnimator.reclaimSomeSurfaceMemory("crop", true);
            }
        }
    }

    void setPositionInTransaction(float left, float top, boolean recoveringMemory) {
        setPosition(null, left, top, recoveringMemory);
    }

    void setPosition(SurfaceControl.Transaction t, float left, float top, boolean recoveringMemory) throws Throwable {
        boolean surfaceMoved = (this.mSurfaceX == left && this.mSurfaceY == top) ? false : true;
        if (surfaceMoved) {
            this.mSurfaceX = left;
            this.mSurfaceY = top;
            try {
                if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
                    double protoLogParam0 = left;
                    double protoLogParam1 = top;
                    String protoLogParam2 = String.valueOf(this.title);
                    ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, 633654009, 10, null, Double.valueOf(protoLogParam0), Double.valueOf(protoLogParam1), protoLogParam2);
                }
                if (t == null) {
                    this.mSurfaceControl.setPosition(left, top);
                } else {
                    t.setPosition(this.mSurfaceControl, left, top);
                }
            } catch (RuntimeException e) {
                Slog.w(TAG, "Error positioning surface of " + this + " pos=(" + left + "," + top + ")", e);
                if (!recoveringMemory) {
                    this.mAnimator.reclaimSomeSurfaceMemory("position", true);
                }
            }
        }
    }

    void setMatrixInTransaction(float dsdx, float dtdx, float dtdy, float dsdy, boolean recoveringMemory) {
        setMatrix(null, dsdx, dtdx, dtdy, dsdy, false);
    }

    void setMatrix(SurfaceControl.Transaction t, float dsdx, float dtdx, float dtdy, float dsdy, boolean recoveringMemory) throws Throwable {
        boolean matrixChanged = (this.mLastDsdx == dsdx && this.mLastDtdx == dtdx && this.mLastDtdy == dtdy && this.mLastDsdy == dsdy) ? false : true;
        if (!matrixChanged) {
            return;
        }
        this.mLastDsdx = dsdx;
        this.mLastDtdx = dtdx;
        this.mLastDtdy = dtdy;
        this.mLastDsdy = dsdy;
        try {
            if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
                double protoLogParam0 = dsdx;
                double protoLogParam1 = dtdx;
                double protoLogParam2 = dtdy;
                double protoLogParam3 = dsdy;
                try {
                    String protoLogParam4 = String.valueOf(this.title);
                    ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, 309039362, 170, null, Double.valueOf(protoLogParam0), Double.valueOf(protoLogParam1), Double.valueOf(protoLogParam2), Double.valueOf(protoLogParam3), protoLogParam4);
                } catch (RuntimeException e) {
                    Slog.e(TAG, "Error setting matrix on surface surface" + this.title + " MATRIX [" + dsdx + "," + dtdx + "," + dtdy + "," + dsdy + "]", (Throwable) null);
                    if (!recoveringMemory) {
                        this.mAnimator.reclaimSomeSurfaceMemory("matrix", true);
                        return;
                    }
                    return;
                }
            }
            if (t == null) {
                this.mSurfaceControl.setMatrix(dsdx, dtdx, dtdy, dsdy);
            } else {
                t.setMatrix(this.mSurfaceControl, dsdx, dtdx, dtdy, dsdy);
            }
        } catch (RuntimeException e2) {
        }
    }

    boolean setBufferSizeInTransaction(int width, int height, boolean recoveringMemory) throws Throwable {
        boolean surfaceResized = (this.mSurfaceW == width && this.mSurfaceH == height) ? false : true;
        if (!surfaceResized) {
            return false;
        }
        this.mSurfaceW = width;
        this.mSurfaceH = height;
        try {
            if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
                long protoLogParam0 = width;
                long protoLogParam1 = height;
                String protoLogParam2 = String.valueOf(this.title);
                ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, 1220075598, 5, null, Long.valueOf(protoLogParam0), Long.valueOf(protoLogParam1), protoLogParam2);
            }
            this.mSurfaceControl.setBufferSize(width, height);
            return true;
        } catch (RuntimeException e) {
            Slog.e(TAG, "Error resizing surface of " + this.title + " size=(" + width + "x" + height + ")", e);
            if (!recoveringMemory) {
                this.mAnimator.reclaimSomeSurfaceMemory("size", true);
            }
            return false;
        }
    }

    boolean prepareToShowInTransaction(float alpha, float dsdx, float dtdx, float dsdy, float dtdy, boolean recoveringMemory) throws Throwable {
        SurfaceControl surfaceControl = this.mSurfaceControl;
        if (surfaceControl != null) {
            try {
                this.mSurfaceAlpha = alpha;
                surfaceControl.setAlpha(alpha);
                this.mLastDsdx = dsdx;
                this.mLastDtdx = dtdx;
                this.mLastDsdy = dsdy;
                this.mLastDtdy = dtdy;
                this.mSurfaceControl.setMatrix(dsdx, dtdx, dsdy, dtdy);
            } catch (RuntimeException e) {
                Slog.w(TAG, "Error updating surface in " + this.title, e);
                if (!recoveringMemory) {
                    this.mAnimator.reclaimSomeSurfaceMemory("update", true);
                    return false;
                }
                return false;
            }
        }
        return true;
    }

    void setTransparentRegionHint(Region region) {
        if (this.mSurfaceControl == null) {
            Slog.w(TAG, "setTransparentRegionHint: null mSurface after mHasSurface true");
            return;
        }
        this.mService.openSurfaceTransaction();
        try {
            this.mSurfaceControl.setTransparentRegionHint(region);
        } finally {
            this.mService.closeSurfaceTransaction("setTransparentRegion");
        }
    }

    void setOpaque(boolean isOpaque) {
        if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
            String protoLogParam1 = String.valueOf(this.title);
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, 558823034, 3, null, Boolean.valueOf(isOpaque), protoLogParam1);
        }
        if (this.mSurfaceControl == null) {
            return;
        }
        this.mService.openSurfaceTransaction();
        try {
            this.mSurfaceControl.setOpaque(isOpaque);
        } finally {
            this.mService.closeSurfaceTransaction("setOpaqueLocked");
        }
    }

    void setSecure(boolean isSecure) {
        if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
            String protoLogParam1 = String.valueOf(this.title);
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, -1176488860, 3, null, Boolean.valueOf(isSecure), protoLogParam1);
        }
        if (this.mSurfaceControl == null) {
            return;
        }
        this.mService.openSurfaceTransaction();
        try {
            this.mSurfaceControl.setSecure(isSecure);
        } finally {
            this.mService.closeSurfaceTransaction("setSecure");
        }
    }

    void setColorSpaceAgnostic(boolean agnostic) {
        if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
            String protoLogParam1 = String.valueOf(this.title);
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, 585096182, 3, null, Boolean.valueOf(agnostic), protoLogParam1);
        }
        if (this.mSurfaceControl == null) {
            return;
        }
        this.mService.openSurfaceTransaction();
        try {
            this.mSurfaceControl.setColorSpaceAgnostic(agnostic);
        } finally {
            this.mService.closeSurfaceTransaction("setColorSpaceAgnostic");
        }
    }

    void getContainerRect(Rect rect) {
        this.mAnimator.getContainerRect(rect);
    }

    boolean showRobustlyInTransaction() {
        if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
            String protoLogParam0 = String.valueOf(this.title);
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, -1089874824, 0, null, protoLogParam0);
        }
        this.mHiddenForOtherReasons = false;
        return updateVisibility();
    }

    private boolean updateVisibility() {
        if (this.mHiddenForCrop || this.mHiddenForOtherReasons) {
            if (this.mSurfaceShown) {
                hideSurface(this.mTmpTransaction);
                SurfaceControl.mergeToGlobalTransaction(this.mTmpTransaction);
                return false;
            }
            return false;
        }
        if (!this.mSurfaceShown) {
            return showSurface();
        }
        return true;
    }

    private boolean showSurface() throws Throwable {
        try {
            setShown(true);
            this.mSurfaceControl.show();
            return true;
        } catch (RuntimeException e) {
            Slog.w(TAG, "Failure showing surface " + this.mSurfaceControl + " in " + this, e);
            this.mAnimator.reclaimSomeSurfaceMemory("show", true);
            return false;
        }
    }

    void deferTransactionUntil(SurfaceControl barrier, long frame) {
        this.mSurfaceControl.deferTransactionUntil(barrier, frame);
    }

    void forceScaleableInTransaction(boolean force) {
        int scalingMode = force ? 1 : -1;
        this.mSurfaceControl.setOverrideScalingMode(scalingMode);
    }

    boolean clearWindowContentFrameStats() {
        SurfaceControl surfaceControl = this.mSurfaceControl;
        if (surfaceControl == null) {
            return false;
        }
        return surfaceControl.clearContentFrameStats();
    }

    boolean getWindowContentFrameStats(WindowContentFrameStats outStats) {
        SurfaceControl surfaceControl = this.mSurfaceControl;
        if (surfaceControl == null) {
            return false;
        }
        return surfaceControl.getContentFrameStats(outStats);
    }

    boolean hasSurface() {
        return this.mSurfaceControl != null;
    }

    void getSurfaceControl(SurfaceControl outSurfaceControl) {
        outSurfaceControl.copyFrom(this.mSurfaceControl, "WindowSurfaceController.getSurfaceControl");
    }

    void getBLASTSurfaceControl(SurfaceControl outSurfaceControl) {
        SurfaceControl surfaceControl = this.mBLASTSurfaceControl;
        if (surfaceControl != null) {
            outSurfaceControl.copyFrom(surfaceControl, "WindowSurfaceController.getBLASTSurfaceControl");
        }
    }

    int getLayer() {
        return this.mSurfaceLayer;
    }

    boolean getShown() {
        return this.mSurfaceShown;
    }

    void setShown(boolean surfaceShown) {
        this.mSurfaceShown = surfaceShown;
        this.mService.updateNonSystemOverlayWindowsVisibilityIfNeeded(this.mAnimator.mWin, surfaceShown);
        this.mAnimator.mWin.onSurfaceShownChanged(surfaceShown);
        Session session = this.mWindowSession;
        if (session != null) {
            session.onWindowSurfaceVisibilityChanged(this, this.mSurfaceShown, this.mWindowType);
        }
    }

    float getX() {
        return this.mSurfaceX;
    }

    float getY() {
        return this.mSurfaceY;
    }

    int getWidth() {
        return this.mSurfaceW;
    }

    int getHeight() {
        return this.mSurfaceH;
    }

    SurfaceControl getClientViewRootSurface() {
        SurfaceControl surfaceControl = this.mBLASTSurfaceControl;
        if (surfaceControl != null) {
            return surfaceControl;
        }
        return this.mSurfaceControl;
    }

    void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1133871366145L, this.mSurfaceShown);
        proto.write(1120986464258L, this.mSurfaceLayer);
        proto.end(token);
    }

    public void dump(PrintWriter pw, String prefix, boolean dumpAll) {
        if (dumpAll) {
            pw.print(prefix);
            pw.print("mSurface=");
            pw.println(this.mSurfaceControl);
        }
        pw.print(prefix);
        pw.print("Surface: shown=");
        pw.print(this.mSurfaceShown);
        pw.print(" layer=");
        pw.print(this.mSurfaceLayer);
        pw.print(" alpha=");
        pw.print(this.mSurfaceAlpha);
        pw.print(" rect=(");
        pw.print(this.mSurfaceX);
        pw.print(",");
        pw.print(this.mSurfaceY);
        pw.print(") ");
        pw.print(this.mSurfaceW);
        pw.print(" x ");
        pw.print(this.mSurfaceH);
        pw.print(" transform=(");
        pw.print(this.mLastDsdx);
        pw.print(", ");
        pw.print(this.mLastDtdx);
        pw.print(", ");
        pw.print(this.mLastDsdy);
        pw.print(", ");
        pw.print(this.mLastDtdy);
        pw.println(")");
    }

    public String toString() {
        return this.mSurfaceControl.toString();
    }
}
