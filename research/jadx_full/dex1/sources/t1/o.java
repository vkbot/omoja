package t1;

import android.widget.SeekBar;
import android.widget.SeekBar$OnSeekBarChangeListener;
import android.widget.TextView;
import com.example.navistart.mainview.YMovLay;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o implements SeekBar$OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f5379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f5380b;
    public final /* synthetic */ YMovLay c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o(YMovLay yMovLay, boolean z8, TextView textView) {
        this.c = yMovLay;
        this.f5379a = z8;
        this.f5380b = textView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.SeekBar$OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i9, boolean z8) {
        boolean z9 = this.f5379a;
        YMovLay yMovLay = this.c;
        this.f5380b.setText(String.valueOf(i9 + (z9 ? yMovLay.r : yMovLay.t)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.SeekBar$OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int progress = seekBar.getProgress();
        boolean z8 = this.f5379a;
        YMovLay yMovLay = this.c;
        int i9 = progress + (z8 ? yMovLay.r : yMovLay.t);
        if (z8) {
            yMovLay.f990i.setText(String.valueOf(i9));
        } else {
            yMovLay.f991j.setText(String.valueOf(i9));
        }
        p pVar = yMovLay.f1001v;
        if (pVar != null) {
            pVar.a(i9, z8);
        }
    }

    @Override // android.widget.SeekBar$OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }
}
