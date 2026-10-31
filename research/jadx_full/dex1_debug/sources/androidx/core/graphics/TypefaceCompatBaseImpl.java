package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.core.motion.utils.TypedValues$TransitionType;
import androidx.core.content.res.FontResourcesParserCompat$FontFamilyFilesResourceEntry;
import androidx.core.content.res.FontResourcesParserCompat$FontFileResourceEntry;
import androidx.core.provider.FontsContractCompat$FontInfo;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
class TypefaceCompatBaseImpl {
    private static final int INVALID_KEY = 0;
    private static final String TAG = "TypefaceCompatBaseImpl";
    private ConcurrentHashMap<Long, FontResourcesParserCompat$FontFamilyFilesResourceEntry> mFontFamilies = new ConcurrentHashMap<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addFontFamily(Typeface typeface, FontResourcesParserCompat$FontFamilyFilesResourceEntry fontResourcesParserCompat$FontFamilyFilesResourceEntry) {
        long uniqueKey = getUniqueKey(typeface);
        if (uniqueKey != 0) {
            this.mFontFamilies.put(Long.valueOf(uniqueKey), fontResourcesParserCompat$FontFamilyFilesResourceEntry);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FontResourcesParserCompat$FontFileResourceEntry findBestEntry(FontResourcesParserCompat$FontFamilyFilesResourceEntry fontResourcesParserCompat$FontFamilyFilesResourceEntry, int i9) {
        return (FontResourcesParserCompat$FontFileResourceEntry) findBestFont(fontResourcesParserCompat$FontFamilyFilesResourceEntry.getEntries(), i9, new TypefaceCompatBaseImpl$2(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static <T> T findBestFont(T[] tArr, int i9, boolean z8, TypefaceCompatBaseImpl$StyleExtractor<T> typefaceCompatBaseImpl$StyleExtractor) {
        T t = null;
        int i10 = Integer.MAX_VALUE;
        for (T t3 : tArr) {
            int iAbs = (Math.abs(typefaceCompatBaseImpl$StyleExtractor.getWeight(t3) - i9) * 2) + (typefaceCompatBaseImpl$StyleExtractor.isItalic(t3) == z8 ? 0 : 1);
            if (t == null || i10 > iAbs) {
                t = t3;
                i10 = iAbs;
            }
        }
        return t;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static long getUniqueKey(@Nullable Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException e) {
            Log.e(TAG, "Could not retrieve font from family.", e);
            return 0L;
        } catch (NoSuchFieldException e6) {
            Log.e(TAG, "Could not retrieve font from family.", e6);
            return 0L;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat$FontFamilyFilesResourceEntry fontResourcesParserCompat$FontFamilyFilesResourceEntry, Resources resources, int i9) {
        FontResourcesParserCompat$FontFileResourceEntry fontResourcesParserCompat$FontFileResourceEntryFindBestEntry = findBestEntry(fontResourcesParserCompat$FontFamilyFilesResourceEntry, i9);
        if (fontResourcesParserCompat$FontFileResourceEntryFindBestEntry == null) {
            return null;
        }
        Typeface typefaceCreateFromResourcesFontFile = TypefaceCompat.createFromResourcesFontFile(context, resources, fontResourcesParserCompat$FontFileResourceEntryFindBestEntry.getResourceId(), fontResourcesParserCompat$FontFileResourceEntryFindBestEntry.getFileName(), 0, i9);
        addFontFamily(typefaceCreateFromResourcesFontFile, fontResourcesParserCompat$FontFamilyFilesResourceEntry);
        return typefaceCreateFromResourcesFontFile;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Typeface createFromFontInfo(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr, int i9) throws Throwable {
        InputStream inputStreamOpenInputStream;
        InputStream inputStream = null;
        if (fontsContractCompat$FontInfoArr.length < 1) {
            return null;
        }
        try {
            inputStreamOpenInputStream = context.getContentResolver().openInputStream(findBestInfo(fontsContractCompat$FontInfoArr, i9).getUri());
            try {
                Typeface typefaceCreateFromInputStream = createFromInputStream(context, inputStreamOpenInputStream);
                TypefaceCompatUtil.closeQuietly(inputStreamOpenInputStream);
                return typefaceCreateFromInputStream;
            } catch (IOException unused) {
                TypefaceCompatUtil.closeQuietly(inputStreamOpenInputStream);
                return null;
            } catch (Throwable th) {
                th = th;
                inputStream = inputStreamOpenInputStream;
                TypefaceCompatUtil.closeQuietly(inputStream);
                throw th;
            }
        } catch (IOException unused2) {
            inputStreamOpenInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Typeface createFromInputStream(Context context, InputStream inputStream) {
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (TypefaceCompatUtil.copyToFile(tempFile, inputStream)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i9, String str, int i10) {
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (TypefaceCompatUtil.copyToFile(tempFile, resources, i9)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Typeface createWeightStyle(@NonNull Context context, @NonNull Typeface typeface, int i9, boolean z8) {
        Typeface typefaceCreateWeightStyle;
        try {
            typefaceCreateWeightStyle = WeightTypefaceApi14.createWeightStyle(this, context, typeface, i9, z8);
        } catch (RuntimeException unused) {
            typefaceCreateWeightStyle = null;
        }
        return typefaceCreateWeightStyle == null ? typeface : typefaceCreateWeightStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FontsContractCompat$FontInfo findBestInfo(FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr, int i9) {
        return (FontsContractCompat$FontInfo) findBestFont(fontsContractCompat$FontInfoArr, i9, new TypefaceCompatBaseImpl$1(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public FontResourcesParserCompat$FontFamilyFilesResourceEntry getFontFamily(Typeface typeface) {
        long uniqueKey = getUniqueKey(typeface);
        if (uniqueKey == 0) {
            return null;
        }
        return this.mFontFamilies.get(Long.valueOf(uniqueKey));
    }

    private FontResourcesParserCompat$FontFileResourceEntry findBestEntry(FontResourcesParserCompat$FontFamilyFilesResourceEntry fontResourcesParserCompat$FontFamilyFilesResourceEntry, int i9, boolean z8) {
        return (FontResourcesParserCompat$FontFileResourceEntry) findBestFont(fontResourcesParserCompat$FontFamilyFilesResourceEntry.getEntries(), i9, z8, new TypefaceCompatBaseImpl$3(this));
    }

    @Nullable
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat$FontFamilyFilesResourceEntry fontResourcesParserCompat$FontFamilyFilesResourceEntry, Resources resources, int i9, boolean z8) {
        FontResourcesParserCompat$FontFileResourceEntry fontResourcesParserCompat$FontFileResourceEntryFindBestEntry = findBestEntry(fontResourcesParserCompat$FontFamilyFilesResourceEntry, i9, z8);
        if (fontResourcesParserCompat$FontFileResourceEntryFindBestEntry == null) {
            return null;
        }
        Typeface typefaceCreateFromResourcesFontFile = TypefaceCompat.createFromResourcesFontFile(context, resources, fontResourcesParserCompat$FontFileResourceEntryFindBestEntry.getResourceId(), fontResourcesParserCompat$FontFileResourceEntryFindBestEntry.getFileName(), 0, 0);
        addFontFamily(typefaceCreateFromResourcesFontFile, fontResourcesParserCompat$FontFamilyFilesResourceEntry);
        return typefaceCreateFromResourcesFontFile;
    }

    private static <T> T findBestFont(T[] tArr, int i9, TypefaceCompatBaseImpl$StyleExtractor<T> typefaceCompatBaseImpl$StyleExtractor) {
        return (T) findBestFont(tArr, (i9 & 1) == 0 ? 400 : TypedValues$TransitionType.TYPE_DURATION, (i9 & 2) != 0, typefaceCompatBaseImpl$StyleExtractor);
    }
}
