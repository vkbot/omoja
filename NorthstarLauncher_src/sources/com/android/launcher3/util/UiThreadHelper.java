package com.android.launcher3.util;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.view.inputmethod.InputMethodManager;

/* JADX INFO: loaded from: classes.dex */
public class UiThreadHelper {
    private static final MainThreadInitializedObject<Handler> HANDLER = new MainThreadInitializedObject<>(new MainThreadInitializedObject.ObjectProvider() { // from class: com.android.launcher3.util.UiThreadHelper$$ExternalSyntheticLambda0
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return UiThreadHelper.lambda$static$0(context);
        }
    });
    private static final int MSG_HIDE_KEYBOARD = 1;
    private static final int MSG_RUN_COMMAND = 3;
    private static final int MSG_SET_ORIENTATION = 2;

    public interface AsyncCommand {
        void execute(Context proxy, int arg1, int arg2);
    }

    static /* synthetic */ Handler lambda$static$0(Context context) {
        return new Handler(Executors.UI_HELPER_EXECUTOR.getLooper(), new UiCallbacks(context));
    }

    public static void hideKeyboardAsync(Context context, IBinder token) {
        Message.obtain(HANDLER.m166x39265fe7(context), 1, token).sendToTarget();
    }

    public static void setOrientationAsync(Activity activity, int orientation) {
        Message.obtain(HANDLER.m166x39265fe7(activity), 2, orientation, 0, activity).sendToTarget();
    }

    public static void setBackButtonAlphaAsync(Context context, AsyncCommand asyncCommand, float f, boolean z) {
        runAsyncCommand(context, asyncCommand, Float.floatToIntBits(f), z ? 1 : 0);
    }

    public static void runAsyncCommand(Context context, AsyncCommand command, int arg1, int arg2) {
        Message.obtain(HANDLER.m166x39265fe7(context), 3, arg1, arg2, command).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class UiCallbacks implements Handler.Callback {
        private final Context mContext;
        private final InputMethodManager mIMM;

        UiCallbacks(Context context) {
            this.mContext = context;
            this.mIMM = (InputMethodManager) context.getSystemService("input_method");
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                this.mIMM.hideSoftInputFromWindow((IBinder) message.obj, 0);
                return true;
            }
            if (i == 2) {
                ((Activity) message.obj).setRequestedOrientation(message.arg1);
                return true;
            }
            if (i != 3) {
                return false;
            }
            ((AsyncCommand) message.obj).execute(this.mContext, message.arg1, message.arg2);
            return true;
        }
    }
}
