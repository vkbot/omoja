package t1;

import android.widget.SeekBar;
import android.widget.SeekBar$OnSeekBarChangeListener;
import android.widget.TextView;
import com.example.navistart.mainview.HeatManSetView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f implements SeekBar$OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f5346b;
    public final /* synthetic */ HeatManSetView c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(HeatManSetView heatManSetView, TextView textView, int i9) {
        this.f5345a = i9;
        this.c = heatManSetView;
        this.f5346b = textView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.SeekBar$OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i9, boolean z8) {
        int i10 = this.f5345a;
        TextView textView = this.f5346b;
        HeatManSetView heatManSetView = this.c;
        switch (i10) {
            case 0:
                heatManSetView.f953f = i9;
                boolean zEquals = e0.m.h(new byte[]{-76, 59, 40, 101, 5, -52, 20, 43, -108}, new byte[]{-32, 82, 69, 0, 119, -124, 113, 74}).equals(heatManSetView.f961n);
                int i11 = heatManSetView.f953f;
                if (zEquals) {
                    textView.setText(HeatManSetView.b(i11));
                } else {
                    textView.setText(HeatManSetView.b(i11));
                }
                Runnable runnable = heatManSetView.r;
                if (runnable != null) {
                    runnable.run();
                }
                break;
            default:
                heatManSetView.f957j = i9;
                boolean zEquals2 = e0.m.h(new byte[]{-27, -91, -51, -35, -18, 84, -38, -45, -59}, new byte[]{-79, -52, -96, -72, -100, 28, -65, -78}).equals(heatManSetView.f961n);
                int i12 = heatManSetView.f957j;
                if (zEquals2) {
                    textView.setText(HeatManSetView.b(i12));
                } else {
                    textView.setText(HeatManSetView.a(i12));
                }
                Runnable runnable2 = heatManSetView.f965s;
                if (runnable2 != null) {
                    runnable2.run();
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.SeekBar$OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i9 = this.f5345a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.SeekBar$OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i9 = this.f5345a;
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
