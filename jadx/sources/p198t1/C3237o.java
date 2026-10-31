package p198t1;

import android.widget.SeekBar;
import android.widget.TextView;
import com.example.navistart.mainview.YMovLay;

/* JADX INFO: renamed from: t1.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3237o implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ boolean f9503a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ TextView f9504b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ YMovLay f9505c;

    public C3237o(YMovLay yMovLay, boolean z9, TextView textView) {
        this.f9505c = yMovLay;
        this.f9503a = z9;
        this.f9504b = textView;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i10, boolean z9) {
        boolean z10 = this.f9503a;
        YMovLay yMovLay = this.f9505c;
        this.f9504b.setText(String.valueOf(i10 + (z10 ? yMovLay.f1862r : yMovLay.f1864t)));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int progress = seekBar.getProgress();
        boolean z9 = this.f9503a;
        YMovLay yMovLay = this.f9505c;
        int i10 = progress + (z9 ? yMovLay.f1862r : yMovLay.f1864t);
        if (z9) {
            yMovLay.f1853i.setText(String.valueOf(i10));
        } else {
            yMovLay.f1854j.setText(String.valueOf(i10));
        }
        InterfaceC3238p interfaceC3238p = yMovLay.f1866v;
        if (interfaceC3238p != null) {
            interfaceC3238p.mo885a(i10, z9);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }
}
