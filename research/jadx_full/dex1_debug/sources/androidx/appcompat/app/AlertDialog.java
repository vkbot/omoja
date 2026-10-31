package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.StyleRes;
import androidx.appcompat.R$attr;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AlertDialog extends AppCompatDialog implements DialogInterface {
    static final int LAYOUT_HINT_NONE = 0;
    static final int LAYOUT_HINT_SIDE = 1;
    final AlertController mAlert;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AlertDialog(@NonNull Context context, @StyleRes int i9) {
        super(context, resolveDialogTheme(context, i9));
        this.mAlert = new AlertController(getContext(), this, getWindow());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int resolveDialogTheme(@NonNull Context context, @StyleRes int i9) {
        if (((i9 >>> 24) & 255) >= 1) {
            return i9;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Button getButton(int i9) {
        return this.mAlert.getButton(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ListView getListView() {
        return this.mAlert.getListView();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mAlert.installContent();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Dialog, android.view.KeyEvent$Callback
    public boolean onKeyDown(int i9, KeyEvent keyEvent) {
        if (this.mAlert.onKeyDown(i9, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i9, keyEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Dialog, android.view.KeyEvent$Callback
    public boolean onKeyUp(int i9, KeyEvent keyEvent) {
        if (this.mAlert.onKeyUp(i9, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i9, keyEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setButton(int i9, CharSequence charSequence, Message message) {
        this.mAlert.setButton(i9, charSequence, null, message, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void setButtonPanelLayoutHint(int i9) {
        this.mAlert.setButtonPanelLayoutHint(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCustomTitle(View view) {
        this.mAlert.setCustomTitle(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIcon(int i9) {
        this.mAlert.setIcon(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIconAttribute(int i9) {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(i9, typedValue, true);
        this.mAlert.setIcon(typedValue.resourceId);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMessage(CharSequence charSequence) {
        this.mAlert.setMessage(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.mAlert.setTitle(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setView(View view, int i9, int i10, int i11, int i12) {
        this.mAlert.setView(view, i9, i10, i11, i12);
    }

    public void setIcon(Drawable drawable) {
        this.mAlert.setIcon(drawable);
    }

    public void setButton(int i9, CharSequence charSequence, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.mAlert.setButton(i9, charSequence, dialogInterface$OnClickListener, null, null);
    }

    public void setView(View view) {
        this.mAlert.setView(view);
    }

    public void setButton(int i9, CharSequence charSequence, Drawable drawable, DialogInterface$OnClickListener dialogInterface$OnClickListener) {
        this.mAlert.setButton(i9, charSequence, dialogInterface$OnClickListener, null, drawable);
    }

    public AlertDialog(@NonNull Context context) {
        this(context, 0);
    }

    public AlertDialog(@NonNull Context context, boolean z8, @Nullable DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        this(context, 0);
        setCancelable(z8);
        setOnCancelListener(dialogInterface$OnCancelListener);
    }
}
