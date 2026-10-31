package p058f1;

import android.widget.SeekBar;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: f1.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1531d implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C1532e f3756a;

    public C1531d(C1532e c1532e) {
        this.f3756a = c1532e;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i10, boolean z9) {
        this.f3756a.f3775k.setText(String.format(Locale.US, AbstractC1387m.m2421h(new byte[]{52, -100, -100, 108, -105, 97, -34}, new byte[]{17, -8, -68, 67, -73, 68, -70, 28}), Integer.valueOf(C1532e.m2602B() + i10), Integer.valueOf(C1532e.m2601A())));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        C1532e c1532e = this.f3756a;
        if (c1532e.f3778n) {
            return;
        }
        c1532e.m2618O(Integer.valueOf(C1532e.m2602B() + seekBar.getProgress()), AbstractC1387m.m2421h(new byte[]{62, 34, -49, -25, 45, 106, 78, -122, 46, 43, -46, -43, 42, ByteCompanionObject.MAX_VALUE, 69, -122, 46, 62, -61, -17, 40}, new byte[]{93, 78, -90, -118, 76, 30, 43, -39}));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }
}
