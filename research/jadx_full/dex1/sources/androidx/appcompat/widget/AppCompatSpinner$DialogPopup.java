package androidx.appcompat.widget;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AlertDialog$Builder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@VisibleForTesting
public class AppCompatSpinner$DialogPopup implements AppCompatSpinner$SpinnerPopup, DialogInterface$OnClickListener {
    private ListAdapter mListAdapter;

    @VisibleForTesting
    AlertDialog mPopup;
    private CharSequence mPrompt;
    final /* synthetic */ AppCompatSpinner this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatSpinner$DialogPopup(AppCompatSpinner appCompatSpinner) {
        this.this$0 = appCompatSpinner;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void dismiss() {
        AlertDialog alertDialog = this.mPopup;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.mPopup = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public Drawable getBackground() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public CharSequence getHintText() {
        return this.mPrompt;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public int getHorizontalOffset() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public int getHorizontalOriginalOffset() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public int getVerticalOffset() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public boolean isShowing() {
        AlertDialog alertDialog = this.mPopup;
        if (alertDialog != null) {
            return alertDialog.isShowing();
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.DialogInterface$OnClickListener
    public void onClick(DialogInterface dialogInterface, int i9) {
        this.this$0.setSelection(i9);
        if (this.this$0.getOnItemClickListener() != null) {
            this.this$0.performItemClick(null, i9, this.mListAdapter.getItemId(i9));
        }
        dismiss();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void setAdapter(ListAdapter listAdapter) {
        this.mListAdapter = listAdapter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void setBackgroundDrawable(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void setHorizontalOffset(int i9) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void setHorizontalOriginalOffset(int i9) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void setPromptText(CharSequence charSequence) {
        this.mPrompt = charSequence;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void setVerticalOffset(int i9) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void show(int i9, int i10) {
        if (this.mListAdapter == null) {
            return;
        }
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this.this$0.getPopupContext());
        CharSequence charSequence = this.mPrompt;
        if (charSequence != null) {
            alertDialog$Builder.setTitle(charSequence);
        }
        AlertDialog alertDialogCreate = alertDialog$Builder.setSingleChoiceItems(this.mListAdapter, this.this$0.getSelectedItemPosition(), this).create();
        this.mPopup = alertDialogCreate;
        ListView listView = alertDialogCreate.getListView();
        listView.setTextDirection(i9);
        listView.setTextAlignment(i10);
        this.mPopup.show();
    }
}
