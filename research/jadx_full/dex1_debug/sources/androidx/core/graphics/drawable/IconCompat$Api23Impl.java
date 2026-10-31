package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources$NotFoundException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff$Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build$VERSION;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
import androidx.navigation.b;
import j1.i;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(23)
public class IconCompat$Api23Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private IconCompat$Api23Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static IconCompat createFromIcon(@NonNull Context context, @NonNull Icon icon) {
        int type = getType(icon);
        if (type == 2) {
            String resPackage = getResPackage(icon);
            try {
                return IconCompat.createWithResource(IconCompat.getResources(context, resPackage), resPackage, getResId(icon));
            } catch (Resources$NotFoundException unused) {
                i.k("Icon resource cannot be found");
                return null;
            }
        }
        if (type == 4) {
            return IconCompat.createWithContentUri(getUri(icon));
        }
        if (type == 6) {
            return IconCompat.createWithAdaptiveBitmapContentUri(getUri(icon));
        }
        IconCompat iconCompat = new IconCompat(-1);
        iconCompat.mObj1 = icon;
        return iconCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static IconCompat createFromIconInner(@NonNull Object obj) {
        Preconditions.checkNotNull(obj);
        int type = getType(obj);
        if (type == 2) {
            return IconCompat.createWithResource(null, getResPackage(obj), getResId(obj));
        }
        if (type == 4) {
            return IconCompat.createWithContentUri(getUri(obj));
        }
        if (type == 6) {
            return IconCompat.createWithAdaptiveBitmapContentUri(getUri(obj));
        }
        IconCompat iconCompat = new IconCompat(-1);
        iconCompat.mObj1 = obj;
        return iconCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DrawableRes
    @IdRes
    public static int getResId(@NonNull Object obj) {
        if (Build$VERSION.SDK_INT >= 28) {
            return IconCompat$Api28Impl.getResId(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getResId", null).invoke(obj, null)).intValue();
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon resource", e);
            return 0;
        } catch (NoSuchMethodException e6) {
            Log.e("IconCompat", "Unable to get icon resource", e6);
            return 0;
        } catch (InvocationTargetException e9) {
            Log.e("IconCompat", "Unable to get icon resource", e9);
            return 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static String getResPackage(@NonNull Object obj) {
        if (Build$VERSION.SDK_INT >= 28) {
            return IconCompat$Api28Impl.getResPackage(obj);
        }
        try {
            return (String) obj.getClass().getMethod("getResPackage", null).invoke(obj, null);
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon package", e);
            return null;
        } catch (NoSuchMethodException e6) {
            Log.e("IconCompat", "Unable to get icon package", e6);
            return null;
        } catch (InvocationTargetException e9) {
            Log.e("IconCompat", "Unable to get icon package", e9);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getType(@NonNull Object obj) {
        if (Build$VERSION.SDK_INT >= 28) {
            return IconCompat$Api28Impl.getType(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getType", null).invoke(obj, null)).intValue();
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e);
            return -1;
        } catch (NoSuchMethodException e6) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e6);
            return -1;
        } catch (InvocationTargetException e9) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e9);
            return -1;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @DoNotInline
    public static Uri getUri(@NonNull Object obj) {
        if (Build$VERSION.SDK_INT >= 28) {
            return IconCompat$Api28Impl.getUri(obj);
        }
        try {
            return (Uri) obj.getClass().getMethod("getUri", null).invoke(obj, null);
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon uri", e);
            return null;
        } catch (NoSuchMethodException e6) {
            Log.e("IconCompat", "Unable to get icon uri", e6);
            return null;
        } catch (InvocationTargetException e9) {
            Log.e("IconCompat", "Unable to get icon uri", e9);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Drawable loadDrawable(Icon icon, Context context) {
        return icon.loadDrawable(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Icon toIcon(IconCompat iconCompat, Context context) {
        Icon iconCreateWithBitmap;
        switch (iconCompat.mType) {
            case -1:
                return (Icon) iconCompat.mObj1;
            case 0:
            default:
                i.k("Unknown type");
                return null;
            case 1:
                iconCreateWithBitmap = Icon.createWithBitmap((Bitmap) iconCompat.mObj1);
                break;
            case 2:
                iconCreateWithBitmap = Icon.createWithResource(iconCompat.getResPackage(), iconCompat.mInt1);
                break;
            case 3:
                iconCreateWithBitmap = Icon.createWithData((byte[]) iconCompat.mObj1, iconCompat.mInt1, iconCompat.mInt2);
                break;
            case 4:
                iconCreateWithBitmap = Icon.createWithContentUri((String) iconCompat.mObj1);
                break;
            case 5:
                int i9 = Build$VERSION.SDK_INT;
                Object obj = iconCompat.mObj1;
                iconCreateWithBitmap = i9 < 26 ? Icon.createWithBitmap(IconCompat.createLegacyIconFromAdaptiveIcon((Bitmap) obj, false)) : IconCompat$Api26Impl.createWithAdaptiveBitmap((Bitmap) obj);
                break;
            case 6:
                int i10 = Build$VERSION.SDK_INT;
                if (i10 >= 30) {
                    iconCreateWithBitmap = IconCompat$Api30Impl.createWithAdaptiveBitmapContentUri(iconCompat.getUri());
                } else {
                    if (context == null) {
                        b.o(iconCompat.getUri(), "Context is required to resolve the file uri of the icon: ");
                        return null;
                    }
                    InputStream uriInputStream = iconCompat.getUriInputStream(context);
                    if (uriInputStream == null) {
                        ai.onnxruntime.b.u(iconCompat.getUri(), "Cannot load adaptive icon from uri: ");
                        return null;
                    }
                    if (i10 < 26) {
                        iconCreateWithBitmap = Icon.createWithBitmap(IconCompat.createLegacyIconFromAdaptiveIcon(BitmapFactory.decodeStream(uriInputStream), false));
                    } else {
                        iconCreateWithBitmap = IconCompat$Api26Impl.createWithAdaptiveBitmap(BitmapFactory.decodeStream(uriInputStream));
                    }
                }
                break;
        }
        ColorStateList colorStateList = iconCompat.mTintList;
        if (colorStateList != null) {
            iconCreateWithBitmap.setTintList(colorStateList);
        }
        PorterDuff$Mode porterDuff$Mode = iconCompat.mTintMode;
        if (porterDuff$Mode != IconCompat.DEFAULT_TINT_MODE) {
            iconCreateWithBitmap.setTintMode(porterDuff$Mode);
        }
        return iconCreateWithBitmap;
    }
}
