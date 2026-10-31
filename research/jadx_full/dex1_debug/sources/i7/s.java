package i7;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class s extends AndroidViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableLiveData f2712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableLiveData f2713b;
    public final MutableLiveData c;
    public final MutableLiveData d;
    public final MutableLiveData e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public s(@NonNull Application application) {
        super(application);
        this.f2712a = new MutableLiveData();
        this.f2713b = new MutableLiveData();
        this.c = new MutableLiveData(Boolean.FALSE);
        this.d = new MutableLiveData();
        this.e = new MutableLiveData();
    }
}
