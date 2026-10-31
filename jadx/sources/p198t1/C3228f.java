package p198t1;

import android.widget.SeekBar;
import android.widget.TextView;
import com.example.navistart.mainview.HeatManSetView;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: t1.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3228f implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f9450a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ TextView f9451b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ HeatManSetView f9452c;

    public /* synthetic */ C3228f(HeatManSetView heatManSetView, TextView textView, int i10) {
        this.f9450a = i10;
        this.f9452c = heatManSetView;
        this.f9451b = textView;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i10, boolean z9) {
        int i11 = this.f9450a;
        TextView textView = this.f9451b;
        HeatManSetView heatManSetView = this.f9452c;
        switch (i11) {
            case 0:
                heatManSetView.f1803f = i10;
                boolean zEquals = AbstractC1387m.m2421h(new byte[]{-76, 59, 40, 101, 5, -52, 20, 43, -108}, new byte[]{-32, 82, 69, 0, 119, -124, 113, 74}).equals(heatManSetView.f1811n);
                int i12 = heatManSetView.f1803f;
                if (zEquals) {
                    textView.setText(HeatManSetView.m1667b(i12));
                } else {
                    textView.setText(HeatManSetView.m1667b(i12));
                }
                Runnable runnable = heatManSetView.f1815r;
                if (runnable != null) {
                    runnable.run();
                }
                break;
            default:
                heatManSetView.f1807j = i10;
                boolean zEquals2 = AbstractC1387m.m2421h(new byte[]{-27, -91, -51, -35, -18, 84, -38, -45, -59}, new byte[]{-79, -52, -96, -72, -100, 28, -65, -78}).equals(heatManSetView.f1811n);
                int i13 = heatManSetView.f1807j;
                if (zEquals2) {
                    textView.setText(HeatManSetView.m1667b(i13));
                } else {
                    textView.setText(HeatManSetView.m1666a(i13));
                }
                Runnable runnable2 = heatManSetView.f1816s;
                if (runnable2 != null) {
                    runnable2.run();
                }
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i10 = this.f9450a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i10 = this.f9450a;
    }

    /* JADX INFO: renamed from: a */
    private final void m5163a(SeekBar seekBar) {
    }

    /* JADX INFO: renamed from: b */
    private final void m5164b(SeekBar seekBar) {
    }

    /* JADX INFO: renamed from: c */
    private final void m5165c(SeekBar seekBar) {
    }

    /* JADX INFO: renamed from: d */
    private final void m5166d(SeekBar seekBar) {
    }
}
