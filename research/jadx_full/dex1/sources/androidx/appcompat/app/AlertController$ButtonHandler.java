package androidx.appcompat.app;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AlertController$ButtonHandler extends Handler {
    private static final int MSG_DISMISS_DIALOG = 1;
    private WeakReference<DialogInterface> mDialog;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AlertController$ButtonHandler(DialogInterface dialogInterface) {
        this.mDialog = new WeakReference<>(dialogInterface);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i9 = message.what;
        if (i9 == -3 || i9 == -2 || i9 == -1) {
            ((DialogInterface$OnClickListener) message.obj).onClick(this.mDialog.get(), message.what);
        } else {
            if (i9 != 1) {
                return;
            }
            ((DialogInterface) message.obj).dismiss();
        }
    }
}
