package androidx.core.app;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.DragEvent;
import android.view.View;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.content.ContextCompat;
import androidx.core.content.LocusIdCompat;
import androidx.core.view.DragAndDropPermissionsCompat;
import j1.i;
import java.util.Arrays;
import java.util.HashSet;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActivityCompat extends ContextCompat {
    private static ActivityCompat$PermissionCompatDelegate sDelegate;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(Activity activity) {
        lambda$recreate$0(activity);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void finishAffinity(@NonNull Activity activity) {
        activity.finishAffinity();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void finishAfterTransition(@NonNull Activity activity) {
        ActivityCompat$Api21Impl.finishAfterTransition(activity);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public static ActivityCompat$PermissionCompatDelegate getPermissionCompatDelegate() {
        return sDelegate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static Uri getReferrer(@NonNull Activity activity) {
        return ActivityCompat$Api22Impl.getReferrer(activity);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public static boolean invalidateOptionsMenu(Activity activity) {
        activity.invalidateOptionsMenu();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isLaunchedFromBubble(@NonNull Activity activity) {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 31) {
            return ActivityCompat$Api31Impl.isLaunchedFromBubble(activity);
        }
        if (i9 == 30) {
            return (ActivityCompat$Api30Impl.getDisplay(activity) == null || ActivityCompat$Api30Impl.getDisplay(activity).getDisplayId() == 0) ? false : true;
        }
        return (i9 != 29 || activity.getWindowManager().getDefaultDisplay() == null || activity.getWindowManager().getDefaultDisplay().getDisplayId() == 0) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$recreate$0(Activity activity) {
        if (activity.isFinishing() || ActivityRecreator.recreate(activity)) {
            return;
        }
        activity.recreate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void postponeEnterTransition(@NonNull Activity activity) {
        ActivityCompat$Api21Impl.postponeEnterTransition(activity);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void recreate(@NonNull Activity activity) {
        if (Build$VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else {
            new Handler(activity.getMainLooper()).post(new a(activity));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static DragAndDropPermissionsCompat requestDragAndDropPermissions(@NonNull Activity activity, @NonNull DragEvent dragEvent) {
        return DragAndDropPermissionsCompat.request(activity, dragEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r6v0, resolved type: android.app.Activity */
    /* JADX WARN: Multi-variable type inference failed */
    public static void requestPermissions(@NonNull Activity activity, @NonNull String[] strArr, @IntRange(from = ULong.MIN_VALUE) int i9) {
        ActivityCompat$PermissionCompatDelegate activityCompat$PermissionCompatDelegate = sDelegate;
        if (activityCompat$PermissionCompatDelegate == null || !activityCompat$PermissionCompatDelegate.requestPermissions(activity, strArr, i9)) {
            HashSet hashSet = new HashSet();
            for (int i10 = 0; i10 < strArr.length; i10++) {
                if (TextUtils.isEmpty(strArr[i10])) {
                    i.k(ai.onnxruntime.a.p(new StringBuilder("Permission request for permissions "), Arrays.toString(strArr), " must not contain null or empty values"));
                    return;
                }
                if (Build$VERSION.SDK_INT < 33 && TextUtils.equals(strArr[i10], "android.permission.POST_NOTIFICATIONS")) {
                    hashSet.add(Integer.valueOf(i10));
                }
            }
            int size = hashSet.size();
            String[] strArr2 = size > 0 ? new String[strArr.length - size] : strArr;
            if (size > 0) {
                if (size == strArr.length) {
                    return;
                }
                int i11 = 0;
                for (int i12 = 0; i12 < strArr.length; i12++) {
                    if (!hashSet.contains(Integer.valueOf(i12))) {
                        strArr2[i11] = strArr[i12];
                        i11++;
                    }
                }
            }
            if (activity instanceof ActivityCompat$RequestPermissionsRequestCodeValidator) {
                ((ActivityCompat$RequestPermissionsRequestCodeValidator) activity).validateRequestPermissionsRequestCode(i9);
            }
            ActivityCompat$Api23Impl.requestPermissions(activity, strArr, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static <T extends View> T requireViewById(@NonNull Activity activity, @IdRes int i9) {
        if (Build$VERSION.SDK_INT >= 28) {
            return (T) ActivityCompat$Api28Impl.requireViewById(activity, i9);
        }
        T t = (T) activity.findViewById(i9);
        if (t != null) {
            return t;
        }
        i.k("ID does not reference a View inside this Activity");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setEnterSharedElementCallback(@NonNull Activity activity, @Nullable SharedElementCallback sharedElementCallback) {
        ActivityCompat$Api21Impl.setEnterSharedElementCallback(activity, sharedElementCallback != null ? new ActivityCompat$SharedElementCallback21Impl(sharedElementCallback) : null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setExitSharedElementCallback(@NonNull Activity activity, @Nullable SharedElementCallback sharedElementCallback) {
        ActivityCompat$Api21Impl.setExitSharedElementCallback(activity, sharedElementCallback != null ? new ActivityCompat$SharedElementCallback21Impl(sharedElementCallback) : null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setLocusContext(@NonNull Activity activity, @Nullable LocusIdCompat locusIdCompat, @Nullable Bundle bundle) {
        if (Build$VERSION.SDK_INT >= 30) {
            ActivityCompat$Api30Impl.setLocusContext(activity, locusIdCompat, bundle);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setPermissionCompatDelegate(@Nullable ActivityCompat$PermissionCompatDelegate activityCompat$PermissionCompatDelegate) {
        sDelegate = activityCompat$PermissionCompatDelegate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean shouldShowRequestPermissionRationale(@NonNull Activity activity, @NonNull String str) {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 < 33 && TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return false;
        }
        if (i9 >= 32) {
            return ActivityCompat$Api32Impl.shouldShowRequestPermissionRationale(activity, str);
        }
        return i9 == 31 ? ActivityCompat$Api31Impl.shouldShowRequestPermissionRationale(activity, str) : ActivityCompat$Api23Impl.shouldShowRequestPermissionRationale(activity, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void startActivityForResult(@NonNull Activity activity, @NonNull Intent intent, int i9, @Nullable Bundle bundle) {
        activity.startActivityForResult(intent, i9, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void startIntentSenderForResult(@NonNull Activity activity, @NonNull IntentSender intentSender, int i9, @Nullable Intent intent, int i10, int i11, int i12, @Nullable Bundle bundle) {
        activity.startIntentSenderForResult(intentSender, i9, intent, i10, i11, i12, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void startPostponedEnterTransition(@NonNull Activity activity) {
        ActivityCompat$Api21Impl.startPostponedEnterTransition(activity);
    }
}
