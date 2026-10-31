package androidx.appcompat.app;

import android.os.Message;
import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AlertController$1 implements View$OnClickListener {
    final /* synthetic */ AlertController this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AlertController$1(AlertController alertController) {
        this.this$0 = alertController;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        Message messageObtain;
        Message message;
        Message message2;
        Message message3;
        AlertController alertController = this.this$0;
        if (view == alertController.mButtonPositive && (message3 = alertController.mButtonPositiveMessage) != null) {
            messageObtain = Message.obtain(message3);
        } else if (view != alertController.mButtonNegative || (message2 = alertController.mButtonNegativeMessage) == null) {
            messageObtain = (view != alertController.mButtonNeutral || (message = alertController.mButtonNeutralMessage) == null) ? null : Message.obtain(message);
        } else {
            messageObtain = Message.obtain(message2);
        }
        if (messageObtain != null) {
            messageObtain.sendToTarget();
        }
        AlertController alertController2 = this.this$0;
        alertController2.mHandler.obtainMessage(1, alertController2.mDialog).sendToTarget();
    }
}
