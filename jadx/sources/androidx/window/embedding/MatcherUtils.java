package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.window.core.ExperimentalWindowApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@ExperimentalWindowApi
@Metadata(m3158d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0000¢\u0006\u0002\b\fJ\u001f\u0010\r\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0000¢\u0006\u0002\b\u000fJ\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m3159d2 = {"Landroidx/window/embedding/MatcherUtils;", "", "()V", "sDebugMatchers", "", "sMatchersTag", "", "areActivityOrIntentComponentsMatching", "activity", "Landroid/app/Activity;", "ruleComponent", "Landroid/content/ComponentName;", "areActivityOrIntentComponentsMatching$window_release", "areComponentsMatching", "activityComponent", "areComponentsMatching$window_release", "wildcardMatch", "name", "pattern", "window_release"}, m3160k = 1, m3161mv = {1, 6, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class MatcherUtils {
    public static final MatcherUtils INSTANCE = new MatcherUtils();
    public static final boolean sDebugMatchers = false;
    public static final String sMatchersTag = "SplitRuleResolution";

    private MatcherUtils() {
    }

    private final boolean wildcardMatch(String name, String pattern) {
        if (!StringsKt__StringsKt.contains$default(pattern, (CharSequence) "*", false, 2, (Object) null)) {
            return false;
        }
        if (Intrinsics.areEqual(pattern, "*")) {
            return true;
        }
        if (StringsKt__StringsKt.indexOf$default((CharSequence) pattern, "*", 0, false, 6, (Object) null) == StringsKt__StringsKt.lastIndexOf$default((CharSequence) pattern, "*", 0, false, 6, (Object) null) && StringsKt__StringsJVMKt.endsWith$default(pattern, "*", false, 2, null)) {
            return StringsKt__StringsJVMKt.startsWith$default(name, pattern.substring(0, pattern.length() - 1), false, 2, null);
        }
        C1929i.m3029k("Name pattern with a wildcard must only contain a single wildcard in the end");
        return false;
    }

    public final boolean areActivityOrIntentComponentsMatching$window_release(Activity activity, ComponentName ruleComponent) {
        ComponentName component;
        activity.getClass();
        ruleComponent.getClass();
        if (areComponentsMatching$window_release(activity.getComponentName(), ruleComponent)) {
            return true;
        }
        Intent intent = activity.getIntent();
        if (intent == null || (component = intent.getComponent()) == null) {
            return false;
        }
        return INSTANCE.areComponentsMatching$window_release(component, ruleComponent);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0050  */
    /* JADX WARN: Code duplicated, block: B:24:0x0076  */
    /* JADX WARN: Code duplicated, block: B:27:0x007b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x007c A[RETURN] */
    public final boolean areComponentsMatching$window_release(ComponentName activityComponent, ComponentName ruleComponent) {
        boolean z9;
        boolean z10;
        ruleComponent.getClass();
        if (activityComponent == null) {
            if (Intrinsics.areEqual(ruleComponent.getPackageName(), "*") && Intrinsics.areEqual(ruleComponent.getClassName(), "*")) {
                return true;
            }
            return false;
        }
        String string = activityComponent.toString();
        string.getClass();
        if (StringsKt__StringsKt.contains$default(string, (CharSequence) "*", false, 2, (Object) null)) {
            C1929i.m3029k("Wildcard can only be part of the rule.");
            return false;
        }
        if (Intrinsics.areEqual(activityComponent.getPackageName(), ruleComponent.getPackageName())) {
            z9 = true;
        } else {
            String packageName = activityComponent.getPackageName();
            packageName.getClass();
            String packageName2 = ruleComponent.getPackageName();
            packageName2.getClass();
            if (wildcardMatch(packageName, packageName2)) {
                z9 = true;
            } else {
                z9 = false;
            }
        }
        if (Intrinsics.areEqual(activityComponent.getClassName(), ruleComponent.getClassName())) {
            z10 = true;
        } else {
            String className = activityComponent.getClassName();
            className.getClass();
            String className2 = ruleComponent.getClassName();
            className2.getClass();
            if (wildcardMatch(className, className2)) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (z9 && z10) {
            return true;
        }
        return false;
    }
}
