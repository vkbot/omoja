package p047e0;

import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.example.navistart.MainActivity;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.R;
import java.util.ArrayList;

/* JADX INFO: renamed from: e0.i1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1369i1 extends ArrayAdapter {

    /* JADX INFO: renamed from: b */
    public final LayoutInflater f3269b;

    /* JADX INFO: renamed from: c */
    public final boolean f3270c;

    public C1369i1(MainActivity mainActivity, ArrayList arrayList) {
        boolean z9;
        Context baseContext;
        super(mainActivity, R.layout.spinner_app_item, arrayList);
        this.f3269b = LayoutInflater.from(mainActivity);
        Context context = mainActivity;
        while (true) {
            z9 = false;
            if (context != null) {
                if (!(context instanceof ModernMainActivity)) {
                    if (!(context instanceof ContextWrapper) || (baseContext = ((ContextWrapper) context).getBaseContext()) == context) {
                        break;
                    } else {
                        context = baseContext;
                    }
                } else {
                    z9 = true;
                    break;
                }
            } else {
                break;
            }
        }
        this.f3270c = z9;
    }

    /* JADX INFO: renamed from: a */
    public static int m2406a(int i10, Context context) {
        return Math.round(i10 * context.getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: b */
    public final View m2407b(int i10, View view, ViewGroup viewGroup, boolean z9) {
        C1359g1 c1359g1;
        if (view == null) {
            view = this.f3269b.inflate(R.layout.spinner_app_item, viewGroup, false);
            c1359g1 = new C1359g1((ImageView) view.findViewById(R.id.spinner_app_icon), (TextView) view.findViewById(R.id.spinner_app_name));
            view.setTag(c1359g1);
        } else {
            c1359g1 = (C1359g1) view.getTag();
        }
        C1374j1 c1374j1 = (C1374j1) getItem(i10);
        if (c1374j1 != null) {
            c1359g1.f3237a.setImageDrawable(c1374j1.f3281c);
            c1359g1.f3238b.setText(c1374j1.f3280b);
        }
        if (this.f3270c) {
            LinearLayout linearLayout = (LinearLayout) view;
            linearLayout.setMinimumHeight(m2406a(z9 ? 64 : 48, getContext()));
            int iM2406a = m2406a(z9 ? 8 : 2, getContext());
            linearLayout.setPadding(m2406a(z9 ? 12 : 4, getContext()), iM2406a, m2406a(48, getContext()), iM2406a);
            if (z9) {
                view.setBackgroundResource(R.drawable.modern_action_row);
            } else {
                view.setBackgroundColor(0);
            }
            TextView textView = c1359g1.f3238b;
            ImageView imageView = c1359g1.f3237a;
            textView.setTextColor(ContextCompat.getColor(getContext(), R.color.modern_text));
            c1359g1.f3238b.setTextSize(17.0f);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(Color.rgb(105, 132, 146));
            gradientDrawable.setCornerRadius(m2406a(11, getContext()));
            gradientDrawable.setStroke(m2406a(1, getContext()), Color.rgb(157, 176, 193));
            imageView.setBackground(gradientDrawable);
            int iM2406a2 = m2406a(6, getContext());
            imageView.setPadding(iM2406a2, iM2406a2, iM2406a2, iM2406a2);
            int iM2406a3 = m2406a(z9 ? 48 : 40, getContext());
            imageView.setLayoutParams(new LinearLayout.LayoutParams(iM2406a3, iM2406a3));
        }
        return view;
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        return m2407b(i10, view, viewGroup, true);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        return m2407b(i10, view, viewGroup, false);
    }
}
