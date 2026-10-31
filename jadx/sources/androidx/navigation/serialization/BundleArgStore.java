package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.navigation.NavType;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0005¢\u0006\u0002\u0010\bJ\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\u0012\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000b\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m3159d2 = {"Landroidx/navigation/serialization/BundleArgStore;", "Landroidx/navigation/serialization/ArgStore;", "bundle", "Landroid/os/Bundle;", "typeMap", "", "", "Landroidx/navigation/NavType;", "(Landroid/os/Bundle;Ljava/util/Map;)V", "contains", "", "key", "get", "", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
final class BundleArgStore extends ArgStore {
    private final Bundle bundle;
    private final Map<String, NavType<?>> typeMap;

    /* JADX WARN: Multi-variable type inference failed */
    public BundleArgStore(Bundle bundle, Map<String, ? extends NavType<?>> map) {
        bundle.getClass();
        map.getClass();
        this.bundle = bundle;
        this.typeMap = map;
    }

    @Override // androidx.navigation.serialization.ArgStore
    public boolean contains(String key) {
        key.getClass();
        return this.bundle.containsKey(key);
    }

    @Override // androidx.navigation.serialization.ArgStore
    public Object get(String key) {
        key.getClass();
        NavType<?> navType = this.typeMap.get(key);
        if (navType != null) {
            return navType.get(this.bundle, key);
        }
        return null;
    }
}
