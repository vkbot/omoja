package androidx.lifecycle;

import android.app.Application;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.CreationExtras$Key;
import j1.i;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0019\b\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ%\u0010\t\u001a\u0002H\n\"\b\b\u0000\u0010\n*\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\n0\rH\u0016¢\u0006\u0002\u0010\u000eJ-\u0010\t\u001a\u0002H\n\"\b\b\u0000\u0010\n*\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\n0\r2\u0006\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0002\u0010\u0010J-\u0010\t\u001a\u0002H\n\"\b\b\u0000\u0010\n*\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\n0\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¢\u0006\u0002\u0010\u0013R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;", "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;", "()V", "application", "Landroid/app/Application;", "(Landroid/app/Application;)V", "unused", "", "(Landroid/app/Application;I)V", "create", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "app", "(Ljava/lang/Class;Landroid/app/Application;)Landroidx/lifecycle/ViewModel;", "extras", "Landroidx/lifecycle/viewmodel/CreationExtras;", "(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;", "Companion", "lifecycle-viewmodel_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public class ViewModelProvider$AndroidViewModelFactory extends ViewModelProvider$NewInstanceFactory {
    public static final String DEFAULT_KEY = "androidx.lifecycle.ViewModelProvider.DefaultKey";
    private static ViewModelProvider$AndroidViewModelFactory sInstance;
    private final Application application;
    public static final ViewModelProvider$AndroidViewModelFactory$Companion Companion = new ViewModelProvider$AndroidViewModelFactory$Companion(null);

    @JvmField
    public static final CreationExtras$Key<Application> APPLICATION_KEY = ViewModelProvider$AndroidViewModelFactory$Companion$ApplicationKeyImpl.INSTANCE;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider$AndroidViewModelFactory(Application application) {
        this(application, 0);
        application.getClass();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ ViewModelProvider$AndroidViewModelFactory access$getSInstance$cp() {
        return sInstance;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ void access$setSInstance$cp(ViewModelProvider$AndroidViewModelFactory viewModelProvider$AndroidViewModelFactory) {
        sInstance = viewModelProvider$AndroidViewModelFactory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final <T extends ViewModel> T create(Class<T> modelClass, Application app) {
        if (!AndroidViewModel.class.isAssignableFrom(modelClass)) {
            return (T) super.create(modelClass);
        }
        try {
            T tNewInstance = modelClass.getConstructor(Application.class).newInstance(app);
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
        } catch (InvocationTargetException e10) {
            ai.onnxruntime.b.o(ai.onnxruntime.a.j(modelClass, "Cannot create an instance of "), e10);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public static final ViewModelProvider$AndroidViewModelFactory getInstance(Application application) {
        return Companion.getInstance(application);
    }

    public ViewModelProvider$AndroidViewModelFactory() {
        this(null, 0);
    }

    private ViewModelProvider$AndroidViewModelFactory(Application application, int i9) {
        this.application = application;
    }

    @Override // androidx.lifecycle.ViewModelProvider$NewInstanceFactory, androidx.lifecycle.ViewModelProvider$Factory
    public <T extends ViewModel> T create(Class<T> modelClass) {
        modelClass.getClass();
        Application application = this.application;
        if (application != null) {
            return (T) create(modelClass, application);
        }
        androidx.navigation.b.g("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
        return null;
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public <T extends ViewModel> T create(Class<T> modelClass, CreationExtras extras) {
        modelClass.getClass();
        extras.getClass();
        if (this.application != null) {
            return (T) create(modelClass);
        }
        Application application = (Application) extras.get(APPLICATION_KEY);
        if (application != null) {
            return (T) create(modelClass, application);
        }
        if (!AndroidViewModel.class.isAssignableFrom(modelClass)) {
            return (T) super.create(modelClass);
        }
        i.k("CreationExtras must have an application by `APPLICATION_KEY`");
        return null;
    }
}
