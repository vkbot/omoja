package com.android.server.wm;

import android.graphics.Matrix;
import android.view.DisplayInfo;
import android.view.SurfaceControl;
import com.android.server.wm.utils.CoordinateTransforms;
import java.io.PrintWriter;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes2.dex */
public class SeamlessRotator {
    private final boolean mApplyFixedTransformHint;
    private final int mFixedTransformHint;
    private final int mNewRotation;
    private final int mOldRotation;
    private final Matrix mTransform = new Matrix();
    private final float[] mFloat9 = new float[9];

    public SeamlessRotator(int oldRotation, int newRotation, DisplayInfo info, boolean applyFixedTransformationHint) {
        this.mOldRotation = oldRotation;
        this.mNewRotation = newRotation;
        this.mApplyFixedTransformHint = applyFixedTransformationHint;
        this.mFixedTransformHint = oldRotation;
        boolean z = true;
        if (info.rotation != 1 && info.rotation != 3) {
            z = false;
        }
        boolean flipped = z;
        int pH = flipped ? info.logicalWidth : info.logicalHeight;
        int pW = flipped ? info.logicalHeight : info.logicalWidth;
        Matrix tmp = new Matrix();
        CoordinateTransforms.transformLogicalToPhysicalCoordinates(oldRotation, pW, pH, this.mTransform);
        CoordinateTransforms.transformPhysicalToLogicalCoordinates(newRotation, pW, pH, tmp);
        this.mTransform.postConcat(tmp);
    }

    public void unrotate(SurfaceControl.Transaction transaction, WindowContainer win) {
        transaction.setMatrix(win.getSurfaceControl(), this.mTransform, this.mFloat9);
        float[] winSurfacePos = {win.mLastSurfacePosition.x, win.mLastSurfacePosition.y};
        this.mTransform.mapPoints(winSurfacePos);
        transaction.setPosition(win.getSurfaceControl(), winSurfacePos[0], winSurfacePos[1]);
        if (this.mApplyFixedTransformHint) {
            transaction.setFixedTransformHint(win.mSurfaceControl, this.mFixedTransformHint);
        }
    }

    public int getOldRotation() {
        return this.mOldRotation;
    }

    public void finish(WindowState win, boolean timeout) {
        SurfaceControl.Transaction t = win.getPendingTransaction();
        finish(t, win);
        if (win.mWinAnimator.mSurfaceController != null && !timeout) {
            t.deferTransactionUntil(win.mSurfaceControl, win.getClientViewRootSurface(), win.getFrameNumber());
            t.deferTransactionUntil(win.mWinAnimator.mSurfaceController.mSurfaceControl, win.getClientViewRootSurface(), win.getFrameNumber());
        }
    }

    void finish(SurfaceControl.Transaction t, WindowContainer win) {
        this.mTransform.reset();
        t.setMatrix(win.mSurfaceControl, this.mTransform, this.mFloat9);
        t.setPosition(win.mSurfaceControl, win.mLastSurfacePosition.x, win.mLastSurfacePosition.y);
        if (this.mApplyFixedTransformHint) {
            t.unsetFixedTransformHint(win.mSurfaceControl);
        }
    }

    public void dump(PrintWriter pw) {
        pw.print("{old=");
        pw.print(this.mOldRotation);
        pw.print(", new=");
        pw.print(this.mNewRotation);
        pw.print("}");
    }

    public String toString() {
        StringWriter sw = new StringWriter();
        dump(new PrintWriter(sw));
        return "ForcedSeamlessRotator" + sw.toString();
    }
}
