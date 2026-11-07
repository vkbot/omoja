package com.android.server.wm;

import android.graphics.Rect;
import android.view.Surface;
import android.view.SurfaceControl;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.io.PrintWriter;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
public class BlackFrame {
    private final BlackSurface[] mBlackSurfaces = new BlackSurface[4];
    private final Rect mInnerRect;
    private final Rect mOuterRect;
    private final Supplier<SurfaceControl.Transaction> mTransactionFactory;

    static class BlackSurface {
        final int layer;
        final int left;
        final SurfaceControl surface;
        final int top;

        BlackSurface(SurfaceControl.Transaction transaction, int layer, int l, int t, int r, int b, DisplayContent dc, SurfaceControl surfaceControl) throws Surface.OutOfResourcesException {
            this.left = l;
            this.top = t;
            this.layer = layer;
            int w = r - l;
            int h = b - t;
            SurfaceControl surfaceControlBuild = dc.makeOverlay().setName("BlackSurface").setColorLayer().setParent(surfaceControl).setCallsite("BlackSurface").build();
            this.surface = surfaceControlBuild;
            transaction.setWindowCrop(surfaceControlBuild, w, h);
            transaction.setAlpha(this.surface, 1.0f);
            transaction.setLayer(this.surface, layer);
            transaction.setPosition(this.surface, this.left, this.top);
            transaction.show(this.surface);
            if (ProtoLog$Cache.WM_SHOW_SURFACE_ALLOC_enabled) {
                String protoLogParam0 = String.valueOf(this.surface);
                long protoLogParam1 = layer;
                ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_SURFACE_ALLOC, 152914409, 4, null, protoLogParam0, Long.valueOf(protoLogParam1));
            }
        }
    }

    public void printTo(String prefix, PrintWriter pw) {
        pw.print(prefix);
        pw.print("Outer: ");
        this.mOuterRect.printShortString(pw);
        pw.print(" / Inner: ");
        this.mInnerRect.printShortString(pw);
        pw.println();
        int i = 0;
        while (true) {
            BlackSurface[] blackSurfaceArr = this.mBlackSurfaces;
            if (i < blackSurfaceArr.length) {
                BlackSurface bs = blackSurfaceArr[i];
                pw.print(prefix);
                pw.print("#");
                pw.print(i);
                pw.print(": ");
                pw.print(bs.surface);
                pw.print(" left=");
                pw.print(bs.left);
                pw.print(" top=");
                pw.println(bs.top);
                i++;
            } else {
                return;
            }
        }
    }

    public BlackFrame(Supplier<SurfaceControl.Transaction> factory, SurfaceControl.Transaction t, Rect outer, Rect inner, int layer, DisplayContent dc, boolean forceDefaultOrientation, SurfaceControl surfaceControl) throws Surface.OutOfResourcesException {
        boolean success = false;
        this.mTransactionFactory = factory;
        this.mOuterRect = new Rect(outer);
        this.mInnerRect = new Rect(inner);
        try {
            if (outer.top < inner.top) {
                this.mBlackSurfaces[0] = new BlackSurface(t, layer, outer.left, outer.top, inner.right, inner.top, dc, surfaceControl);
            }
            if (outer.left < inner.left) {
                this.mBlackSurfaces[1] = new BlackSurface(t, layer, outer.left, inner.top, inner.left, outer.bottom, dc, surfaceControl);
            }
            if (outer.bottom > inner.bottom) {
                this.mBlackSurfaces[2] = new BlackSurface(t, layer, inner.left, inner.bottom, outer.right, outer.bottom, dc, surfaceControl);
            }
            if (outer.right > inner.right) {
                this.mBlackSurfaces[3] = new BlackSurface(t, layer, inner.right, outer.top, outer.right, inner.bottom, dc, surfaceControl);
            }
            success = true;
        } finally {
            if (!success) {
                kill();
            }
        }
    }

    public void kill() {
        SurfaceControl.Transaction t = this.mTransactionFactory.get();
        int i = 0;
        while (true) {
            BlackSurface[] blackSurfaceArr = this.mBlackSurfaces;
            if (i < blackSurfaceArr.length) {
                if (blackSurfaceArr[i] != null) {
                    if (ProtoLog$Cache.WM_SHOW_SURFACE_ALLOC_enabled) {
                        String protoLogParam0 = String.valueOf(this.mBlackSurfaces[i].surface);
                        ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_SURFACE_ALLOC, 51200510, 0, null, protoLogParam0);
                    }
                    t.remove(this.mBlackSurfaces[i].surface);
                    this.mBlackSurfaces[i] = null;
                }
                i++;
            } else {
                t.apply();
                return;
            }
        }
    }
}
