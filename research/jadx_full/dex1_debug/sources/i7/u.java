package i7;

import android.widget.SeekBar;
import android.widget.SeekBar$OnSeekBarChangeListener;
import android.widget.TextView;
import com.example.navistart.BlackActivity;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.a0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u implements SeekBar$OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2716a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f2717b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u(a0 a0Var, TextView textView) {
        this.f2716a = 2;
        this.c = a0Var;
        this.f2717b = textView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.SeekBar$OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i9, boolean z8) {
        int i10 = this.f2716a;
        TextView textView = this.f2717b;
        switch (i10) {
            case 0:
                textView.setText(String.valueOf(i9));
                break;
            case 1:
                textView.setText(String.valueOf(1 + i9));
                break;
            default:
                a0 a0Var = (a0) this.c;
                BlackActivity blackActivity = a0Var.f3331b;
                if (blackActivity != null) {
                    blackActivity.d.setAlpha(i9 / 100.0f);
                }
                textView.setText(a0Var.getString(2131952902) + " " + i9 + e0.m.h(new byte[]{-87}, new byte[]{-116, 70, -5, -3, -36, 58, -5, -79}));
                h0.b.o().saveInt(e0.m.h(new byte[]{74, 39, -36, -58, -95, -92, -7, 95, 105, 33, -47, -43, -110, -75, -14, 113, ByteCompanionObject.MAX_VALUE, 35, -40, -41, -91, -85, -17, 109, 113}, new byte[]{5, 81, -71, -76, -51, -59, ByteCompanionObject.MIN_VALUE, 30}), i9);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.SeekBar$OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i9 = this.f2716a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.SeekBar$OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        switch (this.f2716a) {
            case 0:
                h0.b.o().saveInt((String) this.c, seekBar.getProgress());
                break;
            case 1:
                h0.b.o().saveInt((String) this.c, seekBar.getProgress() + 1);
                break;
        }
    }

    public /* synthetic */ u(TextView textView, String str, int i9) {
        this.f2716a = i9;
        this.f2717b = textView;
        this.c = str;
    }

    private final void a(SeekBar seekBar) {
    }

    private final void b(SeekBar seekBar) {
    }

    private final void c(SeekBar seekBar) {
    }

    private final void d(SeekBar seekBar) {
    }
}
