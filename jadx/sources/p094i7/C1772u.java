package p094i7;

import android.widget.SeekBar;
import android.widget.TextView;
import com.example.navistart.BlackActivity;
import com.example.navistart.R;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p132m0.C2263a0;

/* JADX INFO: renamed from: i7.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1772u implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f4648a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ TextView f4649b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f4650c;

    public C1772u(C2263a0 c2263a0, TextView textView) {
        this.f4648a = 2;
        this.f4650c = c2263a0;
        this.f4649b = textView;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i10, boolean z9) {
        int i11 = this.f4648a;
        TextView textView = this.f4649b;
        switch (i11) {
            case 0:
                textView.setText(String.valueOf(i10));
                break;
            case 1:
                textView.setText(String.valueOf(1 + i10));
                break;
            default:
                C2263a0 c2263a0 = (C2263a0) this.f4650c;
                BlackActivity blackActivity = c2263a0.f5925b;
                if (blackActivity != null) {
                    blackActivity.f1243d.setAlpha(i10 / 100.0f);
                }
                textView.setText(c2263a0.getString(R.string.zatemneie_clock) + " " + i10 + AbstractC1387m.m2421h(new byte[]{-87}, new byte[]{-116, 70, -5, -3, -36, 58, -5, -79}));
                C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{74, 39, -36, -58, -95, -92, -7, 95, 105, 33, -47, -43, -110, -75, -14, 113, ByteCompanionObject.MAX_VALUE, 35, -40, -41, -91, -85, -17, 109, 113}, new byte[]{5, 81, -71, -76, -51, -59, ByteCompanionObject.MIN_VALUE, 30}), i10);
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i10 = this.f4648a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        switch (this.f4648a) {
            case 0:
                C1652b.m2745o().saveInt((String) this.f4650c, seekBar.getProgress());
                break;
            case 1:
                C1652b.m2745o().saveInt((String) this.f4650c, seekBar.getProgress() + 1);
                break;
        }
    }

    public /* synthetic */ C1772u(TextView textView, String str, int i10) {
        this.f4648a = i10;
        this.f4649b = textView;
        this.f4650c = str;
    }

    /* JADX INFO: renamed from: a */
    private final void m2890a(SeekBar seekBar) {
    }

    /* JADX INFO: renamed from: b */
    private final void m2891b(SeekBar seekBar) {
    }

    /* JADX INFO: renamed from: c */
    private final void m2892c(SeekBar seekBar) {
    }

    /* JADX INFO: renamed from: d */
    private final void m2893d(SeekBar seekBar) {
    }
}
