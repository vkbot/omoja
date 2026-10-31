package androidx.lifecycle;

import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.viewmodel.CreationExtras$Key;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.JvmField;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u0002H\u0004\"\b\b\u0000\u0010\u0004*\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0007H\u0016¢\u0006\u0002\u0010\b¨\u0006\n"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "()V", "create", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "Companion", "lifecycle-viewmodel_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public class ViewModelProvider$NewInstanceFactory implements ViewModelProvider$Factory {
    public static final ViewModelProvider$NewInstanceFactory$Companion Companion = new ViewModelProvider$NewInstanceFactory$Companion(null);

    @JvmField
    public static final CreationExtras$Key<String> VIEW_MODEL_KEY = ViewModelProvider$NewInstanceFactory$Companion$ViewModelKeyImpl.INSTANCE;
    private static ViewModelProvider$NewInstanceFactory sInstance;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ ViewModelProvider$NewInstanceFactory access$getSInstance$cp() {
        return sInstance;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ void access$setSInstance$cp(ViewModelProvider$NewInstanceFactory viewModelProvider$NewInstanceFactory) {
        sInstance = viewModelProvider$NewInstanceFactory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static final ViewModelProvider$NewInstanceFactory getInstance() {
        return Companion.getInstance();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public <T extends ViewModel> T create(Class<T> modelClass) throws InvocationTargetException {
        modelClass.getClass();
        try {
            T tNewInstance = modelClass.getDeclaredConstructor(null).newInstance(null);
            tNewInstance.getClass();
            return tNewInstance;
        } catch (IllegalAccessException e) {
            ai.onnxruntime.b.o(ai.onnxruntime.a.j(modelClass, "Cannot create an instance of "), e);
            return null;
        } catch (InstantiationException e6) {
            ai.onnxruntime.b.o(ai.onnxruntime.a.j(modelClass, "Cannot create an instance of "), e6);
            return null;
        } catch (NoSuchMethodException e9) {
            ai.onnxruntime.b.o(ai.onnxruntime.a.j(modelClass, "Cannot create an instance of "), e9);
            return null;
        }
    }
}
