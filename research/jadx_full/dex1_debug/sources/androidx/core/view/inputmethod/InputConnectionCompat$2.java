package androidx.core.view.inputmethod;

import android.os.Bundle;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class InputConnectionCompat$2 extends InputConnectionWrapper {
    final /* synthetic */ InputConnectionCompat$OnCommitContentListener val$listener;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InputConnectionCompat$2(InputConnection inputConnection, boolean z8, InputConnectionCompat$OnCommitContentListener inputConnectionCompat$OnCommitContentListener) {
        super(inputConnection, z8);
        this.val$listener = inputConnectionCompat$OnCommitContentListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        if (InputConnectionCompat.handlePerformPrivateCommand(str, bundle, this.val$listener)) {
            return true;
        }
        return super.performPrivateCommand(str, bundle);
    }
}
