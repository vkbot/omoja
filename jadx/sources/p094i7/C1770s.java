package p094i7;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;

/* JADX INFO: renamed from: i7.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C1770s extends AndroidViewModel {

    /* JADX INFO: renamed from: a */
    public final MutableLiveData f4638a;

    /* JADX INFO: renamed from: b */
    public final MutableLiveData f4639b;

    /* JADX INFO: renamed from: c */
    public final MutableLiveData f4640c;

    /* JADX INFO: renamed from: d */
    public final MutableLiveData f4641d;

    /* JADX INFO: renamed from: e */
    public final MutableLiveData f4642e;

    public C1770s(@NonNull Application application) {
        super(application);
        this.f4638a = new MutableLiveData();
        this.f4639b = new MutableLiveData();
        this.f4640c = new MutableLiveData(Boolean.FALSE);
        this.f4641d = new MutableLiveData();
        this.f4642e = new MutableLiveData();
    }
}
