package p235x0;

import android.R;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import java.util.List;

/* JADX INFO: renamed from: x0.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3557k extends ArrayAdapter {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10574b = 0;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ WidgetBuilderFragment f10575c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3557k(WidgetBuilderFragment widgetBuilderFragment, Context context, List list) {
        super(context, R.layout.simple_spinner_dropdown_item, list);
        this.f10575c = widgetBuilderFragment;
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        switch (this.f10574b) {
            case 0:
                TextView textView = (TextView) super.getDropDownView(i10, view, viewGroup);
                WidgetBuilderFragment widgetBuilderFragment = this.f10575c;
                textView.setTextColor(widgetBuilderFragment.color(com.example.navistart.R.color.modern_text));
                textView.setBackgroundColor(widgetBuilderFragment.color(com.example.navistart.R.color.modern_surface));
                textView.setTextSize(15.0f);
                return textView;
            default:
                return super.getDropDownView(i10, view, viewGroup);
        }
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        switch (this.f10574b) {
            case 0:
                TextView textView = (TextView) super.getView(i10, view, viewGroup);
                textView.setTextSize(14.0f);
                textView.setTextColor(this.f10575c.color(com.example.navistart.R.color.modern_text));
                return textView;
            default:
                TextView textView2 = (TextView) super.getView(i10, view, viewGroup);
                WidgetBuilderFragment widgetBuilderFragment = this.f10575c;
                textView2.setTextColor(widgetBuilderFragment.color(com.example.navistart.R.color.modern_text));
                textView2.setBackgroundColor(widgetBuilderFragment.color(com.example.navistart.R.color.modern_surface_high));
                textView2.setTextSize(16.0f);
                textView2.setPadding(widgetBuilderFragment.m1575dp(20), widgetBuilderFragment.m1575dp(14), widgetBuilderFragment.m1575dp(20), widgetBuilderFragment.m1575dp(14));
                return textView2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3557k(WidgetBuilderFragment widgetBuilderFragment, Context context, String[] strArr) {
        super(context, R.layout.simple_list_item_1, strArr);
        this.f10575c = widgetBuilderFragment;
    }
}
