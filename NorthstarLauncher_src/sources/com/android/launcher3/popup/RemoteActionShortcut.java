package com.android.launcher3.popup;

import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.Executors;
import com.mega.chery.utils.ToastViewUtils;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class RemoteActionShortcut extends SystemShortcut<BaseDraggingActivity> {
    private static final boolean DEBUG = Utilities.IS_DEBUG_DEVICE;
    private static final String TAG = "RemoteActionShortcut";
    private final RemoteAction mAction;

    @Override // com.android.launcher3.popup.SystemShortcut
    public boolean isLeftGroup() {
        return true;
    }

    public RemoteActionShortcut(RemoteAction action, BaseDraggingActivity activity, ItemInfo itemInfo) {
        super(0, R.id.action_remote_action_shortcut, activity, itemInfo);
        this.mAction = action;
    }

    @Override // com.android.launcher3.popup.SystemShortcut
    public void setIconAndLabelFor(final View iconView, TextView labelView) {
        Icon icon = this.mAction.getIcon();
        Context context = iconView.getContext();
        Objects.requireNonNull(iconView);
        icon.loadDrawableAsync(context, new Icon.OnDrawableLoadedListener() { // from class: com.android.launcher3.popup.RemoteActionShortcut$$ExternalSyntheticLambda2
            @Override // android.graphics.drawable.Icon.OnDrawableLoadedListener
            public final void onDrawableLoaded(Drawable drawable) {
                iconView.setBackground(drawable);
            }
        }, Executors.MAIN_EXECUTOR.getHandler());
        labelView.setText(this.mAction.getTitle());
    }

    @Override // com.android.launcher3.popup.SystemShortcut
    public void setIconAndContentDescriptionFor(final ImageView view) {
        Icon icon = this.mAction.getIcon();
        Context context = view.getContext();
        Objects.requireNonNull(view);
        icon.loadDrawableAsync(context, new Icon.OnDrawableLoadedListener() { // from class: com.android.launcher3.popup.RemoteActionShortcut$$ExternalSyntheticLambda0
            @Override // android.graphics.drawable.Icon.OnDrawableLoadedListener
            public final void onDrawableLoaded(Drawable drawable) {
                view.setImageDrawable(drawable);
            }
        }, Executors.MAIN_EXECUTOR.getHandler());
        view.setContentDescription(this.mAction.getContentDescription());
    }

    @Override // com.android.launcher3.popup.SystemShortcut
    public AccessibilityNodeInfo.AccessibilityAction createAccessibilityAction(Context context) {
        return new AccessibilityNodeInfo.AccessibilityAction(R.id.action_remote_action_shortcut, this.mAction.getContentDescription());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AbstractFloatingView.closeAllOpenViews(this.mTarget);
        final String str = ((Object) this.mAction.getTitle()) + ", " + this.mItemInfo.getTargetComponent().getPackageName();
        try {
            if (DEBUG) {
                Log.d(TAG, "Sending action: " + str);
            }
            this.mAction.getActionIntent().send(this.mTarget, 0, new Intent().putExtra("android.intent.extra.PACKAGE_NAME", this.mItemInfo.getTargetComponent().getPackageName()), new PendingIntent.OnFinished() { // from class: com.android.launcher3.popup.RemoteActionShortcut$$ExternalSyntheticLambda1
                @Override // android.app.PendingIntent.OnFinished
                public final void onSendFinished(PendingIntent pendingIntent, Intent intent, int i, String str2, Bundle bundle) {
                    this.f$0.m137x772db293(str, pendingIntent, intent, i, str2, bundle);
                }
            }, Executors.MAIN_EXECUTOR.getHandler());
        } catch (PendingIntent.CanceledException e) {
            Log.e(TAG, "Remote action canceled: " + str, e);
            ToastViewUtils.makeText(this.mTarget, this.mTarget.getString(R.string.remote_action_failed, new Object[]{this.mAction.getTitle()}), 3000L).show();
        }
        this.mTarget.getUserEventDispatcher().logActionOnControl(0, 17, view, new int[0]);
    }

    /* JADX INFO: renamed from: lambda$onClick$0$com-android-launcher3-popup-RemoteActionShortcut, reason: not valid java name */
    /* synthetic */ void m137x772db293(String str, PendingIntent pendingIntent, Intent intent, int i, String str2, Bundle bundle) {
        if (DEBUG) {
            Log.d(TAG, "Action is complete: " + str);
        }
        if (str2 == null || str2.isEmpty()) {
            return;
        }
        Log.e(TAG, "Remote action returned result: " + str + " : " + str2);
        ToastViewUtils.makeText(this.mTarget, str2, 3000L).show();
    }
}
