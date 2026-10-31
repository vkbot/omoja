package androidx.appcompat.widget;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DrawableUtils$Api18Impl {
    private static final Field sBottom;
    private static final Method sGetOpticalInsets;
    private static final Field sLeft;
    private static final boolean sReflectionSuccessful;
    private static final Field sRight;
    private static final Field sTop;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:25:0x004a  */
    /* JADX WARN: Code duplicated, block: B:26:0x0057  */
    static {
        Method method;
        Field field;
        Field field2;
        Field field3;
        Field field4;
        boolean z8;
        try {
            Class<?> cls = Class.forName("android.graphics.Insets");
            method = Drawable.class.getMethod("getOpticalInsets", null);
            try {
                field = cls.getField("left");
                try {
                    field2 = cls.getField("top");
                    try {
                        field3 = cls.getField("right");
                        try {
                            field4 = cls.getField("bottom");
                            z8 = true;
                        } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused) {
                            field4 = null;
                            z8 = false;
                        }
                    } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused2) {
                        field3 = null;
                    }
                } catch (ClassNotFoundException unused3) {
                    field2 = null;
                    field3 = field2;
                    field4 = null;
                    z8 = false;
                    if (z8) {
                        sGetOpticalInsets = method;
                        sLeft = field;
                        sTop = field2;
                        sRight = field3;
                        sBottom = field4;
                        sReflectionSuccessful = true;
                        return;
                    }
                    sGetOpticalInsets = null;
                    sLeft = null;
                    sTop = null;
                    sRight = null;
                    sBottom = null;
                    sReflectionSuccessful = false;
                } catch (NoSuchFieldException unused4) {
                    field2 = null;
                    field3 = field2;
                    field4 = null;
                    z8 = false;
                    if (z8) {
                        sGetOpticalInsets = method;
                        sLeft = field;
                        sTop = field2;
                        sRight = field3;
                        sBottom = field4;
                        sReflectionSuccessful = true;
                        return;
                    }
                    sGetOpticalInsets = null;
                    sLeft = null;
                    sTop = null;
                    sRight = null;
                    sBottom = null;
                    sReflectionSuccessful = false;
                } catch (NoSuchMethodException unused5) {
                    field2 = null;
                    field3 = field2;
                    field4 = null;
                    z8 = false;
                    if (z8) {
                        sGetOpticalInsets = method;
                        sLeft = field;
                        sTop = field2;
                        sRight = field3;
                        sBottom = field4;
                        sReflectionSuccessful = true;
                        return;
                    }
                    sGetOpticalInsets = null;
                    sLeft = null;
                    sTop = null;
                    sRight = null;
                    sBottom = null;
                    sReflectionSuccessful = false;
                }
            } catch (ClassNotFoundException unused6) {
                field = null;
                field2 = field;
                field3 = field2;
                field4 = null;
                z8 = false;
                if (z8) {
                    sGetOpticalInsets = method;
                    sLeft = field;
                    sTop = field2;
                    sRight = field3;
                    sBottom = field4;
                    sReflectionSuccessful = true;
                    return;
                }
                sGetOpticalInsets = null;
                sLeft = null;
                sTop = null;
                sRight = null;
                sBottom = null;
                sReflectionSuccessful = false;
            } catch (NoSuchFieldException unused7) {
                field = null;
                field2 = field;
                field3 = field2;
                field4 = null;
                z8 = false;
                if (z8) {
                    sGetOpticalInsets = method;
                    sLeft = field;
                    sTop = field2;
                    sRight = field3;
                    sBottom = field4;
                    sReflectionSuccessful = true;
                    return;
                }
                sGetOpticalInsets = null;
                sLeft = null;
                sTop = null;
                sRight = null;
                sBottom = null;
                sReflectionSuccessful = false;
            } catch (NoSuchMethodException unused8) {
                field = null;
                field2 = field;
                field3 = field2;
                field4 = null;
                z8 = false;
                if (z8) {
                    sGetOpticalInsets = method;
                    sLeft = field;
                    sTop = field2;
                    sRight = field3;
                    sBottom = field4;
                    sReflectionSuccessful = true;
                    return;
                }
                sGetOpticalInsets = null;
                sLeft = null;
                sTop = null;
                sRight = null;
                sBottom = null;
                sReflectionSuccessful = false;
            }
        } catch (ClassNotFoundException unused9) {
            method = null;
            field = null;
        } catch (NoSuchFieldException unused10) {
            method = null;
            field = null;
        } catch (NoSuchMethodException unused11) {
            method = null;
            field = null;
        }
        if (z8) {
            sGetOpticalInsets = method;
            sLeft = field;
            sTop = field2;
            sRight = field3;
            sBottom = field4;
            sReflectionSuccessful = true;
            return;
        }
        sGetOpticalInsets = null;
        sLeft = null;
        sTop = null;
        sRight = null;
        sBottom = null;
        sReflectionSuccessful = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private DrawableUtils$Api18Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static Rect getOpticalInsets(@NonNull Drawable drawable) {
        if (Build$VERSION.SDK_INT < 29 && sReflectionSuccessful) {
            try {
                Object objInvoke = sGetOpticalInsets.invoke(drawable, null);
                if (objInvoke != null) {
                    return new Rect(sLeft.getInt(objInvoke), sTop.getInt(objInvoke), sRight.getInt(objInvoke), sBottom.getInt(objInvoke));
                }
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return DrawableUtils.INSETS_NONE;
    }
}
