package com.android.launcher3.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Point;
import android.util.Log;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class ConfigMonitor extends BroadcastReceiver implements DefaultDisplay.DisplayInfoChangeListener {
    private static final String TAG = "ConfigMonitor";
    private Consumer<Context> mCallback;
    private final Context mContext;
    private final int mDensity;
    private final int mDisplayId;
    private final float mFontScale;
    private final Point mLargestSize;
    private final Point mRealSize;
    private final Point mSmallestSize;
    private final Point mTmpPoint1 = new Point();
    private final Point mTmpPoint2 = new Point();

    public ConfigMonitor(Context context, Consumer<Context> callback) {
        this.mContext = context;
        Configuration configuration = context.getResources().getConfiguration();
        this.mFontScale = configuration.fontScale;
        this.mDensity = configuration.densityDpi;
        DefaultDisplay defaultDisplayM166x39265fe7 = DefaultDisplay.INSTANCE.m166x39265fe7(context);
        defaultDisplayM166x39265fe7.addChangeListener(this);
        DefaultDisplay.Info info = defaultDisplayM166x39265fe7.getInfo();
        this.mDisplayId = info.id;
        this.mRealSize = new Point(info.realSize);
        this.mSmallestSize = new Point(info.smallestSize);
        this.mLargestSize = new Point(info.largestSize);
        this.mCallback = callback;
        context.registerReceiver(this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Configuration configuration = context.getResources().getConfiguration();
        if (this.mFontScale == configuration.fontScale && this.mDensity == configuration.densityDpi) {
            return;
        }
        Log.d(TAG, "Configuration changed.");
        notifyChange();
    }

    @Override // com.android.launcher3.util.DefaultDisplay.DisplayInfoChangeListener
    public void onDisplayInfoChanged(DefaultDisplay.Info info, int flags) {
        if (info.id != this.mDisplayId) {
            return;
        }
        this.mTmpPoint1.set(info.realSize.x, info.realSize.y);
        if (!this.mRealSize.equals(this.mTmpPoint1) && !this.mRealSize.equals(this.mTmpPoint1.y, this.mTmpPoint1.x)) {
            Log.d(TAG, String.format("Display size changed from %s to %s", this.mRealSize, this.mTmpPoint1));
            notifyChange();
            return;
        }
        this.mTmpPoint1.set(info.smallestSize.x, info.smallestSize.y);
        this.mTmpPoint2.set(info.largestSize.x, info.largestSize.y);
        if (this.mSmallestSize.equals(this.mTmpPoint1) && this.mLargestSize.equals(this.mTmpPoint2)) {
            return;
        }
        Log.d(TAG, String.format("Available size changed from [%s, %s] to [%s, %s]", this.mSmallestSize, this.mLargestSize, this.mTmpPoint1, this.mTmpPoint2));
        notifyChange();
    }

    private synchronized void notifyChange() {
        final Consumer<Context> consumer = this.mCallback;
        if (consumer != null) {
            this.mCallback = null;
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.util.ConfigMonitor$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m161lambda$notifyChange$0$comandroidlauncher3utilConfigMonitor(consumer);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$notifyChange$0$com-android-launcher3-util-ConfigMonitor, reason: not valid java name */
    /* synthetic */ void m161lambda$notifyChange$0$comandroidlauncher3utilConfigMonitor(Consumer consumer) {
        consumer.accept(this.mContext);
    }

    public void unregister() {
        try {
            this.mContext.unregisterReceiver(this);
            DefaultDisplay.INSTANCE.m166x39265fe7(this.mContext).removeChangeListener(this);
        } catch (Exception e) {
            Log.e(TAG, "Failed to unregister config monitor", e);
        }
    }
}
