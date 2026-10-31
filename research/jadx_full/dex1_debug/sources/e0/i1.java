package e0;

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
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.example.navistart.MainActivity;
import com.example.navistart.ModernMainActivity;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i1 extends ArrayAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LayoutInflater f1863b;
    public final boolean c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i1(MainActivity mainActivity, ArrayList arrayList) {
        boolean z8;
        Context baseContext;
        super(mainActivity, 2131493135, arrayList);
        this.f1863b = LayoutInflater.from(mainActivity);
        Context context = mainActivity;
        while (true) {
            z8 = false;
            if (context != null) {
                if (!(context instanceof ModernMainActivity)) {
                    if (!(context instanceof ContextWrapper) || (baseContext = ((ContextWrapper) context).getBaseContext()) == context) {
                        break;
                    } else {
                        context = baseContext;
                    }
                } else {
                    z8 = true;
                    break;
                }
            } else {
                break;
            }
        }
        this.c = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int a(int i9, Context context) {
        return Math.round(i9 * context.getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final View b(int i9, View view, ViewGroup viewGroup, boolean z8) {
        g1 g1Var;
        if (view == null) {
            view = this.f1863b.inflate(2131493135, viewGroup, false);
            g1Var = new g1((ImageView) view.findViewById(2131297427), (TextView) view.findViewById(2131297428));
            view.setTag(g1Var);
        } else {
            g1Var = (g1) view.getTag();
        }
        j1 j1Var = (j1) getItem(i9);
        if (j1Var != null) {
            g1Var.f1841a.setImageDrawable(j1Var.c);
            g1Var.f1842b.setText(j1Var.f1870b);
        }
        if (this.c) {
            LinearLayout linearLayout = (LinearLayout) view;
            linearLayout.setMinimumHeight(a(z8 ? 64 : 48, getContext()));
            int iA = a(z8 ? 8 : 2, getContext());
            linearLayout.setPadding(a(z8 ? 12 : 4, getContext()), iA, a(48, getContext()), iA);
            if (z8) {
                view.setBackgroundResource(2131165572);
            } else {
                view.setBackgroundColor(0);
            }
            TextView textView = g1Var.f1842b;
            ImageView imageView = g1Var.f1841a;
            textView.setTextColor(ContextCompat.getColor(getContext(), 2131035009));
            g1Var.f1842b.setTextSize(17.0f);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(Color.rgb(105, 132, 146));
            gradientDrawable.setCornerRadius(a(11, getContext()));
            gradientDrawable.setStroke(a(1, getContext()), Color.rgb(157, 176, 193));
            imageView.setBackground(gradientDrawable);
            int iA2 = a(6, getContext());
            imageView.setPadding(iA2, iA2, iA2, iA2);
            int iA3 = a(z8 ? 48 : 40, getContext());
            imageView.setLayoutParams(new LinearLayout$LayoutParams(iA3, iA3));
        }
        return view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i9, View view, ViewGroup viewGroup) {
        return b(i9, view, viewGroup, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i9, View view, ViewGroup viewGroup) {
        return b(i9, view, viewGroup, false);
    }
}
