package com.android.launcher3.util;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class DefaultDisplay implements DisplayManager.DisplayListener {
    public static final int CHANGE_ALL = 7;
    public static final int CHANGE_FRAME_DELAY = 4;
    public static final int CHANGE_ROTATION = 2;
    public static final int CHANGE_SIZE = 1;
    public static final MainThreadInitializedObject<DefaultDisplay> INSTANCE = new MainThreadInitializedObject<>(new MainThreadInitializedObject.ObjectProvider() { // from class: com.android.launcher3.util.DefaultDisplay$$ExternalSyntheticLambda1
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return DefaultDisplay.$r8$lambda$aReHGz97Xmh9vG6qZpc0DUwwYNI(context);
        }
    });
    private static final String TAG = "DefaultDisplay";
    private final Handler mChangeHandler;
    private final Context mDisplayContext;
    private final int mId;
    private Info mInfo;
    private final ArrayList<DisplayInfoChangeListener> mListeners = new ArrayList<>();

    public interface DisplayInfoChangeListener {
        void onDisplayInfoChanged(Info info, int flags);
    }

    public static /* synthetic */ DefaultDisplay $r8$lambda$aReHGz97Xmh9vG6qZpc0DUwwYNI(Context context) {
        return new DefaultDisplay(context);
    }

    public Info getInfo() {
        return this.mInfo;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int displayId) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int displayId) {
    }

    private DefaultDisplay(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService(DisplayManager.class);
        Context contextCreateDisplayContext = context.getApplicationContext().createDisplayContext(displayManager.getDisplay(0));
        this.mDisplayContext = contextCreateDisplayContext;
        Info info = new Info(contextCreateDisplayContext);
        this.mInfo = info;
        this.mId = info.id;
        this.mChangeHandler = new Handler(new Handler.Callback() { // from class: com.android.launcher3.util.DefaultDisplay$$ExternalSyntheticLambda0
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f$0.onChange(message);
            }
        });
        displayManager.registerDisplayListener(this, Executors.UI_HELPER_EXECUTOR.getHandler());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.os.Handler] */
    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i) {
        ?? r1;
        int i2;
        if (i != this.mId) {
            return;
        }
        Info info = this.mInfo;
        Info info2 = new Info(this.mDisplayContext);
        boolean zHasDifferentSize = info2.hasDifferentSize(info);
        if (info.rotation != info2.rotation) {
            r1 = zHasDifferentSize;
            r1 = (zHasDifferentSize ? 1 : 0) | 2;
        }
        r1 = zHasDifferentSize;
        ?? r2 = r1;
        if (info2.singleFrameMs != info.singleFrameMs) {
            i2 = (r1 == true ? 1 : 0) | 4;
        }
        if (r2 == 0) {
            r2 = i2;
            return;
        }
        r2 = i2;
        this.mInfo = info2;
        this.mChangeHandler.sendEmptyMessage(r2);
    }

    public static int getSingleFrameMs(Context context) {
        return INSTANCE.m166x39265fe7(context).getInfo().singleFrameMs;
    }

    public void addChangeListener(DisplayInfoChangeListener listener) {
        this.mListeners.add(listener);
    }

    public void removeChangeListener(DisplayInfoChangeListener listener) {
        this.mListeners.remove(listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onChange(Message msg) {
        for (int size = this.mListeners.size() - 1; size >= 0; size--) {
            this.mListeners.get(size).onDisplayInfoChanged(this.mInfo, msg.what);
        }
        return true;
    }

    public static class Info {
        public final int id;
        public final Point largestSize;
        public final DisplayMetrics metrics;
        public final Point realSize;
        public final int rotation;
        public final int singleFrameMs;
        public final Point smallestSize;

        public Info(int id, int rotation, int singleFrameMs, Point realSize, Point smallestSize, Point largestSize, DisplayMetrics metrics) {
            this.id = id;
            this.rotation = rotation;
            this.singleFrameMs = singleFrameMs;
            this.realSize = realSize;
            this.smallestSize = smallestSize;
            this.largestSize = largestSize;
            this.metrics = metrics;
        }

        private Info(Context context) {
            this(context, ((DisplayManager) context.getSystemService(DisplayManager.class)).getDisplay(0));
        }

        public Info(Context context, Display display) {
            this.id = display.getDisplayId();
            this.rotation = display.getRotation();
            float refreshRate = display.getRefreshRate();
            this.singleFrameMs = refreshRate > 0.0f ? (int) (1000.0f / refreshRate) : 16;
            Point point = new Point();
            this.realSize = point;
            Point point2 = new Point();
            this.smallestSize = point2;
            Point point3 = new Point();
            this.largestSize = point3;
            display.getRealSize(point);
            display.getCurrentSizeRange(point2, point3);
            this.metrics = context.getResources().getDisplayMetrics();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasDifferentSize(Info info) {
            if (!this.realSize.equals(info.realSize) && !this.realSize.equals(info.realSize.y, info.realSize.x)) {
                Log.d(DefaultDisplay.TAG, String.format("Display size changed from %s to %s", info.realSize, this.realSize));
                return true;
            }
            if (this.smallestSize.equals(info.smallestSize) && this.largestSize.equals(info.largestSize)) {
                return false;
            }
            Log.d(DefaultDisplay.TAG, String.format("Available size changed from [%s, %s] to [%s, %s]", this.smallestSize, this.largestSize, info.smallestSize, info.largestSize));
            return true;
        }
    }
}
