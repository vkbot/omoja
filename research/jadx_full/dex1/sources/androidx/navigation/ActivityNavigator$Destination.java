package androidx.navigation;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import androidx.annotation.CallSuper;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b\u0017\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0015\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\b\u0010!\u001a\u00020\"H\u0016J\u0018\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(H\u0017J\u001c\u0010)\u001a\u0004\u0018\u00010\t2\u0006\u0010%\u001a\u00020&2\b\u0010*\u001a\u0004\u0018\u00010\tH\u0002J\u0010\u0010+\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0010\u0010,\u001a\u00020\u00002\b\u0010-\u001a\u0004\u0018\u00010\rJ\u0010\u0010.\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0010\u0010/\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\tJ\u0010\u00100\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017J\u0010\u00101\u001a\u00020\u00002\b\u00102\u001a\u0004\u0018\u00010\tJ\b\u00103\u001a\u00020\u001eH\u0017J\b\u00104\u001a\u00020\tH\u0016R$\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\t8F@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR$\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\b\u001a\u0004\u0018\u00010\r8F@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R$\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\b\u001a\u0004\u0018\u00010\u00118F@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\"\u0010\u0015\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\fR\"\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\u0010\b\u001a\u0004\u0018\u00010\u0017@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR$\u0010\u001b\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\t8F@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\f¨\u00065"}, d2 = {"Landroidx/navigation/ActivityNavigator$Destination;", "Landroidx/navigation/NavDestination;", "navigatorProvider", "Landroidx/navigation/NavigatorProvider;", "(Landroidx/navigation/NavigatorProvider;)V", "activityNavigator", "Landroidx/navigation/Navigator;", "(Landroidx/navigation/Navigator;)V", "<set-?>", "", "action", "getAction", "()Ljava/lang/String;", "Landroid/content/ComponentName;", "component", "getComponent", "()Landroid/content/ComponentName;", "Landroid/net/Uri;", "data", "getData", "()Landroid/net/Uri;", "dataPattern", "getDataPattern", "Landroid/content/Intent;", "intent", "getIntent", "()Landroid/content/Intent;", "targetPackage", "getTargetPackage", "equals", "", "other", "", "hashCode", "", "onInflate", "", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "parseApplicationId", "pattern", "setAction", "setComponentName", "name", "setData", "setDataPattern", "setIntent", "setTargetPackage", "packageName", "supportsActions", "toString", "navigation-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@NavDestination$ClassType(Activity.class)
@SourceDebugExtension({"SMAP\nActivityNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityNavigator.kt\nandroidx/navigation/ActivityNavigator$Destination\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n*L\n1#1,501:1\n232#2,3:502\n*S KotlinDebug\n*F\n+ 1 ActivityNavigator.kt\nandroidx/navigation/ActivityNavigator$Destination\n*L\n258#1:502,3\n*E\n"})
public class ActivityNavigator$Destination extends NavDestination {
    private String action;
    private ComponentName component;
    private Uri data;
    private String dataPattern;
    private Intent intent;
    private String targetPackage;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ActivityNavigator$Destination(NavigatorProvider navigatorProvider) {
        this((Navigator<? extends ActivityNavigator$Destination>) navigatorProvider.getNavigator(ActivityNavigator.class));
        navigatorProvider.getClass();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final String parseApplicationId(Context context, String pattern) {
        if (pattern == null) {
            return null;
        }
        String packageName = context.getPackageName();
        packageName.getClass();
        return StringsKt.G(pattern, NavInflater.APPLICATION_ID_PLACEHOLDER, packageName);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavDestination
    public boolean equals(Object other) {
        boolean zFilterEquals;
        if (this == other) {
            return true;
        }
        if (other != null && (other instanceof ActivityNavigator$Destination) && super.equals(other)) {
            Intent intent = this.intent;
            if (intent != null) {
                zFilterEquals = intent.filterEquals(((ActivityNavigator$Destination) other).intent);
            } else {
                zFilterEquals = ((ActivityNavigator$Destination) other).intent == null;
            }
            if (zFilterEquals && Intrinsics.areEqual(this.dataPattern, ((ActivityNavigator$Destination) other).dataPattern)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getAction() {
        Intent intent = this.intent;
        if (intent != null) {
            return intent.getAction();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ComponentName getComponent() {
        Intent intent = this.intent;
        if (intent != null) {
            return intent.getComponent();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Uri getData() {
        Intent intent = this.intent;
        if (intent != null) {
            return intent.getData();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getDataPattern() {
        return this.dataPattern;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Intent getIntent() {
        return this.intent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getTargetPackage() {
        Intent intent = this.intent;
        if (intent != null) {
            return intent.getPackage();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavDestination
    public int hashCode() {
        int iHashCode = super.hashCode() * 31;
        Intent intent = this.intent;
        int iFilterHashCode = (iHashCode + (intent != null ? intent.filterHashCode() : 0)) * 31;
        String str = this.dataPattern;
        return iFilterHashCode + (str != null ? str.hashCode() : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavDestination
    @CallSuper
    public void onInflate(Context context, AttributeSet attrs) {
        context.getClass();
        attrs.getClass();
        super.onInflate(context, attrs);
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attrs, R$styleable.ActivityNavigator);
        typedArrayObtainAttributes.getClass();
        setTargetPackage(parseApplicationId(context, typedArrayObtainAttributes.getString(R$styleable.ActivityNavigator_targetPackage)));
        String string = typedArrayObtainAttributes.getString(R$styleable.ActivityNavigator_android_name);
        if (string != null) {
            if (string.charAt(0) == '.') {
                string = context.getPackageName() + string;
            }
            setComponentName(new ComponentName(context, string));
        }
        setAction(typedArrayObtainAttributes.getString(R$styleable.ActivityNavigator_action));
        String applicationId = parseApplicationId(context, typedArrayObtainAttributes.getString(R$styleable.ActivityNavigator_data));
        if (applicationId != null) {
            setData(Uri.parse(applicationId));
        }
        setDataPattern(parseApplicationId(context, typedArrayObtainAttributes.getString(R$styleable.ActivityNavigator_dataPattern)));
        typedArrayObtainAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ActivityNavigator$Destination setAction(String action) {
        if (this.intent == null) {
            this.intent = new Intent();
        }
        Intent intent = this.intent;
        intent.getClass();
        intent.setAction(action);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ActivityNavigator$Destination setComponentName(ComponentName name) {
        if (this.intent == null) {
            this.intent = new Intent();
        }
        Intent intent = this.intent;
        intent.getClass();
        intent.setComponent(name);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ActivityNavigator$Destination setData(Uri data) {
        if (this.intent == null) {
            this.intent = new Intent();
        }
        Intent intent = this.intent;
        intent.getClass();
        intent.setData(data);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ActivityNavigator$Destination setDataPattern(String dataPattern) {
        this.dataPattern = dataPattern;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ActivityNavigator$Destination setIntent(Intent intent) {
        this.intent = intent;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ActivityNavigator$Destination setTargetPackage(String packageName) {
        if (this.intent == null) {
            this.intent = new Intent();
        }
        Intent intent = this.intent;
        intent.getClass();
        intent.setPackage(packageName);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavDestination
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public boolean supportsActions() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavDestination
    public String toString() {
        ComponentName component = getComponent();
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        if (component != null) {
            sb.append(" class=");
            sb.append(component.getClassName());
        } else {
            String action = getAction();
            if (action != null) {
                sb.append(" action=");
                sb.append(action);
            }
        }
        return sb.toString();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityNavigator$Destination(Navigator<? extends ActivityNavigator$Destination> navigator) {
        super(navigator);
        navigator.getClass();
    }
}
