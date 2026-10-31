package androidx.core.app;

import android.content.Intent;
import android.os.Build$VERSION;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(20)
public class RemoteInput$Api20Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private RemoteInput$Api20Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void addResultsToIntent(Object obj, Intent intent, Bundle bundle) {
        android.app.RemoteInput.addResultsToIntent((android.app.RemoteInput[]) obj, intent, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static android.app.RemoteInput fromCompat(RemoteInput remoteInput) {
        Set<String> allowedDataTypes;
        android.app.RemoteInput$Builder remoteInput$BuilderAddExtras = new android.app.RemoteInput$Builder(remoteInput.getResultKey()).setLabel(remoteInput.getLabel()).setChoices(remoteInput.getChoices()).setAllowFreeFormInput(remoteInput.getAllowFreeFormInput()).addExtras(remoteInput.getExtras());
        if (Build$VERSION.SDK_INT >= 26 && (allowedDataTypes = remoteInput.getAllowedDataTypes()) != null) {
            Iterator<String> it = allowedDataTypes.iterator();
            while (it.hasNext()) {
                RemoteInput$Api26Impl.setAllowDataType(remoteInput$BuilderAddExtras, it.next(), true);
            }
        }
        if (Build$VERSION.SDK_INT >= 29) {
            RemoteInput$Api29Impl.setEditChoicesBeforeSending(remoteInput$BuilderAddExtras, remoteInput.getEditChoicesBeforeSending());
        }
        return remoteInput$BuilderAddExtras.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static RemoteInput fromPlatform(Object obj) {
        Set<String> allowedDataTypes;
        android.app.RemoteInput remoteInput = (android.app.RemoteInput) obj;
        RemoteInput$Builder remoteInput$BuilderAddExtras = new RemoteInput$Builder(remoteInput.getResultKey()).setLabel(remoteInput.getLabel()).setChoices(remoteInput.getChoices()).setAllowFreeFormInput(remoteInput.getAllowFreeFormInput()).addExtras(remoteInput.getExtras());
        if (Build$VERSION.SDK_INT >= 26 && (allowedDataTypes = RemoteInput$Api26Impl.getAllowedDataTypes(remoteInput)) != null) {
            Iterator<String> it = allowedDataTypes.iterator();
            while (it.hasNext()) {
                remoteInput$BuilderAddExtras.setAllowDataType(it.next(), true);
            }
        }
        if (Build$VERSION.SDK_INT >= 29) {
            remoteInput$BuilderAddExtras.setEditChoicesBeforeSending(RemoteInput$Api29Impl.getEditChoicesBeforeSending(remoteInput));
        }
        return remoteInput$BuilderAddExtras.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Bundle getResultsFromIntent(Intent intent) {
        return android.app.RemoteInput.getResultsFromIntent(intent);
    }
}
