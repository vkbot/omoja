package p047e0;

import android.os.CountDownTimer;
import com.example.navistart.R;
import com.example.navistart.punto;

/* JADX INFO: renamed from: e0.r3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class CountDownTimerC1416r3 extends CountDownTimer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ punto f3398a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CountDownTimerC1416r3(punto puntoVar) {
        super(60000L, 1000L);
        this.f3398a = puntoVar;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        punto puntoVar = this.f3398a;
        puntoVar.f1883l.setText(puntoVar.getResources().getString(R.string.b_sing));
        puntoVar.f1883l.setEnabled(true);
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j10) {
        this.f3398a.f1883l.setText((j10 / 1000) + AbstractC1387m.m2421h(new byte[]{67, 66, 44, 30, -118, -32, -71}, new byte[]{99, -109, -83, -50, 63, 48, 3, -40}));
    }
}
