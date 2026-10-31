package p084h7;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.example.navistart.R;
import com.woha.appmanag.ManageAppsActivity;

/* JADX INFO: renamed from: h7.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1678f extends BaseAdapter {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ ManageAppsActivity f4301b;

    public C1678f(ManageAppsActivity manageAppsActivity) {
        this.f4301b = manageAppsActivity;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f4301b.f2848b.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i10) {
        return this.f4301b.f2848b.get(i10);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        ManageAppsActivity manageAppsActivity = this.f4301b;
        if (view == null) {
            view = manageAppsActivity.getLayoutInflater().inflate(R.layout.package_item, viewGroup, false);
        }
        ImageView imageView = (ImageView) view.findViewById(R.id.packageIcon);
        TextView textView = (TextView) view.findViewById(R.id.packageTitle);
        TextView textView2 = (TextView) view.findViewById(R.id.packageSubtitle);
        C1679g c1679g = (C1679g) manageAppsActivity.f2848b.get(i10);
        imageView.setImageDrawable(c1679g.f4304c);
        textView.setText(c1679g.f4302a);
        textView2.setText(c1679g.f4303b);
        return view;
    }
}
