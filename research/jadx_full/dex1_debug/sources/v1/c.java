package v1;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class c extends AndroidViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableLiveData f5511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableLiveData f5512b;
    public final MutableLiveData c;
    public final MutableLiveData d;
    public final MutableLiveData e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableLiveData f5513f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final MutableLiveData f5514g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(@NonNull Application application) {
        super(application);
        this.f5511a = new MutableLiveData();
        this.f5512b = new MutableLiveData();
        this.c = new MutableLiveData();
        this.d = new MutableLiveData();
        this.e = new MutableLiveData();
        this.f5513f = new MutableLiveData();
        this.f5514g = new MutableLiveData();
    }
}
