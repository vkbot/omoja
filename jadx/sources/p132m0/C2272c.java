package p132m0;

import android.content.Context;
import android.os.Handler;
import com.example.navistart.R;
import java.util.function.BiConsumer;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: m0.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2272c implements BiConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2302i f5947a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5948b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Context f5949c;

    public /* synthetic */ C2272c(C2302i c2302i, int i10, Context context) {
        this.f5947a = c2302i;
        this.f5948b = i10;
        this.f5949c = context;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        final Integer num = (Integer) obj;
        final Integer num2 = (Integer) obj2;
        final C2302i c2302i = this.f5947a;
        Handler handler = c2302i.f6133g;
        final int i10 = this.f5948b;
        final Context context = this.f5949c;
        handler.post(new Runnable() { // from class: m0.f
            @Override // java.lang.Runnable
            public final void run() {
                C2302i c2302i2 = c2302i;
                int i11 = i10;
                Context context2 = context;
                Integer num3 = num;
                Integer num4 = num2;
                if (i11 == c2302i2.f6136j && c2302i2.isAdded()) {
                    c2302i2.f6130d.setText(context2.getString(R.string.app_permission_grant_running) + " " + num3 + AbstractC1387m.m2421h(new byte[]{-117}, new byte[]{-92, -40, 5, 86, -80, -119, -89, 26}) + num4);
                }
            }
        });
    }
}
