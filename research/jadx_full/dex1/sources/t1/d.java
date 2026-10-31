package t1;

import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.bumptech.glide.m f5340b;
    public final /* synthetic */ int c;
    public final /* synthetic */ double d;
    public final /* synthetic */ double e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(com.bumptech.glide.m mVar, int i9, double d, double d9) {
        this.f5340b = mVar;
        this.c = i9;
        this.d = d;
        this.e = d9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        String string;
        String string2;
        com.bumptech.glide.m mVar = this.f5340b;
        e eVar = (e) mVar.c;
        int i9 = eVar.e;
        TextView textView = eVar.c;
        if (this.c == i9 && eVar.d && eVar.isShown()) {
            double d = this.d;
            if (Double.isNaN(d)) {
                string = eVar.getContext().getString(2131951999);
            } else {
                string = eVar.getContext().getString(this.e == 0.0d ? 2131951996 : 2131952000, Double.valueOf(d));
            }
            textView.setText(string);
            if (Double.isNaN(d)) {
                string2 = eVar.getContext().getString(2131951995);
            } else {
                string2 = eVar.getContext().getString(2131951998) + e0.m.h(new byte[]{-92, 43}, new byte[]{-98, 11, -68, 60, 118, -54, 97, 91}) + ((Object) textView.getText());
            }
            textView.setContentDescription(string2);
            eVar.f5343b.postDelayed(mVar, 10000L);
        }
    }
}
