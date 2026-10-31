package h7;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.woha.appmanag.ManageAppsActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ManageAppsActivity f2493b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(ManageAppsActivity manageAppsActivity) {
        this.f2493b = manageAppsActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f2493b.f1607b.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public final Object getItem(int i9) {
        return this.f2493b.f1607b.get(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public final long getItemId(int i9) {
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public final View getView(int i9, View view, ViewGroup viewGroup) {
        ManageAppsActivity manageAppsActivity = this.f2493b;
        if (view == null) {
            view = manageAppsActivity.getLayoutInflater().inflate(2131493116, viewGroup, false);
        }
        ImageView imageView = (ImageView) view.findViewById(2131297183);
        TextView textView = (TextView) view.findViewById(2131297185);
        TextView textView2 = (TextView) view.findViewById(2131297184);
        g gVar = (g) manageAppsActivity.f1607b.get(i9);
        imageView.setImageDrawable(gVar.c);
        textView.setText(gVar.f2494a);
        textView2.setText(gVar.f2495b);
        return view;
    }
}
