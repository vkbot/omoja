package p217v1;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;

/* JADX INFO: renamed from: v1.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C3324b extends AndroidViewModel {

    /* JADX INFO: renamed from: a */
    public final MutableLiveData f9726a;

    /* JADX INFO: renamed from: b */
    public final MutableLiveData f9727b;

    public C3324b(@NonNull Application application) {
        super(application);
        this.f9726a = new MutableLiveData(Boolean.FALSE);
        this.f9727b = new MutableLiveData(null);
    }

    /* JADX INFO: renamed from: a */
    public final MutableLiveData m5240a() {
        return this.f9727b;
    }

    /* JADX INFO: renamed from: b */
    public final MutableLiveData m5241b() {
        return this.f9726a;
    }
}
