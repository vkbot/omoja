package com.android.launcher3;

import android.content.ComponentName;
import android.content.Intent;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Message;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import android.view.SurfaceControl;

/* JADX INFO: loaded from: classes.dex */
public class GestureNavContract {
    public static final String EXTRA_GESTURE_CONTRACT = "gesture_nav_contract_v1";
    public static final String EXTRA_ICON_POSITION = "gesture_nav_contract_icon_position";
    public static final String EXTRA_ICON_SURFACE = "gesture_nav_contract_surface_control";
    public static final String EXTRA_REMOTE_CALLBACK = "android.intent.extra.REMOTE_CALLBACK";
    private static final String TAG = "GestureNavContract";
    public final ComponentName componentName;
    private final Message mCallback;
    public final UserHandle user;

    public GestureNavContract(ComponentName componentName, UserHandle user, Message callback) {
        this.componentName = componentName;
        this.user = user;
        this.mCallback = callback;
    }

    public void sendEndPosition(RectF position, SurfaceControl surfaceControl) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(EXTRA_ICON_POSITION, position);
        bundle.putParcelable(EXTRA_ICON_SURFACE, surfaceControl);
        Message messageObtain = Message.obtain();
        messageObtain.copyFrom(this.mCallback);
        messageObtain.setData(bundle);
        try {
            messageObtain.replyTo.send(messageObtain);
        } catch (RemoteException e) {
            Log.e(TAG, "Error sending icon position", e);
        }
    }

    public static GestureNavContract fromIntent(Intent intent) {
        Bundle bundleExtra;
        if (!Utilities.ATLEAST_R || (bundleExtra = intent.getBundleExtra(EXTRA_GESTURE_CONTRACT)) == null) {
            return null;
        }
        intent.removeExtra(EXTRA_GESTURE_CONTRACT);
        ComponentName componentName = (ComponentName) bundleExtra.getParcelable("android.intent.extra.COMPONENT_NAME");
        UserHandle userHandle = (UserHandle) bundleExtra.getParcelable("android.intent.extra.USER");
        Message message = (Message) bundleExtra.getParcelable(EXTRA_REMOTE_CALLBACK);
        if (componentName == null || userHandle == null || message == null || message.replyTo == null) {
            return null;
        }
        return new GestureNavContract(componentName, userHandle, message);
    }
}
