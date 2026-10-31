package p132m0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.example.navistart.R;

/* JADX INFO: renamed from: m0.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2292g extends ArrayAdapter {

    /* JADX INFO: renamed from: b */
    public final LayoutInflater f6086b;

    /* JADX INFO: renamed from: c */
    public final PackageManager f6087c;

    public C2292g(C2302i c2302i, Context context) {
        super(context, R.layout.item_permission_grant_app, c2302i.f6132f);
        this.f6086b = LayoutInflater.from(context);
        this.f6087c = context.getPackageManager();
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        return getView(i10, view, viewGroup);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        PackageManager packageManager = this.f6087c;
        if (view == null) {
            view = this.f6086b.inflate(R.layout.item_permission_grant_app, viewGroup, false);
        }
        C2297h c2297h = (C2297h) getItem(i10);
        ImageView imageView = (ImageView) view.findViewById(R.id.permissionAppIcon);
        TextView textView = (TextView) view.findViewById(R.id.permissionAppName);
        TextView textView2 = (TextView) view.findViewById(R.id.permissionAppPackage);
        if (c2297h == null) {
            imageView.setImageDrawable(null);
            textView.setText("");
            textView2.setText("");
            return view;
        }
        String str = c2297h.f6102b;
        if (c2297h.f6103c == null) {
            try {
                c2297h.f6103c = packageManager.getApplicationIcon(str);
            } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
                c2297h.f6103c = packageManager.getDefaultActivityIcon();
            }
        }
        imageView.setImageDrawable(c2297h.f6103c);
        textView.setText(c2297h.f6101a);
        textView2.setText(str);
        return view;
    }
}
