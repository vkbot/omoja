package androidx.fragment.app;

import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DialogFragment$3 implements DialogInterface$OnDismissListener {
    final /* synthetic */ DialogFragment this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DialogFragment$3(DialogFragment dialogFragment) {
        this.this$0 = dialogFragment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.DialogInterface$OnDismissListener
    public void onDismiss(@Nullable DialogInterface dialogInterface) {
        if (DialogFragment.access$000(this.this$0) != null) {
            DialogFragment dialogFragment = this.this$0;
            dialogFragment.onDismiss(DialogFragment.access$000(dialogFragment));
        }
    }
}
