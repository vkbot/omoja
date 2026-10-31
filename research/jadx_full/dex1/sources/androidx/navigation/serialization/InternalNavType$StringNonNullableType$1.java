package androidx.navigation.serialization;

import android.net.Uri;
import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.navigation.NavType;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0019\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0002H\u0096\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J \u0010\f\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0016R\u0014\u0010\u0003\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u000f"}, d2 = {"androidx/navigation/serialization/InternalNavType$StringNonNullableType$1", "Landroidx/navigation/NavType;", "", "name", "getName", "()Ljava/lang/String;", "get", "bundle", "Landroid/os/Bundle;", "key", "parseValue", "value", "put", "", "serializeAsValue", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class InternalNavType$StringNonNullableType$1 extends NavType<String> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InternalNavType$StringNonNullableType$1() {
        super(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavType
    /* JADX INFO: renamed from: get, reason: avoid collision after fix types in other method */
    public String get2(Bundle bundle, String key) {
        bundle.getClass();
        key.getClass();
        String string = bundle.getString(key);
        return string == null ? "null" : string;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavType
    public String getName() {
        return "string_non_nullable";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // androidx.navigation.NavType
    public /* bridge */ /* synthetic */ String parseValue(String str) {
        return parseValue2(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: put, reason: avoid collision after fix types in other method */
    public void put2(Bundle bundle, String key, String value) {
        bundle.getClass();
        key.getClass();
        value.getClass();
        bundle.putString(key, value);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: serializeAsValue, reason: avoid collision after fix types in other method */
    public String serializeAsValue2(String value) {
        value.getClass();
        String strEncode = Uri.encode(value);
        strEncode.getClass();
        return strEncode;
    }

    @Override // androidx.navigation.NavType
    /* JADX INFO: renamed from: parseValue, reason: avoid collision after fix types in other method */
    public String parseValue2(String value) {
        value.getClass();
        return value;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.navigation.NavType
    public /* bridge */ /* synthetic */ String serializeAsValue(String str) {
        return serializeAsValue2(str);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [android.os.Bundle, java.lang.String, java.lang.Object] */
    @Override // androidx.navigation.NavType
    public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, String str2) {
        put2(bundle, str, str2);
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // androidx.navigation.NavType
    public /* bridge */ /* synthetic */ String get(Bundle bundle, String str) {
        return get2(bundle, str);
    }
}
