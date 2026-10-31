package androidx.core.content;

import android.content.ClipData;
import android.content.ClipData$Item;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.core.util.Consumer;
import androidx.core.util.Predicate;
import java.io.Serializable;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class IntentSanitizer {
    private static final String TAG = "IntentSanitizer";
    private boolean mAllowAnyComponent;
    private boolean mAllowClipDataText;
    private boolean mAllowIdentifier;
    private boolean mAllowSelector;
    private boolean mAllowSourceBounds;
    private Predicate<String> mAllowedActions;
    private Predicate<String> mAllowedCategories;
    private Predicate<ClipData> mAllowedClipData;
    private Predicate<Uri> mAllowedClipDataUri;
    private Predicate<ComponentName> mAllowedComponents;
    private Predicate<Uri> mAllowedData;
    private Map<String, Predicate<Object>> mAllowedExtras;
    private int mAllowedFlags;
    private Predicate<String> mAllowedPackages;
    private Predicate<String> mAllowedTypes;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ IntentSanitizer(IntentSanitizer$1 intentSanitizer$1) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(String str) {
        lambda$sanitizeByThrowing$1(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$1002(IntentSanitizer intentSanitizer, boolean z8) {
        intentSanitizer.mAllowClipDataText = z8;
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$102(IntentSanitizer intentSanitizer, int i9) {
        intentSanitizer.mAllowedFlags = i9;
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Predicate access$1102(IntentSanitizer intentSanitizer, Predicate predicate) {
        intentSanitizer.mAllowedClipDataUri = predicate;
        return predicate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Predicate access$1202(IntentSanitizer intentSanitizer, Predicate predicate) {
        intentSanitizer.mAllowedClipData = predicate;
        return predicate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$1302(IntentSanitizer intentSanitizer, boolean z8) {
        intentSanitizer.mAllowIdentifier = z8;
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$1402(IntentSanitizer intentSanitizer, boolean z8) {
        intentSanitizer.mAllowSelector = z8;
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$1502(IntentSanitizer intentSanitizer, boolean z8) {
        intentSanitizer.mAllowSourceBounds = z8;
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Predicate access$202(IntentSanitizer intentSanitizer, Predicate predicate) {
        intentSanitizer.mAllowedActions = predicate;
        return predicate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Predicate access$302(IntentSanitizer intentSanitizer, Predicate predicate) {
        intentSanitizer.mAllowedData = predicate;
        return predicate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Predicate access$402(IntentSanitizer intentSanitizer, Predicate predicate) {
        intentSanitizer.mAllowedTypes = predicate;
        return predicate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Predicate access$502(IntentSanitizer intentSanitizer, Predicate predicate) {
        intentSanitizer.mAllowedCategories = predicate;
        return predicate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Predicate access$602(IntentSanitizer intentSanitizer, Predicate predicate) {
        intentSanitizer.mAllowedPackages = predicate;
        return predicate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$702(IntentSanitizer intentSanitizer, boolean z8) {
        intentSanitizer.mAllowAnyComponent = z8;
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Predicate access$802(IntentSanitizer intentSanitizer, Predicate predicate) {
        intentSanitizer.mAllowedComponents = predicate;
        return predicate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Map access$902(IntentSanitizer intentSanitizer, Map map) {
        intentSanitizer.mAllowedExtras = map;
        return map;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(String str) {
        lambda$sanitizeByFiltering$0(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void checkOtherMembers(int i9, ClipData$Item clipData$Item, Consumer<String> consumer) {
        if (clipData$Item.getHtmlText() == null && clipData$Item.getIntent() == null) {
            return;
        }
        consumer.accept("ClipData item at position " + i9 + " contains htmlText, textLinks or intent: " + clipData$Item);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$sanitizeByThrowing$1(String str) {
        throw new SecurityException(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void putExtra(Intent intent, String str, Object obj) {
        if (obj == null) {
            intent.getExtras().putString(str, null);
            return;
        }
        if (obj instanceof Parcelable) {
            intent.putExtra(str, (Parcelable) obj);
            return;
        }
        if (obj instanceof Parcelable[]) {
            intent.putExtra(str, (Parcelable[]) obj);
        } else if (obj instanceof Serializable) {
            intent.putExtra(str, (Serializable) obj);
        } else {
            androidx.navigation.b.o(obj.getClass(), "Unsupported type ");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:38:0x009e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:40:0x00af  */
    public static void sanitizeClipData(@NonNull Intent intent, Intent intent2, Predicate<ClipData> predicate, boolean z8, Predicate<Uri> predicate2, Consumer<String> consumer) {
        CharSequence text;
        Uri uri;
        ClipData clipData = intent.getClipData();
        if (clipData == null) {
            return;
        }
        if (predicate != null && predicate.test(clipData)) {
            intent2.setClipData(clipData);
            return;
        }
        ClipData clipData2 = null;
        for (int i9 = 0; i9 < clipData.getItemCount(); i9++) {
            ClipData$Item itemAt = clipData.getItemAt(i9);
            if (Build$VERSION.SDK_INT >= 31) {
                IntentSanitizer$Api31Impl.checkOtherMembers(i9, itemAt, consumer);
            } else {
                checkOtherMembers(i9, itemAt, consumer);
            }
            if (z8) {
                text = itemAt.getText();
            } else {
                if (itemAt.getText() != null) {
                    StringBuilder sbQ = ai.onnxruntime.a.q(i9, "Item text cannot contain value. Item position: ", ". Text: ");
                    sbQ.append((Object) itemAt.getText());
                    consumer.accept(sbQ.toString());
                }
                text = null;
            }
            if (predicate2 != null) {
                if (itemAt.getUri() == null || predicate2.test(itemAt.getUri())) {
                    uri = itemAt.getUri();
                } else {
                    StringBuilder sbQ2 = ai.onnxruntime.a.q(i9, "Item URI is not allowed. Item position: ", ". URI: ");
                    sbQ2.append(itemAt.getUri());
                    consumer.accept(sbQ2.toString());
                }
                if (text == null || uri != null) {
                    if (clipData2 == null) {
                        clipData2 = new ClipData(clipData.getDescription(), new ClipData$Item(text, null, uri));
                    } else {
                        clipData2.addItem(new ClipData$Item(text, null, uri));
                    }
                }
            } else if (itemAt.getUri() != null) {
                StringBuilder sbQ3 = ai.onnxruntime.a.q(i9, "Item URI is not allowed. Item position: ", ". URI: ");
                sbQ3.append(itemAt.getUri());
                consumer.accept(sbQ3.toString());
            }
            uri = null;
            if (text == null) {
                if (clipData2 == null) {
                    clipData2 = new ClipData(clipData.getDescription(), new ClipData$Item(text, null, uri));
                } else {
                    clipData2.addItem(new ClipData$Item(text, null, uri));
                }
            } else if (clipData2 == null) {
                clipData2 = new ClipData(clipData.getDescription(), new ClipData$Item(text, null, uri));
            } else {
                clipData2.addItem(new ClipData$Item(text, null, uri));
            }
        }
        if (clipData2 != null) {
            intent2.setClipData(clipData2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Intent sanitize(@NonNull Intent intent, @NonNull Consumer<String> consumer) {
        Intent intent2 = new Intent();
        ComponentName component = intent.getComponent();
        if ((this.mAllowAnyComponent && component == null) || this.mAllowedComponents.test(component)) {
            intent2.setComponent(component);
        } else {
            consumer.accept("Component is not allowed: " + component);
            intent2.setComponent(new ComponentName("android", "java.lang.Void"));
        }
        String str = intent.getPackage();
        if (str == null || this.mAllowedPackages.test(str)) {
            intent2.setPackage(str);
        } else {
            consumer.accept("Package is not allowed: ".concat(str));
        }
        int flags = this.mAllowedFlags | intent.getFlags();
        int i9 = this.mAllowedFlags;
        if (flags == i9) {
            intent2.setFlags(intent.getFlags());
        } else {
            intent2.setFlags(intent.getFlags() & i9);
            consumer.accept("The intent contains flags that are not allowed: 0x" + Integer.toHexString(intent.getFlags() & (~this.mAllowedFlags)));
        }
        String action = intent.getAction();
        if (action == null || this.mAllowedActions.test(action)) {
            intent2.setAction(action);
        } else {
            consumer.accept("Action is not allowed: ".concat(action));
        }
        Uri data = intent.getData();
        if (data == null || this.mAllowedData.test(data)) {
            intent2.setData(data);
        } else {
            consumer.accept("Data is not allowed: " + data);
        }
        String type = intent.getType();
        if (type == null || this.mAllowedTypes.test(type)) {
            intent2.setDataAndType(intent2.getData(), type);
        } else {
            consumer.accept("Type is not allowed: ".concat(type));
        }
        Set<String> categories = intent.getCategories();
        if (categories != null) {
            for (String str2 : categories) {
                if (this.mAllowedCategories.test(str2)) {
                    intent2.addCategory(str2);
                } else {
                    consumer.accept("Category is not allowed: " + str2);
                }
            }
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            for (String str3 : extras.keySet()) {
                if (str3.equals("android.intent.extra.STREAM") && (this.mAllowedFlags & 1) == 0) {
                    consumer.accept("Allowing Extra Stream requires also allowing at least  FLAG_GRANT_READ_URI_PERMISSION Flag.");
                } else if (!str3.equals("output") || ((~this.mAllowedFlags) & 3) == 0) {
                    Object obj = extras.get(str3);
                    Predicate<Object> predicate = this.mAllowedExtras.get(str3);
                    if (predicate == null || !predicate.test(obj)) {
                        consumer.accept("Extra is not allowed. Key: " + str3 + ". Value: " + obj);
                    } else {
                        putExtra(intent2, str3, obj);
                    }
                } else {
                    consumer.accept("Allowing Extra Output requires also allowing FLAG_GRANT_READ_URI_PERMISSION and FLAG_GRANT_WRITE_URI_PERMISSION Flags.");
                }
            }
        }
        sanitizeClipData(intent, intent2, this.mAllowedClipData, this.mAllowClipDataText, this.mAllowedClipDataUri, consumer);
        if (Build$VERSION.SDK_INT >= 29) {
            if (this.mAllowIdentifier) {
                IntentSanitizer$Api29Impl.setIdentifier(intent2, IntentSanitizer$Api29Impl.getIdentifier(intent));
            } else if (IntentSanitizer$Api29Impl.getIdentifier(intent) != null) {
                consumer.accept("Identifier is not allowed: " + IntentSanitizer$Api29Impl.getIdentifier(intent));
            }
        }
        if (this.mAllowSelector) {
            intent2.setSelector(intent.getSelector());
        } else if (intent.getSelector() != null) {
            consumer.accept("Selector is not allowed: " + intent.getSelector());
        }
        if (this.mAllowSourceBounds) {
            intent2.setSourceBounds(intent.getSourceBounds());
            return intent2;
        }
        if (intent.getSourceBounds() != null) {
            consumer.accept("SourceBounds is not allowed: " + intent.getSourceBounds());
        }
        return intent2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Intent sanitizeByFiltering(@NonNull Intent intent) {
        return sanitize(intent, new a(1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Intent sanitizeByThrowing(@NonNull Intent intent) {
        return sanitize(intent, new a(0));
    }

    private IntentSanitizer() {
    }

    private static /* synthetic */ void lambda$sanitizeByFiltering$0(String str) {
    }
}
