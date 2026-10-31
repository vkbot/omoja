package androidx.emoji2.text;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Build$VERSION;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.VisibleForTesting;
import androidx.core.provider.FontRequest;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY})
public class DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory {

    @NonNull
    private static final String DEFAULT_EMOJI_QUERY = "emojicompat-emoji-font";

    @NonNull
    private static final String INTENT_LOAD_EMOJI_FONT = "androidx.content.action.LOAD_EMOJI_FONT";

    @NonNull
    private static final String TAG = "emoji2.text.DefaultEmojiConfig";
    private final DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper mHelper;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory(@Nullable DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper defaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper) {
        this.mHelper = defaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper == null ? getHelperForApi() : defaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private EmojiCompat$Config configOrNull(@NonNull Context context, @Nullable FontRequest fontRequest) {
        if (fontRequest == null) {
            return null;
        }
        return new FontRequestEmojiCompatConfig(context, fontRequest);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private List<List<byte[]>> convertToByteArray(@NonNull Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return Collections.singletonList(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private FontRequest generateFontRequestFrom(@NonNull ProviderInfo providerInfo, @NonNull PackageManager packageManager) {
        String str = providerInfo.authority;
        String str2 = providerInfo.packageName;
        return new FontRequest(str, str2, DEFAULT_EMOJI_QUERY, convertToByteArray(this.mHelper.getSigningSignatures(packageManager, str2)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private static DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper getHelperForApi() {
        return Build$VERSION.SDK_INT >= 28 ? new DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28() : new DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API19();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean hasFlagSystem(@Nullable ProviderInfo providerInfo) {
        ApplicationInfo applicationInfo;
        return (providerInfo == null || (applicationInfo = providerInfo.applicationInfo) == null || (applicationInfo.flags & 1) != 1) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private ProviderInfo queryDefaultInstalledContentProvider(@NonNull PackageManager packageManager) {
        Iterator<ResolveInfo> it = this.mHelper.queryIntentContentProviders(packageManager, new Intent(INTENT_LOAD_EMOJI_FONT), 0).iterator();
        while (it.hasNext()) {
            ProviderInfo providerInfo = this.mHelper.getProviderInfo(it.next());
            if (hasFlagSystem(providerInfo)) {
                return providerInfo;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public EmojiCompat$Config create(@NonNull Context context) {
        return configOrNull(context, queryForDefaultFontRequest(context));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    @VisibleForTesting
    public FontRequest queryForDefaultFontRequest(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        Preconditions.checkNotNull(packageManager, "Package manager required to locate emoji font provider");
        ProviderInfo providerInfoQueryDefaultInstalledContentProvider = queryDefaultInstalledContentProvider(packageManager);
        if (providerInfoQueryDefaultInstalledContentProvider == null) {
            return null;
        }
        try {
            return generateFontRequestFrom(providerInfoQueryDefaultInstalledContentProvider, packageManager);
        } catch (PackageManager$NameNotFoundException e) {
            Log.wtf(TAG, e);
            return null;
        }
    }
}
