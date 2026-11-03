package com.mega.carlink.view.dialog;

import android.app.Dialog;
import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.mega.nexus.app.MegaActivityManager;
import com.mega.nexus.app.MegaActivityManagerProxy;
import com.mega.nexus.app.MegaTaskStackListener;
import java.util.Objects;
import mega.log.MLog;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes2.dex */
public class BaseDialog extends Dialog {
    public static final String CURRENT_PACKAGE_NAME = "com.mega.carlink";
    private static final String TAG = "BaseDialog";
    private Context mContext;
    private final MegaTaskStackListener mMegaTaskStackListener;
    private final LifecycleEventObserver mOwnerLifecycleObserver;

    /* JADX INFO: renamed from: lambda$new$0$com-mega-carlink-view-dialog-BaseDialog, reason: not valid java name */
    /* synthetic */ void m244lambda$new$0$commegacarlinkviewdialogBaseDialog(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_STOP) {
            onOwnerStop();
        }
    }

    public BaseDialog(Context context) {
        super(context);
        this.mMegaTaskStackListener = new MegaTaskStackListener() { // from class: com.mega.carlink.view.dialog.BaseDialog.1
            public void onTaskStackChanged() {
                String displayTopResumedActivity = MegaActivityManager.getInstance().getDisplayTopResumedActivity(0);
                MLog.d(BaseDialog.TAG, "onTaskStackChanged: " + displayTopResumedActivity);
                if (displayTopResumedActivity == null || Objects.equals(ComponentName.unflattenFromString(displayTopResumedActivity).getPackageName(), "com.mega.carlink")) {
                    return;
                }
                BaseDialog.this.onOwnerStop();
            }
        };
        this.mOwnerLifecycleObserver = new LifecycleEventObserver() { // from class: com.mega.carlink.view.dialog.BaseDialog$$ExternalSyntheticLambda0
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                this.f$0.m244lambda$new$0$commegacarlinkviewdialogBaseDialog(lifecycleOwner, event);
            }
        };
        this.mContext = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void registerActivityOnStopListener(Context context) {
        if (context instanceof LifecycleOwner) {
            ((LifecycleOwner) context).getLifecycle().addObserver(this.mOwnerLifecycleObserver);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void unRegisterActivityOnStopListener(Context context) {
        if (context instanceof LifecycleOwner) {
            ((LifecycleOwner) context).getLifecycle().removeObserver(this.mOwnerLifecycleObserver);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MLog.d(TAG, "onAttachedToWindow");
        registerActivityOnStopListener(this.mContext);
        EventBus.getDefault().register(this);
        try {
            MegaActivityManagerProxy.registerTaskStackListener(this.mMegaTaskStackListener);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        MLog.d(TAG, "onDetachedFromWindow");
        unRegisterActivityOnStopListener(this.mContext);
        EventBus.getDefault().unregister(this);
        try {
            MegaActivityManagerProxy.unregisterTaskStackListener(this.mMegaTaskStackListener);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(Boolean bool) {
        MLog.d(TAG, "onMessageEvent isVisible==" + bool);
        if (Boolean.FALSE.equals(bool)) {
            onOwnerStop();
        }
    }

    protected void onOwnerStop() {
        MLog.d(TAG, "onOwnerStop");
    }
}
