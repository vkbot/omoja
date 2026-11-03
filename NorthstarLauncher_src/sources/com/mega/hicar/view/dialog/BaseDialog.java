package com.mega.hicar.view.dialog;

import android.R;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.Window;
import android.view.WindowManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class BaseDialog extends Dialog {
    public static final String ACTION_CLOSE_DIALOG = "mega_action_close_dialog";
    private static final String TAG = "BaseDialog";
    private BroadcastReceiver mCloseDialogReceiver;
    protected Context mContext;
    private final LifecycleEventObserver mOwnerLifecycleObserver;

    protected void onOwnerStop() {
    }

    /* JADX INFO: renamed from: lambda$new$0$com-mega-hicar-view-dialog-BaseDialog, reason: not valid java name */
    /* synthetic */ void m260lambda$new$0$commegahicarviewdialogBaseDialog(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_STOP) {
            onOwnerStop();
        }
    }

    public BaseDialog(Context context) {
        super(context);
        this.mOwnerLifecycleObserver = new LifecycleEventObserver() { // from class: com.mega.hicar.view.dialog.BaseDialog$$ExternalSyntheticLambda0
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                this.f$0.m260lambda$new$0$commegahicarviewdialogBaseDialog(lifecycleOwner, event);
            }
        };
        this.mContext = context;
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        Window window = getWindow();
        layoutParams.copyFrom(window.getAttributes());
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.gravity = 17;
        layoutParams.type = 2;
        window.setAttributes(layoutParams);
        window.setBackgroundDrawableResource(R.color.transparent);
        window.setFlags(262152, 262152);
        setCanceledOnTouchOutside(true);
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
        registerActivityOnStopListener(this.mContext);
        if (this.mContext != null) {
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.mega.hicar.view.dialog.BaseDialog.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    MLog.d(BaseDialog.TAG, "action: " + intent.getAction());
                }
            };
            this.mCloseDialogReceiver = broadcastReceiver;
            this.mContext.registerReceiver(broadcastReceiver, new IntentFilter("mega_action_close_dialog"));
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        unRegisterActivityOnStopListener(this.mContext);
        BroadcastReceiver broadcastReceiver = this.mCloseDialogReceiver;
        if (broadcastReceiver != null) {
            this.mContext.unregisterReceiver(broadcastReceiver);
        }
    }
}
