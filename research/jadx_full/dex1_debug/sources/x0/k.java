package x0;

import android.R$layout;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k extends ArrayAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5990b = 0;
    public final /* synthetic */ WidgetBuilderFragment c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(WidgetBuilderFragment widgetBuilderFragment, Context context, List list) {
        super(context, R$layout.simple_spinner_dropdown_item, list);
        this.c = widgetBuilderFragment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i9, View view, ViewGroup viewGroup) {
        switch (this.f5990b) {
            case 0:
                TextView textView = (TextView) super.getDropDownView(i9, view, viewGroup);
                WidgetBuilderFragment widgetBuilderFragment = this.c;
                textView.setTextColor(WidgetBuilderFragment.b0(widgetBuilderFragment, 2131035009));
                textView.setBackgroundColor(WidgetBuilderFragment.b0(widgetBuilderFragment, 2131035007));
                textView.setTextSize(15.0f);
                return textView;
            default:
                return super.getDropDownView(i9, view, viewGroup);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i9, View view, ViewGroup viewGroup) {
        switch (this.f5990b) {
            case 0:
                TextView textView = (TextView) super.getView(i9, view, viewGroup);
                textView.setTextSize(14.0f);
                textView.setTextColor(WidgetBuilderFragment.b0(this.c, 2131035009));
                return textView;
            default:
                TextView textView2 = (TextView) super.getView(i9, view, viewGroup);
                WidgetBuilderFragment widgetBuilderFragment = this.c;
                textView2.setTextColor(WidgetBuilderFragment.b0(widgetBuilderFragment, 2131035009));
                textView2.setBackgroundColor(WidgetBuilderFragment.b0(widgetBuilderFragment, 2131035008));
                textView2.setTextSize(16.0f);
                textView2.setPadding(WidgetBuilderFragment.c0(widgetBuilderFragment, 20), WidgetBuilderFragment.c0(widgetBuilderFragment, 14), WidgetBuilderFragment.c0(widgetBuilderFragment, 20), WidgetBuilderFragment.c0(widgetBuilderFragment, 14));
                return textView2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(WidgetBuilderFragment widgetBuilderFragment, Context context, String[] strArr) {
        super(context, R$layout.simple_list_item_1, strArr);
        this.c = widgetBuilderFragment;
    }
}
