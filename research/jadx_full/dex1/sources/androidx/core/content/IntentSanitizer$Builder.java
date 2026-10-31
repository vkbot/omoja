package androidx.core.content;

import android.content.ClipData;
import android.content.ComponentName;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
import androidx.core.util.Predicate;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class IntentSanitizer$Builder {
    private static final int HISTORY_STACK_FLAGS = 2112614400;
    private static final int RECEIVER_FLAGS = 2015363072;
    private boolean mAllowAnyComponent;
    private boolean mAllowIdentifier;
    private boolean mAllowSelector;
    private boolean mAllowSomeComponents;
    private boolean mAllowSourceBounds;
    private int mAllowedFlags;
    private Predicate<String> mAllowedActions = new d(2);
    private Predicate<Uri> mAllowedData = new d(3);
    private Predicate<String> mAllowedTypes = new d(4);
    private Predicate<String> mAllowedCategories = new d(5);
    private Predicate<String> mAllowedPackages = new d(6);
    private Predicate<ComponentName> mAllowedComponents = new d(7);
    private Map<String, Predicate<Object>> mAllowedExtras = new HashMap();
    private boolean mAllowClipDataText = false;
    private Predicate<Uri> mAllowedClipDataUri = new d(8);
    private Predicate<ClipData> mAllowedClipData = new d(9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean a(ComponentName componentName) {
        return lambda$new$5(componentName);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean b(String str) {
        return lambda$new$2(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean c(String str, ComponentName componentName) {
        return lambda$allowComponentWithPackage$9(str, componentName);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean d(String str, Uri uri) {
        return lambda$allowClipDataUriWithAuthority$11(str, uri);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean e(Class cls, Predicate predicate, Object obj) {
        return lambda$allowExtra$13(cls, predicate, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean f(String str) {
        return lambda$new$4(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean g(String str, Uri uri) {
        return lambda$allowExtraOutput$16(str, uri);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean h(String str, Uri uri) {
        return lambda$allowExtraStreamUriWithAuthority$15(str, uri);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean i(Object obj) {
        return lambda$allowExtra$14(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean j(ComponentName componentName) {
        return lambda$allowAnyComponent$10(componentName);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean k(String str) {
        return lambda$new$3(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean l(Uri uri) {
        return lambda$new$1(uri);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$allowAnyComponent$10(ComponentName componentName) {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$allowClipDataUriWithAuthority$11(String str, Uri uri) {
        return str.equals(uri.getAuthority());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$allowComponentWithPackage$9(String str, ComponentName componentName) {
        return str.equals(componentName.getPackageName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$allowDataWithAuthority$8(String str, Uri uri) {
        return str.equals(uri.getAuthority());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$allowExtra$12(Object obj) {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$allowExtra$13(Class cls, Predicate predicate, Object obj) {
        return cls.isInstance(obj) && predicate.test(cls.cast(obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$allowExtra$14(Object obj) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$allowExtraOutput$16(String str, Uri uri) {
        return str.equals(uri.getAuthority());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$allowExtraStreamUriWithAuthority$15(String str, Uri uri) {
        return str.equals(uri.getAuthority());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$new$0(String str) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$new$1(Uri uri) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$new$2(String str) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$new$3(String str) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$new$4(String str) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$new$5(ComponentName componentName) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$new$6(Uri uri) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$new$7(ClipData clipData) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean m(Uri uri) {
        return lambda$new$6(uri);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean n(String str, Uri uri) {
        return lambda$allowDataWithAuthority$8(str, uri);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean o(Object obj) {
        return lambda$allowExtra$12(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean p(String str) {
        return lambda$new$0(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean q(ClipData clipData) {
        return lambda$new$7(clipData);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowAction(@NonNull String str) {
        Preconditions.checkNotNull(str);
        Objects.requireNonNull(str);
        allowAction(new b(str, 1));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowAnyComponent() {
        this.mAllowAnyComponent = true;
        this.mAllowedComponents = new d(0);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowCategory(@NonNull String str) {
        Preconditions.checkNotNull(str);
        Objects.requireNonNull(str);
        return allowCategory(new b(str, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowClipData(@NonNull Predicate<ClipData> predicate) {
        Preconditions.checkNotNull(predicate);
        this.mAllowedClipData = this.mAllowedClipData.or(predicate);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowClipDataText() {
        this.mAllowClipDataText = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowClipDataUri(@NonNull Predicate<Uri> predicate) {
        Preconditions.checkNotNull(predicate);
        this.mAllowedClipDataUri = this.mAllowedClipDataUri.or(predicate);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowClipDataUriWithAuthority(@NonNull String str) {
        Preconditions.checkNotNull(str);
        return allowClipDataUri(new b(str, 4));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowComponent(@NonNull ComponentName componentName) {
        Preconditions.checkNotNull(componentName);
        Objects.requireNonNull(componentName);
        return allowComponent(new c(0, componentName));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowComponentWithPackage(@NonNull String str) {
        Preconditions.checkNotNull(str);
        return allowComponent(new b(str, 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowData(@NonNull Predicate<Uri> predicate) {
        Preconditions.checkNotNull(predicate);
        this.mAllowedData = this.mAllowedData.or(predicate);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowDataWithAuthority(@NonNull String str) {
        Preconditions.checkNotNull(str);
        allowData(new b(str, 3));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowExtra(@NonNull String str, @NonNull Predicate<Object> predicate) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(predicate);
        Predicate<Object> dVar = this.mAllowedExtras.get(str);
        if (dVar == null) {
            dVar = new d(1);
        }
        this.mAllowedExtras.put(str, dVar.or(predicate));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowExtraOutput(@NonNull String str) {
        allowExtra("output", Uri.class, new b(str, 0));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowExtraStream(@NonNull Predicate<Uri> predicate) {
        allowExtra("android.intent.extra.STREAM", Uri.class, predicate);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowExtraStreamUriWithAuthority(@NonNull String str) {
        Preconditions.checkNotNull(str);
        allowExtra("android.intent.extra.STREAM", Uri.class, new b(str, 5));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowFlags(int i9) {
        this.mAllowedFlags = i9 | this.mAllowedFlags;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowHistoryStackFlags() {
        this.mAllowedFlags |= HISTORY_STACK_FLAGS;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowIdentifier() {
        this.mAllowIdentifier = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowPackage(@NonNull String str) {
        Preconditions.checkNotNull(str);
        Objects.requireNonNull(str);
        return allowPackage(new b(str, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowReceiverFlags() {
        this.mAllowedFlags |= RECEIVER_FLAGS;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowSelector() {
        this.mAllowSelector = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowSourceBounds() {
        this.mAllowSourceBounds = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer$Builder allowType(@NonNull String str) {
        Preconditions.checkNotNull(str);
        Objects.requireNonNull(str);
        return allowType(new b(str, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IntentSanitizer build() {
        boolean z8 = this.mAllowAnyComponent;
        if ((z8 && this.mAllowSomeComponents) || (!z8 && !this.mAllowSomeComponents)) {
            throw new SecurityException("You must call either allowAnyComponent or one or more of the allowComponent methods; but not both.");
        }
        IntentSanitizer intentSanitizer = new IntentSanitizer(null);
        IntentSanitizer.access$102(intentSanitizer, this.mAllowedFlags);
        IntentSanitizer.access$202(intentSanitizer, this.mAllowedActions);
        IntentSanitizer.access$302(intentSanitizer, this.mAllowedData);
        IntentSanitizer.access$402(intentSanitizer, this.mAllowedTypes);
        IntentSanitizer.access$502(intentSanitizer, this.mAllowedCategories);
        IntentSanitizer.access$602(intentSanitizer, this.mAllowedPackages);
        IntentSanitizer.access$702(intentSanitizer, this.mAllowAnyComponent);
        IntentSanitizer.access$802(intentSanitizer, this.mAllowedComponents);
        IntentSanitizer.access$902(intentSanitizer, this.mAllowedExtras);
        IntentSanitizer.access$1002(intentSanitizer, this.mAllowClipDataText);
        IntentSanitizer.access$1102(intentSanitizer, this.mAllowedClipDataUri);
        IntentSanitizer.access$1202(intentSanitizer, this.mAllowedClipData);
        IntentSanitizer.access$1302(intentSanitizer, this.mAllowIdentifier);
        IntentSanitizer.access$1402(intentSanitizer, this.mAllowSelector);
        IntentSanitizer.access$1502(intentSanitizer, this.mAllowSourceBounds);
        return intentSanitizer;
    }

    @NonNull
    public IntentSanitizer$Builder allowExtraOutput(@NonNull Predicate<Uri> predicate) {
        allowExtra("output", Uri.class, predicate);
        return this;
    }

    @NonNull
    public IntentSanitizer$Builder allowAction(@NonNull Predicate<String> predicate) {
        Preconditions.checkNotNull(predicate);
        this.mAllowedActions = this.mAllowedActions.or(predicate);
        return this;
    }

    @NonNull
    public IntentSanitizer$Builder allowCategory(@NonNull Predicate<String> predicate) {
        Preconditions.checkNotNull(predicate);
        this.mAllowedCategories = this.mAllowedCategories.or(predicate);
        return this;
    }

    @NonNull
    public IntentSanitizer$Builder allowComponent(@NonNull Predicate<ComponentName> predicate) {
        Preconditions.checkNotNull(predicate);
        this.mAllowSomeComponents = true;
        this.mAllowedComponents = this.mAllowedComponents.or(predicate);
        return this;
    }

    @NonNull
    public IntentSanitizer$Builder allowPackage(@NonNull Predicate<String> predicate) {
        Preconditions.checkNotNull(predicate);
        this.mAllowedPackages = this.mAllowedPackages.or(predicate);
        return this;
    }

    @NonNull
    public IntentSanitizer$Builder allowType(@NonNull Predicate<String> predicate) {
        Preconditions.checkNotNull(predicate);
        this.mAllowedTypes = this.mAllowedTypes.or(predicate);
        return this;
    }

    @NonNull
    public <T> IntentSanitizer$Builder allowExtra(@NonNull String str, @NonNull Class<T> cls, @NonNull Predicate<T> predicate) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(predicate);
        return allowExtra(str, new androidx.core.util.a(cls, predicate));
    }

    @NonNull
    public IntentSanitizer$Builder allowExtra(@NonNull String str, @NonNull Class<?> cls) {
        return allowExtra(str, cls, new d(10));
    }
}
