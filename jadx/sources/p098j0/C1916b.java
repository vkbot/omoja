package p098j0;

import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.R;
import java.util.ArrayList;
import java.util.List;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: j0.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1916b extends ArrayAdapter {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5047b = 0;

    public C1916b(Context context, List list) {
        super(context, R.layout.spinner_text, list);
        setDropDownViewResource(R.layout.simple_spinner_dropdown);
    }

    /* JADX INFO: renamed from: a */
    public static int m2981a(int i10, Context context) {
        return Math.round(i10 * context.getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: b */
    public static int m2982b(int i10, Context context) {
        return Math.round(i10 * context.getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: c */
    public final LinearLayout m2983c(int i10, boolean z9) {
        boolean z10;
        Context baseContext;
        int iM2981a;
        int iM2981a2;
        int iM2981a3;
        boolean z11;
        Context baseContext2;
        int iM2982b;
        int iM2982b2;
        switch (this.f5047b) {
            case 0:
                Context context = getContext();
                TypedValue typedValue = new TypedValue();
                if (!context.getTheme().resolveAttribute(R.attr.jctModernUi, typedValue, true) || typedValue.data == 0) {
                    Context context2 = context;
                    while (true) {
                        if (context2 != null) {
                            if (context2 instanceof ModernMainActivity) {
                                z10 = true;
                            } else if ((context2 instanceof ContextWrapper) && (baseContext = ((ContextWrapper) context2).getBaseContext()) != context2) {
                                context2 = baseContext;
                            }
                        }
                        z10 = false;
                    }
                } else {
                    z10 = true;
                }
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(0);
                linearLayout.setGravity(16);
                if (z10) {
                    iM2981a = m2981a(z9 ? 10 : 4, context);
                } else {
                    iM2981a = 16;
                }
                if (z10) {
                    iM2981a2 = m2981a(z9 ? 8 : 2, context);
                } else {
                    iM2981a2 = 16;
                }
                linearLayout.setPadding(iM2981a, iM2981a2, iM2981a, iM2981a2);
                if (z10) {
                    linearLayout.setMinimumHeight(m2981a(z9 ? 64 : 48, context));
                    if (z9) {
                        linearLayout.setBackgroundResource(R.drawable.modern_action_row);
                    }
                }
                ImageView imageView = new ImageView(context);
                Drawable drawable = ((C1919e) getItem(i10)).f5067j;
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                }
                if (z10) {
                    FrameLayout frameLayout = new FrameLayout(context);
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setColor(Color.rgb(105, 132, 146));
                    gradientDrawable.setCornerRadius(m2981a(11, context));
                    gradientDrawable.setStroke(m2981a(1, context), Color.rgb(157, 176, 193));
                    frameLayout.setBackground(gradientDrawable);
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int iM2981a4 = m2981a(7, context);
                    imageView.setPadding(iM2981a4, iM2981a4, iM2981a4, iM2981a4);
                    frameLayout.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
                    int iM2981a5 = m2981a(z9 ? 48 : 40, context);
                    linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(iM2981a5, iM2981a5));
                } else {
                    imageView.setLayoutParams(new ViewGroup.LayoutParams(72, 72));
                    linearLayout.addView(imageView);
                }
                TextView textView = new TextView(context);
                textView.setText(((C1919e) getItem(i10)).f5066i);
                textView.setGravity(16);
                textView.setPadding(z10 ? m2981a(14, context) : 16, 0, 0, 0);
                textView.setTextColor(ContextCompat.getColor(context, z10 ? R.color.modern_text : android.R.color.black));
                textView.setTextSize(z10 ? 17.0f : 25.0f);
                if (z10) {
                    iM2981a3 = m2981a(z9 ? 48 : 40, context);
                } else {
                    iM2981a3 = -2;
                }
                linearLayout.addView(textView, new LinearLayout.LayoutParams(0, iM2981a3, 1.0f));
                return linearLayout;
            default:
                Context context3 = getContext();
                TypedValue typedValue2 = new TypedValue();
                if (!context3.getTheme().resolveAttribute(R.attr.jctModernUi, typedValue2, true) || typedValue2.data == 0) {
                    Context context4 = context3;
                    while (true) {
                        if (context4 != null) {
                            if (context4 instanceof ModernMainActivity) {
                                z11 = true;
                            } else if ((context4 instanceof ContextWrapper) && (baseContext2 = ((ContextWrapper) context4).getBaseContext()) != context4) {
                                context4 = baseContext2;
                            }
                        }
                        z11 = false;
                    }
                } else {
                    z11 = true;
                }
                LinearLayout linearLayout2 = new LinearLayout(context3);
                linearLayout2.setOrientation(0);
                linearLayout2.setGravity(16);
                if (z11) {
                    iM2982b = m2982b(z9 ? 10 : 4, context3);
                } else {
                    iM2982b = 16;
                }
                if (z11) {
                    iM2982b2 = m2982b(z9 ? 8 : 2, context3);
                } else {
                    iM2982b2 = 16;
                }
                linearLayout2.setPadding(iM2982b, iM2982b2, iM2982b, iM2982b2);
                if (z11) {
                    linearLayout2.setMinimumHeight(m2982b(z9 ? 64 : 48, context3));
                    if (z9) {
                        linearLayout2.setBackgroundResource(R.drawable.modern_action_row);
                    }
                }
                ImageView imageView2 = new ImageView(context3);
                Drawable drawable2 = ((C1919e) getItem(i10)).f5067j;
                if (drawable2 != null) {
                    imageView2.setImageDrawable(drawable2);
                }
                if (z11) {
                    FrameLayout frameLayout2 = new FrameLayout(context3);
                    GradientDrawable gradientDrawable2 = new GradientDrawable();
                    gradientDrawable2.setColor(Color.rgb(105, 132, 146));
                    gradientDrawable2.setCornerRadius(m2982b(11, context3));
                    gradientDrawable2.setStroke(m2982b(1, context3), Color.rgb(157, 176, 193));
                    frameLayout2.setBackground(gradientDrawable2);
                    imageView2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int iM2982b3 = m2982b(7, context3);
                    imageView2.setPadding(iM2982b3, iM2982b3, iM2982b3, iM2982b3);
                    frameLayout2.addView(imageView2, new FrameLayout.LayoutParams(-1, -1));
                    int iM2982b4 = m2982b(z9 ? 48 : 40, context3);
                    linearLayout2.addView(frameLayout2, new LinearLayout.LayoutParams(iM2982b4, iM2982b4));
                } else {
                    imageView2.setLayoutParams(new ViewGroup.LayoutParams(72, 72));
                    linearLayout2.addView(imageView2);
                }
                TextView textView2 = new TextView(context3);
                textView2.setText(((C1919e) getItem(i10)).f5066i);
                textView2.setTextSize(2, z11 ? 17.0f : 20.0f);
                textView2.setGravity(16);
                textView2.setPadding(z11 ? m2982b(14, context3) : 16, 0, 0, 0);
                if (z11) {
                    textView2.setTextColor(ContextCompat.getColor(context3, R.color.modern_text));
                    textView2.setMinHeight(m2982b(z9 ? 48 : 40, context3));
                    textView2.setMaxLines(z9 ? 3 : 2);
                    textView2.setEllipsize(TextUtils.TruncateAt.END);
                }
                linearLayout2.addView(textView2, new LinearLayout.LayoutParams(0, -2, 1.0f));
                if (z11 && !z9) {
                    TextView textView3 = new TextView(context3);
                    textView3.setText(AbstractC1387m.m2421h(new byte[]{48, -54, -46}, new byte[]{-46, 92, 108, -84, 56, -119, -45, -46}));
                    textView3.setTextSize(18.0f);
                    textView3.setTextColor(ContextCompat.getColor(context3, R.color.modern_primary));
                    textView3.setGravity(17);
                    linearLayout2.addView(textView3, new LinearLayout.LayoutParams(m2982b(28, context3), m2982b(40, context3)));
                }
                return linearLayout2;
        }
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        switch (this.f5047b) {
            case 0:
                break;
        }
        return m2983c(i10, true);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        switch (this.f5047b) {
            case 0:
                break;
        }
        return m2983c(i10, false);
    }

    public C1916b(Context context, ArrayList arrayList) {
        super(context, R.layout.spinner_text, arrayList);
        setDropDownViewResource(R.layout.simple_spinner_dropdown);
    }
}
