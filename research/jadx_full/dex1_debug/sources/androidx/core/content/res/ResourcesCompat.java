package androidx.core.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources$NotFoundException;
import android.content.res.Resources$Theme;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.os.Handler;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.annotation.AnyRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.FontRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.util.Preconditions;
import java.io.IOException;
import java.util.Iterator;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ResourcesCompat {

    @AnyRes
    public static final int ID_NULL = 0;
    private static final String TAG = "ResourcesCompat";
    private static final ThreadLocal<TypedValue> sTempTypedValue = new ThreadLocal<>();

    @GuardedBy("sColorStateCacheLock")
    private static final WeakHashMap<ResourcesCompat$ColorStateListCacheKey, SparseArray<ResourcesCompat$ColorStateListCacheEntry>> sColorStateCaches = new WeakHashMap<>(0);
    private static final Object sColorStateCacheLock = new Object();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ResourcesCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void addColorStateListToCache(@NonNull ResourcesCompat$ColorStateListCacheKey resourcesCompat$ColorStateListCacheKey, @ColorRes int i9, @NonNull ColorStateList colorStateList, @Nullable Resources$Theme resources$Theme) {
        synchronized (sColorStateCacheLock) {
            try {
                WeakHashMap<ResourcesCompat$ColorStateListCacheKey, SparseArray<ResourcesCompat$ColorStateListCacheEntry>> weakHashMap = sColorStateCaches;
                SparseArray<ResourcesCompat$ColorStateListCacheEntry> sparseArray = weakHashMap.get(resourcesCompat$ColorStateListCacheKey);
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                    weakHashMap.put(resourcesCompat$ColorStateListCacheKey, sparseArray);
                }
                sparseArray.append(i9, new ResourcesCompat$ColorStateListCacheEntry(colorStateList, resourcesCompat$ColorStateListCacheKey.mResources.getConfiguration(), resources$Theme));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void clearCachesForTheme(@NonNull Resources$Theme resources$Theme) {
        synchronized (sColorStateCacheLock) {
            try {
                Iterator<ResourcesCompat$ColorStateListCacheKey> it = sColorStateCaches.keySet().iterator();
                while (it.hasNext()) {
                    ResourcesCompat$ColorStateListCacheKey next = it.next();
                    if (next != null && resources$Theme.equals(next.mTheme)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003c, code lost:
    
        if (r2.mThemeHash == r5.hashCode()) goto L22;
     */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ColorStateList getCachedColorStateList(@NonNull ResourcesCompat$ColorStateListCacheKey resourcesCompat$ColorStateListCacheKey, @ColorRes int i9) {
        ResourcesCompat$ColorStateListCacheEntry resourcesCompat$ColorStateListCacheEntry;
        synchronized (sColorStateCacheLock) {
            try {
                SparseArray<ResourcesCompat$ColorStateListCacheEntry> sparseArray = sColorStateCaches.get(resourcesCompat$ColorStateListCacheKey);
                if (sparseArray != null && sparseArray.size() > 0 && (resourcesCompat$ColorStateListCacheEntry = sparseArray.get(i9)) != null) {
                    if (resourcesCompat$ColorStateListCacheEntry.mConfiguration.equals(resourcesCompat$ColorStateListCacheKey.mResources.getConfiguration())) {
                        Resources$Theme resources$Theme = resourcesCompat$ColorStateListCacheKey.mTheme;
                        if (resources$Theme != null || resourcesCompat$ColorStateListCacheEntry.mThemeHash != 0) {
                            if (resources$Theme != null) {
                            }
                        }
                        return resourcesCompat$ColorStateListCacheEntry.mValue;
                    }
                    sparseArray.remove(i9);
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static Typeface getCachedFont(@NonNull Context context, @FontRes int i9) {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, i9, new TypedValue(), 0, null, null, false, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    public static int getColor(@NonNull Resources resources, @ColorRes int i9, @Nullable Resources$Theme resources$Theme) {
        return ResourcesCompat$Api23Impl.getColor(resources, i9, resources$Theme);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static ColorStateList getColorStateList(@NonNull Resources resources, @ColorRes int i9, @Nullable Resources$Theme resources$Theme) {
        ResourcesCompat$ColorStateListCacheKey resourcesCompat$ColorStateListCacheKey = new ResourcesCompat$ColorStateListCacheKey(resources, resources$Theme);
        ColorStateList cachedColorStateList = getCachedColorStateList(resourcesCompat$ColorStateListCacheKey, i9);
        if (cachedColorStateList != null) {
            return cachedColorStateList;
        }
        ColorStateList colorStateListInflateColorStateList = inflateColorStateList(resources, i9, resources$Theme);
        if (colorStateListInflateColorStateList == null) {
            return ResourcesCompat$Api23Impl.getColorStateList(resources, i9, resources$Theme);
        }
        addColorStateListToCache(resourcesCompat$ColorStateListCacheKey, i9, colorStateListInflateColorStateList, resources$Theme);
        return colorStateListInflateColorStateList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static Drawable getDrawable(@NonNull Resources resources, @DrawableRes int i9, @Nullable Resources$Theme resources$Theme) {
        return ResourcesCompat$Api21Impl.getDrawable(resources, i9, resources$Theme);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static Drawable getDrawableForDensity(@NonNull Resources resources, @DrawableRes int i9, int i10, @Nullable Resources$Theme resources$Theme) {
        return ResourcesCompat$Api21Impl.getDrawableForDensity(resources, i9, i10, resources$Theme);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float getFloat(@NonNull Resources resources, @DimenRes int i9) {
        if (Build$VERSION.SDK_INT >= 29) {
            return ResourcesCompat$Api29Impl.getFloat(resources, i9);
        }
        TypedValue typedValue = getTypedValue();
        resources.getValue(i9, typedValue, true);
        if (typedValue.type == 4) {
            return typedValue.getFloat();
        }
        throw new Resources$NotFoundException("Resource ID #0x" + Integer.toHexString(i9) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void getFont(@NonNull Context context, @FontRes int i9, @NonNull ResourcesCompat$FontCallback resourcesCompat$FontCallback, @Nullable Handler handler) {
        Preconditions.checkNotNull(resourcesCompat$FontCallback);
        if (context.isRestricted()) {
            resourcesCompat$FontCallback.callbackFailAsync(-4, handler);
        } else {
            loadFont(context, i9, new TypedValue(), 0, resourcesCompat$FontCallback, handler, false, false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private static TypedValue getTypedValue() {
        ThreadLocal<TypedValue> threadLocal = sTempTypedValue;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private static ColorStateList inflateColorStateList(Resources resources, int i9, @Nullable Resources$Theme resources$Theme) {
        if (isColorInt(resources, i9)) {
            return null;
        }
        try {
            return ColorStateListInflaterCompat.createFromXml(resources, resources.getXml(i9), resources$Theme);
        } catch (Exception e) {
            Log.w(TAG, "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isColorInt(@NonNull Resources resources, @ColorRes int i9) {
        TypedValue typedValue = getTypedValue();
        resources.getValue(i9, typedValue, true);
        int i10 = typedValue.type;
        return i10 >= 28 && i10 <= 31;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:46:0x009d  */
    private static Typeface loadFont(@NonNull Context context, Resources resources, @NonNull TypedValue typedValue, int i9, int i10, @Nullable ResourcesCompat$FontCallback resourcesCompat$FontCallback, @Nullable Handler handler, boolean z8, boolean z9) {
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources$NotFoundException("Resource \"" + resources.getResourceName(i9) + "\" (" + Integer.toHexString(i9) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        if (!string.startsWith("res/")) {
            if (resourcesCompat$FontCallback != null) {
                resourcesCompat$FontCallback.callbackFailAsync(-3, handler);
            }
            return null;
        }
        Typeface typefaceFindFromCache = TypefaceCompat.findFromCache(resources, i9, string, typedValue.assetCookie, i10);
        if (typefaceFindFromCache != null) {
            if (resourcesCompat$FontCallback != null) {
                resourcesCompat$FontCallback.callbackSuccessAsync(typefaceFindFromCache, handler);
            }
            return typefaceFindFromCache;
        }
        if (z9) {
            return null;
        }
        try {
            if (!string.toLowerCase().endsWith(".xml")) {
                Typeface typefaceCreateFromResourcesFontFile = TypefaceCompat.createFromResourcesFontFile(context, resources, i9, string, typedValue.assetCookie, i10);
                if (resourcesCompat$FontCallback != null) {
                    if (typefaceCreateFromResourcesFontFile != null) {
                        resourcesCompat$FontCallback.callbackSuccessAsync(typefaceCreateFromResourcesFontFile, handler);
                        return typefaceCreateFromResourcesFontFile;
                    }
                    resourcesCompat$FontCallback.callbackFailAsync(-3, handler);
                }
                return typefaceCreateFromResourcesFontFile;
            }
            FontResourcesParserCompat$FamilyResourceEntry fontResourcesParserCompat$FamilyResourceEntry = FontResourcesParserCompat.parse(resources.getXml(i9), resources);
            if (fontResourcesParserCompat$FamilyResourceEntry == null) {
                Log.e(TAG, "Failed to find font-family tag");
                if (resourcesCompat$FontCallback != null) {
                    resourcesCompat$FontCallback.callbackFailAsync(-3, handler);
                }
                return null;
            }
            try {
                return TypefaceCompat.createFromResourcesFamilyXml(context, fontResourcesParserCompat$FamilyResourceEntry, resources, i9, string, typedValue.assetCookie, i10, resourcesCompat$FontCallback, handler, z8);
            } catch (IOException e) {
                e = e;
                string = string;
                Log.e(TAG, "Failed to read xml resource ".concat(string), e);
                if (resourcesCompat$FontCallback != null) {
                    resourcesCompat$FontCallback.callbackFailAsync(-3, handler);
                }
                return null;
            } catch (XmlPullParserException e6) {
                e = e6;
                string = string;
                Log.e(TAG, "Failed to parse xml resource ".concat(string), e);
                if (resourcesCompat$FontCallback != null) {
                    resourcesCompat$FontCallback.callbackFailAsync(-3, handler);
                }
                return null;
            }
        } catch (IOException e9) {
            e = e9;
        } catch (XmlPullParserException e10) {
            e = e10;
        }
    }

    @Nullable
    public static Typeface getFont(@NonNull Context context, @FontRes int i9) {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, i9, new TypedValue(), 0, null, null, false, false);
    }

    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public static Typeface getFont(@NonNull Context context, @FontRes int i9, @NonNull TypedValue typedValue, int i10, @Nullable ResourcesCompat$FontCallback resourcesCompat$FontCallback) {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, i9, typedValue, i10, resourcesCompat$FontCallback, null, true, false);
    }

    private static Typeface loadFont(@NonNull Context context, int i9, @NonNull TypedValue typedValue, int i10, @Nullable ResourcesCompat$FontCallback resourcesCompat$FontCallback, @Nullable Handler handler, boolean z8, boolean z9) {
        Resources resources = context.getResources();
        resources.getValue(i9, typedValue, true);
        Typeface typefaceLoadFont = loadFont(context, resources, typedValue, i9, i10, resourcesCompat$FontCallback, handler, z8, z9);
        if (typefaceLoadFont != null || resourcesCompat$FontCallback != null || z9) {
            return typefaceLoadFont;
        }
        throw new Resources$NotFoundException("Font resource ID #0x" + Integer.toHexString(i9) + " could not be retrieved.");
    }
}
