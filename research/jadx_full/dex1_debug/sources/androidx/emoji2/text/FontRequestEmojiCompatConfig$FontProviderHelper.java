package androidx.emoji2.text;

import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat;
import androidx.core.provider.FontsContractCompat$FontFamilyResult;
import androidx.core.provider.FontsContractCompat$FontInfo;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY})
public class FontRequestEmojiCompatConfig$FontProviderHelper {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Typeface buildTypeface(@NonNull Context context, @NonNull FontsContractCompat$FontInfo fontsContractCompat$FontInfo) {
        return FontsContractCompat.buildTypeface(context, null, new FontsContractCompat$FontInfo[]{fontsContractCompat$FontInfo});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FontsContractCompat$FontFamilyResult fetchFonts(@NonNull Context context, @NonNull FontRequest fontRequest) {
        return FontsContractCompat.fetchFonts(context, null, fontRequest);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void registerObserver(@NonNull Context context, @NonNull Uri uri, @NonNull ContentObserver contentObserver) {
        context.getContentResolver().registerContentObserver(uri, false, contentObserver);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unregisterObserver(@NonNull Context context, @NonNull ContentObserver contentObserver) {
        context.getContentResolver().unregisterContentObserver(contentObserver);
    }
}
