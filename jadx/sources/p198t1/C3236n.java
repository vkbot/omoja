package p198t1;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.example.navistart.R;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: t1.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3236n extends LinearLayout {

    /* JADX INFO: renamed from: b */
    public final TextView f9501b;

    /* JADX INFO: renamed from: c */
    public final RunnableC3234l f9502c;

    public C3236n(Context context) {
        super(context);
        this.f9502c = new RunnableC3234l(1, this);
        View.inflate(context, R.layout.tempmashview, this);
        this.f9501b = (TextView) findViewById(R.id.textView39);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTemperatura(int i10) {
        this.f9501b.setText(i10 + AbstractC1387m.m2421h(new byte[]{-94, -84, -51}, new byte[]{96, 28, -114, 89, -99, -8, 119, 102}));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f9502c);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        RunnableC3234l runnableC3234l = this.f9502c;
        if (i10 == 0) {
            post(runnableC3234l);
        } else {
            removeCallbacks(runnableC3234l);
        }
    }
}
