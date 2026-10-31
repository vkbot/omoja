package e0;

import android.os.CountDownTimer;
import com.example.navistart.punto;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r3 extends CountDownTimer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ punto f1943a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r3(punto puntoVar) {
        super(60000L, 1000L);
        this.f1943a = puntoVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.CountDownTimer
    public final void onFinish() {
        punto puntoVar = this.f1943a;
        puntoVar.f1012l.setText(puntoVar.getResources().getString(2131951835));
        puntoVar.f1012l.setEnabled(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.CountDownTimer
    public final void onTick(long j9) {
        this.f1943a.f1012l.setText((j9 / 1000) + m.h(new byte[]{67, 66, 44, 30, -118, -32, -71}, new byte[]{99, -109, -83, -50, 63, 48, 3, -40}));
    }
}
