package androidx.activity.result.contract;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build$VERSION;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.view.accessibility.b;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0001¢\u0006\u0002\b\u0014J\u0017\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0016\u001a\u00020\u0017H\u0000¢\u0006\u0002\b\u0018J\b\u0010\u0019\u001a\u00020\u001aH\u0007J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0015\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u0013H\u0001¢\u0006\u0002\b\u001cJ\r\u0010\u001d\u001a\u00020\u001aH\u0001¢\u0006\u0002\b\u001eR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002R\u0014\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0002R\u0014\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\b\n\u0000\u0012\u0004\b\t\u0010\u0002R\u0014\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\b\n\u0000\u0012\u0004\b\u000b\u0010\u0002R\u0014\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\b\n\u0000\u0012\u0004\b\r\u0010\u0002R\u000e\u0010\u000e\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;", "", "()V", "ACTION_SYSTEM_FALLBACK_PICK_IMAGES", "", "getACTION_SYSTEM_FALLBACK_PICK_IMAGES$annotations", "EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_ACCENT_COLOR", "getEXTRA_SYSTEM_FALLBACK_PICK_IMAGES_ACCENT_COLOR$annotations", "EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_IN_ORDER", "getEXTRA_SYSTEM_FALLBACK_PICK_IMAGES_IN_ORDER$annotations", "EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_LAUNCH_TAB", "getEXTRA_SYSTEM_FALLBACK_PICK_IMAGES_LAUNCH_TAB$annotations", "EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_MAX", "getEXTRA_SYSTEM_FALLBACK_PICK_IMAGES_MAX$annotations", "GMS_ACTION_PICK_IMAGES", "GMS_EXTRA_PICK_IMAGES_MAX", "getSystemFallbackPicker", "Landroid/content/pm/ResolveInfo;", "context", "Landroid/content/Context;", "getSystemFallbackPicker$activity_release", "getVisualMimeType", "input", "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;", "getVisualMimeType$activity_release", "isPhotoPickerAvailable", "", "isSystemFallbackPickerAvailable", "isSystemFallbackPickerAvailable$activity_release", "isSystemPickerAvailable", "isSystemPickerAvailable$activity_release", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ActivityResultContracts$PickVisualMedia$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ ActivityResultContracts$PickVisualMedia$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final ResolveInfo getSystemFallbackPicker$activity_release(Context context) {
        context.getClass();
        return context.getPackageManager().resolveActivity(new Intent(ActivityResultContracts$PickVisualMedia.ACTION_SYSTEM_FALLBACK_PICK_IMAGES), 1114112);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getVisualMimeType$activity_release(ActivityResultContracts$PickVisualMedia$VisualMediaType input) {
        input.getClass();
        if (input instanceof ActivityResultContracts$PickVisualMedia$ImageOnly) {
            return "image/*";
        }
        if (input instanceof ActivityResultContracts$PickVisualMedia$VideoOnly) {
            return "video/*";
        }
        if (input instanceof ActivityResultContracts$PickVisualMedia$SingleMimeType) {
            return ((ActivityResultContracts$PickVisualMedia$SingleMimeType) input).getMimeType();
        }
        if (input instanceof ActivityResultContracts$PickVisualMedia$ImageAndVideo) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final boolean isPhotoPickerAvailable(Context context) {
        context.getClass();
        return isSystemPickerAvailable$activity_release() || isSystemFallbackPickerAvailable$activity_release(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final boolean isSystemFallbackPickerAvailable$activity_release(Context context) {
        context.getClass();
        return getSystemFallbackPicker$activity_release(context) != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final boolean isSystemPickerAvailable$activity_release() {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 33) {
            return true;
        }
        return i9 >= 30 && b.a() >= 2;
    }

    private ActivityResultContracts$PickVisualMedia$Companion() {
    }

    public static /* synthetic */ void getACTION_SYSTEM_FALLBACK_PICK_IMAGES$annotations() {
    }

    public static /* synthetic */ void getEXTRA_SYSTEM_FALLBACK_PICK_IMAGES_ACCENT_COLOR$annotations() {
    }

    public static /* synthetic */ void getEXTRA_SYSTEM_FALLBACK_PICK_IMAGES_IN_ORDER$annotations() {
    }

    public static /* synthetic */ void getEXTRA_SYSTEM_FALLBACK_PICK_IMAGES_LAUNCH_TAB$annotations() {
    }

    public static /* synthetic */ void getEXTRA_SYSTEM_FALLBACK_PICK_IMAGES_MAX$annotations() {
    }

    @Deprecated(message = "This method is deprecated in favor of isPhotoPickerAvailable(context) to support the picker provided by updatable system apps", replaceWith = @ReplaceWith(expression = "isPhotoPickerAvailable(context)", imports = {}))
    @JvmStatic
    public final boolean isPhotoPickerAvailable() {
        return isSystemPickerAvailable$activity_release();
    }
}
