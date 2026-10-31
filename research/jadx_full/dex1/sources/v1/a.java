package v1;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class a extends AndroidViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableLiveData f5507a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableLiveData f5508b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(@NonNull Application application) {
        super(application);
        this.f5507a = new MutableLiveData();
        this.f5508b = new MutableLiveData(Boolean.FALSE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(String str) {
        this.f5507a.postValue(str);
    }
}
