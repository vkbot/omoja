package androidx.emoji2.text;

import android.content.pm.PackageManager;
import android.content.pm.Signature;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(28)
@RestrictTo({RestrictTo$Scope.LIBRARY})
public class DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28 extends DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API19 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper
    @NonNull
    public Signature[] getSigningSignatures(@NonNull PackageManager packageManager, @NonNull String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }
}
