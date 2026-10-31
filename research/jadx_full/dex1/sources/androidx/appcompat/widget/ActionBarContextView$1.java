package androidx.appcompat.widget;

import android.view.View;
import android.view.View$OnClickListener;
import androidx.appcompat.view.ActionMode;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActionBarContextView$1 implements View$OnClickListener {
    final /* synthetic */ ActionBarContextView this$0;
    final /* synthetic */ ActionMode val$mode;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public ActionBarContextView$1(ActionBarContextView actionBarContextView, ActionMode actionMode) {
        this.this$0 = actionBarContextView;
        this.val$mode = actionMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        this.val$mode.finish();
    }
}
