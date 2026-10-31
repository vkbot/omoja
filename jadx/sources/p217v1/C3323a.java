package p217v1;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;

/* JADX INFO: renamed from: v1.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C3323a extends AndroidViewModel {

    /* JADX INFO: renamed from: a */
    public final MutableLiveData f9724a;

    /* JADX INFO: renamed from: b */
    public final MutableLiveData f9725b;

    public C3323a(@NonNull Application application) {
        super(application);
        this.f9724a = new MutableLiveData();
        this.f9725b = new MutableLiveData(Boolean.FALSE);
    }

    /* JADX INFO: renamed from: a */
    public final void m5239a(String str) {
        this.f9724a.postValue(str);
    }
}
