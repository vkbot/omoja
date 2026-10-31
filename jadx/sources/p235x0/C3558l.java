package p235x0;

import android.widget.SeekBar;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: x0.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3558l implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ IntConsumer f10576a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10577b;

    public C3558l(IntConsumer intConsumer, int i10) {
        this.f10576a = intConsumer;
        this.f10577b = i10;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i10, boolean z9) {
        this.f10576a.accept(i10 + this.f10577b);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        seekBar.getParent().requestDisallowInterceptTouchEvent(true);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        seekBar.getParent().requestDisallowInterceptTouchEvent(false);
    }
}
