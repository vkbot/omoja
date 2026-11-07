package com.android.server.wm;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.IBinder;
import android.os.Process;
import android.view.InputApplicationHandle;
import android.view.InputChannel;
import android.view.InputEventReceiver;
import android.view.InputWindowHandle;
import android.view.SurfaceControl;
import com.android.server.UiThread;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
public class Letterbox {
    private static final Rect EMPTY_RECT = new Rect();
    private static final Point ZERO_POINT = new Point(0, 0);
    private final LetterboxSurface mRight;
    private final Supplier<SurfaceControl.Builder> mSurfaceControlFactory;
    private final LetterboxSurface[] mSurfaces;
    private final Supplier<SurfaceControl.Transaction> mTransactionFactory;
    private final Rect mOuter = new Rect();
    private final Rect mInner = new Rect();
    private final LetterboxSurface mTop = new LetterboxSurface("top");
    private final LetterboxSurface mLeft = new LetterboxSurface("left");
    private final LetterboxSurface mBottom = new LetterboxSurface("bottom");

    public Letterbox(Supplier<SurfaceControl.Builder> surfaceControlFactory, Supplier<SurfaceControl.Transaction> transactionFactory) {
        LetterboxSurface letterboxSurface = new LetterboxSurface("right");
        this.mRight = letterboxSurface;
        this.mSurfaces = new LetterboxSurface[]{this.mLeft, this.mTop, letterboxSurface, this.mBottom};
        this.mSurfaceControlFactory = surfaceControlFactory;
        this.mTransactionFactory = transactionFactory;
    }

    public void layout(Rect outer, Rect inner, Point surfaceOrigin) {
        this.mOuter.set(outer);
        this.mInner.set(inner);
        this.mTop.layout(outer.left, outer.top, outer.right, inner.top, surfaceOrigin);
        this.mLeft.layout(outer.left, outer.top, inner.left, outer.bottom, surfaceOrigin);
        this.mBottom.layout(outer.left, inner.bottom, outer.right, outer.bottom, surfaceOrigin);
        this.mRight.layout(inner.right, outer.top, outer.right, outer.bottom, surfaceOrigin);
    }

    public Rect getInsets() {
        return new Rect(this.mLeft.getWidth(), this.mTop.getHeight(), this.mRight.getWidth(), this.mBottom.getHeight());
    }

    Rect getInnerFrame() {
        return this.mInner;
    }

    boolean notIntersectsOrFullyContains(Rect rect) {
        int emptyCount = 0;
        int noOverlappingCount = 0;
        for (LetterboxSurface surface : this.mSurfaces) {
            Rect surfaceRect = surface.mLayoutFrameGlobal;
            if (surfaceRect.isEmpty()) {
                emptyCount++;
            } else if (!Rect.intersects(surfaceRect, rect)) {
                noOverlappingCount++;
            } else if (surfaceRect.contains(rect)) {
                return true;
            }
        }
        return emptyCount + noOverlappingCount == this.mSurfaces.length;
    }

    public boolean isOverlappingWith(Rect rect) {
        for (LetterboxSurface surface : this.mSurfaces) {
            if (surface.isOverlappingWith(rect)) {
                return true;
            }
        }
        return false;
    }

    public void hide() {
        Rect rect = EMPTY_RECT;
        layout(rect, rect, ZERO_POINT);
    }

    public void destroy() {
        this.mOuter.setEmpty();
        this.mInner.setEmpty();
        for (LetterboxSurface surface : this.mSurfaces) {
            surface.remove();
        }
    }

    public boolean needsApplySurfaceChanges() {
        for (LetterboxSurface surface : this.mSurfaces) {
            if (surface.needsApplySurfaceChanges()) {
                return true;
            }
        }
        return false;
    }

    public void applySurfaceChanges(SurfaceControl.Transaction t) {
        for (LetterboxSurface surface : this.mSurfaces) {
            surface.applySurfaceChanges(t);
        }
    }

    void attachInput(WindowState win) {
        for (LetterboxSurface surface : this.mSurfaces) {
            surface.attachInput(win);
        }
    }

    void onMovedToDisplay(int displayId) {
        for (LetterboxSurface surface : this.mSurfaces) {
            if (surface.mInputInterceptor != null) {
                surface.mInputInterceptor.mWindowHandle.displayId = displayId;
            }
        }
    }

    private static class InputInterceptor {
        final InputChannel mClientChannel;
        final InputEventReceiver mInputEventReceiver;
        final InputChannel mServerChannel;
        final IBinder mToken;
        final InputWindowHandle mWindowHandle;
        final WindowManagerService mWmService;

        InputInterceptor(String namePrefix, WindowState win) {
            this.mWmService = win.mWmService;
            StringBuilder sb = new StringBuilder();
            sb.append(namePrefix);
            sb.append(win.mActivityRecord != null ? win.mActivityRecord : win);
            String name = sb.toString();
            InputChannel[] channels = InputChannel.openInputChannelPair(name);
            this.mServerChannel = channels[0];
            this.mClientChannel = channels[1];
            this.mInputEventReceiver = new SimpleInputReceiver(this.mClientChannel);
            this.mWmService.mInputManager.registerInputChannel(this.mServerChannel);
            this.mToken = this.mServerChannel.getToken();
            InputWindowHandle inputWindowHandle = new InputWindowHandle((InputApplicationHandle) null, win.getDisplayId());
            this.mWindowHandle = inputWindowHandle;
            inputWindowHandle.name = name;
            this.mWindowHandle.token = this.mToken;
            this.mWindowHandle.layoutParamsFlags = 545259560;
            this.mWindowHandle.layoutParamsType = 2022;
            this.mWindowHandle.dispatchingTimeoutNanos = 5000000000L;
            this.mWindowHandle.visible = true;
            this.mWindowHandle.ownerPid = Process.myPid();
            this.mWindowHandle.ownerUid = Process.myUid();
            this.mWindowHandle.scaleFactor = 1.0f;
        }

        void updateTouchableRegion(Rect frame) {
            if (frame.isEmpty()) {
                this.mWindowHandle.token = null;
                return;
            }
            this.mWindowHandle.token = this.mToken;
            this.mWindowHandle.touchableRegion.set(frame);
            this.mWindowHandle.touchableRegion.translate(-frame.left, -frame.top);
        }

        void dispose() {
            this.mWmService.mInputManager.unregisterInputChannel(this.mServerChannel);
            this.mInputEventReceiver.dispose();
            this.mServerChannel.dispose();
            this.mClientChannel.dispose();
        }

        private static class SimpleInputReceiver extends InputEventReceiver {
            SimpleInputReceiver(InputChannel inputChannel) {
                super(inputChannel, UiThread.getHandler().getLooper());
            }
        }
    }

    private class LetterboxSurface {
        private InputInterceptor mInputInterceptor;
        private SurfaceControl mSurface;
        private final String mType;
        private final Rect mSurfaceFrameRelative = new Rect();
        private final Rect mLayoutFrameGlobal = new Rect();
        private final Rect mLayoutFrameRelative = new Rect();

        public LetterboxSurface(String type) {
            this.mType = type;
        }

        public void layout(int left, int top, int right, int bottom, Point surfaceOrigin) {
            this.mLayoutFrameGlobal.set(left, top, right, bottom);
            this.mLayoutFrameRelative.set(this.mLayoutFrameGlobal);
            this.mLayoutFrameRelative.offset(-surfaceOrigin.x, -surfaceOrigin.y);
        }

        private void createSurface(SurfaceControl.Transaction t) {
            SurfaceControl surfaceControlBuild = ((SurfaceControl.Builder) Letterbox.this.mSurfaceControlFactory.get()).setName("Letterbox - " + this.mType).setFlags(4).setColorLayer().setCallsite("LetterboxSurface.createSurface").build();
            this.mSurface = surfaceControlBuild;
            t.setLayer(surfaceControlBuild, -1).setColor(this.mSurface, new float[]{0.0f, 0.0f, 0.0f}).setColorSpaceAgnostic(this.mSurface, true);
        }

        void attachInput(WindowState win) {
            InputInterceptor inputInterceptor = this.mInputInterceptor;
            if (inputInterceptor != null) {
                inputInterceptor.dispose();
            }
            this.mInputInterceptor = new InputInterceptor("Letterbox_" + this.mType + "_", win);
        }

        public void remove() {
            if (this.mSurface != null) {
                ((SurfaceControl.Transaction) Letterbox.this.mTransactionFactory.get()).remove(this.mSurface).apply();
                this.mSurface = null;
            }
            InputInterceptor inputInterceptor = this.mInputInterceptor;
            if (inputInterceptor != null) {
                inputInterceptor.dispose();
                this.mInputInterceptor = null;
            }
        }

        public int getWidth() {
            return Math.max(0, this.mLayoutFrameGlobal.width());
        }

        public int getHeight() {
            return Math.max(0, this.mLayoutFrameGlobal.height());
        }

        public boolean isOverlappingWith(Rect rect) {
            if (this.mLayoutFrameGlobal.isEmpty()) {
                return false;
            }
            return Rect.intersects(rect, this.mLayoutFrameGlobal);
        }

        public void applySurfaceChanges(SurfaceControl.Transaction t) {
            InputInterceptor inputInterceptor;
            if (this.mSurfaceFrameRelative.equals(this.mLayoutFrameRelative)) {
                return;
            }
            this.mSurfaceFrameRelative.set(this.mLayoutFrameRelative);
            if (!this.mSurfaceFrameRelative.isEmpty()) {
                if (this.mSurface == null) {
                    createSurface(t);
                }
                t.setPosition(this.mSurface, this.mSurfaceFrameRelative.left, this.mSurfaceFrameRelative.top);
                t.setWindowCrop(this.mSurface, this.mSurfaceFrameRelative.width(), this.mSurfaceFrameRelative.height());
                t.show(this.mSurface);
            } else {
                SurfaceControl surfaceControl = this.mSurface;
                if (surfaceControl != null) {
                    t.hide(surfaceControl);
                }
            }
            if (this.mSurface != null && (inputInterceptor = this.mInputInterceptor) != null) {
                inputInterceptor.updateTouchableRegion(this.mSurfaceFrameRelative);
                t.setInputWindowInfo(this.mSurface, this.mInputInterceptor.mWindowHandle);
            }
        }

        public boolean needsApplySurfaceChanges() {
            return !this.mSurfaceFrameRelative.equals(this.mLayoutFrameRelative);
        }
    }
}
