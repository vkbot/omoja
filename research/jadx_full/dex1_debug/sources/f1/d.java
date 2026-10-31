package f1;

import android.widget.SeekBar;
import android.widget.SeekBar$OnSeekBarChangeListener;
import e0.m;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements SeekBar$OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f2161a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(e eVar) {
        this.f2161a = eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.SeekBar$OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i9, boolean z8) {
        this.f2161a.f2174k.setText(String.format(Locale.US, m.h(new byte[]{52, -100, -100, 108, -105, 97, -34}, new byte[]{17, -8, -68, 67, -73, 68, -70, 28}), Integer.valueOf(e.B() + i9), Integer.valueOf(e.A())));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.SeekBar$OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        e eVar = this.f2161a;
        if (eVar.f2177n) {
            return;
        }
        eVar.O(Integer.valueOf(e.B() + seekBar.getProgress()), m.h(new byte[]{62, 34, -49, -25, 45, 106, 78, -122, 46, 43, -46, -43, 42, ByteCompanionObject.MAX_VALUE, 69, -122, 46, 62, -61, -17, 40}, new byte[]{93, 78, -90, -118, 76, 30, 43, -39}));
    }

    @Override // android.widget.SeekBar$OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }
}
