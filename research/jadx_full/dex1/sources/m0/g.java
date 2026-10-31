package m0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g extends ArrayAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LayoutInflater f3429b;
    public final PackageManager c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(i iVar, Context context) {
        super(context, 2131492987, iVar.f3458f);
        this.f3429b = LayoutInflater.from(context);
        this.c = context.getPackageManager();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i9, View view, ViewGroup viewGroup) {
        return getView(i9, view, viewGroup);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i9, View view, ViewGroup viewGroup) {
        PackageManager packageManager = this.c;
        if (view == null) {
            view = this.f3429b.inflate(2131492987, viewGroup, false);
        }
        h hVar = (h) getItem(i9);
        ImageView imageView = (ImageView) view.findViewById(2131297198);
        TextView textView = (TextView) view.findViewById(2131297199);
        TextView textView2 = (TextView) view.findViewById(2131297200);
        if (hVar == null) {
            imageView.setImageDrawable(null);
            textView.setText("");
            textView2.setText("");
            return view;
        }
        String str = hVar.f3440b;
        if (hVar.c == null) {
            try {
                hVar.c = packageManager.getApplicationIcon(str);
            } catch (PackageManager$NameNotFoundException | RuntimeException unused) {
                hVar.c = packageManager.getDefaultActivityIcon();
            }
        }
        imageView.setImageDrawable(hVar.c);
        textView.setText(hVar.f3439a);
        textView2.setText(str);
        return view;
    }
}
