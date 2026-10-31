package j0;

import android.R$color;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils$TruncateAt;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView$ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.example.navistart.ModernMainActivity;
import e0.m;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends ArrayAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2867b = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(Context context, List list) {
        super(context, 2131493136, list);
        setDropDownViewResource(2131493129);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int a(int i9, Context context) {
        return Math.round(i9 * context.getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int b(int i9, Context context) {
        return Math.round(i9 * context.getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final LinearLayout c(int i9, boolean z8) {
        boolean z9;
        Context baseContext;
        int iA;
        int iA2;
        int iA3;
        boolean z10;
        Context baseContext2;
        int iB;
        int iB2;
        switch (this.f2867b) {
            case 0:
                Context context = getContext();
                TypedValue typedValue = new TypedValue();
                if (!context.getTheme().resolveAttribute(2130903786, typedValue, true) || typedValue.data == 0) {
                    Context context2 = context;
                    while (true) {
                        if (context2 != null) {
                            if (context2 instanceof ModernMainActivity) {
                                z9 = true;
                            } else if ((context2 instanceof ContextWrapper) && (baseContext = ((ContextWrapper) context2).getBaseContext()) != context2) {
                                context2 = baseContext;
                            }
                        }
                        z9 = false;
                    }
                } else {
                    z9 = true;
                }
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(0);
                linearLayout.setGravity(16);
                if (z9) {
                    iA = a(z8 ? 10 : 4, context);
                } else {
                    iA = 16;
                }
                if (z9) {
                    iA2 = a(z8 ? 8 : 2, context);
                } else {
                    iA2 = 16;
                }
                linearLayout.setPadding(iA, iA2, iA, iA2);
                if (z9) {
                    linearLayout.setMinimumHeight(a(z8 ? 64 : 48, context));
                    if (z8) {
                        linearLayout.setBackgroundResource(2131165572);
                    }
                }
                ImageView imageView = new ImageView(context);
                Drawable drawable = ((e) getItem(i9)).f2878j;
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                }
                if (z9) {
                    FrameLayout frameLayout = new FrameLayout(context);
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setColor(Color.rgb(105, 132, 146));
                    gradientDrawable.setCornerRadius(a(11, context));
                    gradientDrawable.setStroke(a(1, context), Color.rgb(157, 176, 193));
                    frameLayout.setBackground(gradientDrawable);
                    imageView.setScaleType(ImageView$ScaleType.CENTER_INSIDE);
                    int iA4 = a(7, context);
                    imageView.setPadding(iA4, iA4, iA4, iA4);
                    frameLayout.addView(imageView, new FrameLayout$LayoutParams(-1, -1));
                    int iA5 = a(z8 ? 48 : 40, context);
                    linearLayout.addView(frameLayout, new LinearLayout$LayoutParams(iA5, iA5));
                } else {
                    imageView.setLayoutParams(new ViewGroup$LayoutParams(72, 72));
                    linearLayout.addView(imageView);
                }
                TextView textView = new TextView(context);
                textView.setText(((e) getItem(i9)).f2877i);
                textView.setGravity(16);
                textView.setPadding(z9 ? a(14, context) : 16, 0, 0, 0);
                textView.setTextColor(ContextCompat.getColor(context, z9 ? 2131035009 : R$color.black));
                textView.setTextSize(z9 ? 17.0f : 25.0f);
                if (z9) {
                    iA3 = a(z8 ? 48 : 40, context);
                } else {
                    iA3 = -2;
                }
                linearLayout.addView(textView, new LinearLayout$LayoutParams(0, iA3, 1.0f));
                return linearLayout;
            default:
                Context context3 = getContext();
                TypedValue typedValue2 = new TypedValue();
                if (!context3.getTheme().resolveAttribute(2130903786, typedValue2, true) || typedValue2.data == 0) {
                    Context context4 = context3;
                    while (true) {
                        if (context4 != null) {
                            if (context4 instanceof ModernMainActivity) {
                                z10 = true;
                            } else if ((context4 instanceof ContextWrapper) && (baseContext2 = ((ContextWrapper) context4).getBaseContext()) != context4) {
                                context4 = baseContext2;
                            }
                        }
                        z10 = false;
                    }
                } else {
                    z10 = true;
                }
                LinearLayout linearLayout2 = new LinearLayout(context3);
                linearLayout2.setOrientation(0);
                linearLayout2.setGravity(16);
                if (z10) {
                    iB = b(z8 ? 10 : 4, context3);
                } else {
                    iB = 16;
                }
                if (z10) {
                    iB2 = b(z8 ? 8 : 2, context3);
                } else {
                    iB2 = 16;
                }
                linearLayout2.setPadding(iB, iB2, iB, iB2);
                if (z10) {
                    linearLayout2.setMinimumHeight(b(z8 ? 64 : 48, context3));
                    if (z8) {
                        linearLayout2.setBackgroundResource(2131165572);
                    }
                }
                ImageView imageView2 = new ImageView(context3);
                Drawable drawable2 = ((e) getItem(i9)).f2878j;
                if (drawable2 != null) {
                    imageView2.setImageDrawable(drawable2);
                }
                if (z10) {
                    FrameLayout frameLayout2 = new FrameLayout(context3);
                    GradientDrawable gradientDrawable2 = new GradientDrawable();
                    gradientDrawable2.setColor(Color.rgb(105, 132, 146));
                    gradientDrawable2.setCornerRadius(b(11, context3));
                    gradientDrawable2.setStroke(b(1, context3), Color.rgb(157, 176, 193));
                    frameLayout2.setBackground(gradientDrawable2);
                    imageView2.setScaleType(ImageView$ScaleType.CENTER_INSIDE);
                    int iB3 = b(7, context3);
                    imageView2.setPadding(iB3, iB3, iB3, iB3);
                    frameLayout2.addView(imageView2, new FrameLayout$LayoutParams(-1, -1));
                    int iB4 = b(z8 ? 48 : 40, context3);
                    linearLayout2.addView(frameLayout2, new LinearLayout$LayoutParams(iB4, iB4));
                } else {
                    imageView2.setLayoutParams(new ViewGroup$LayoutParams(72, 72));
                    linearLayout2.addView(imageView2);
                }
                TextView textView2 = new TextView(context3);
                textView2.setText(((e) getItem(i9)).f2877i);
                textView2.setTextSize(2, z10 ? 17.0f : 20.0f);
                textView2.setGravity(16);
                textView2.setPadding(z10 ? b(14, context3) : 16, 0, 0, 0);
                if (z10) {
                    textView2.setTextColor(ContextCompat.getColor(context3, 2131035009));
                    textView2.setMinHeight(b(z8 ? 48 : 40, context3));
                    textView2.setMaxLines(z8 ? 3 : 2);
                    textView2.setEllipsize(TextUtils$TruncateAt.END);
                }
                linearLayout2.addView(textView2, new LinearLayout$LayoutParams(0, -2, 1.0f));
                if (z10 && !z8) {
                    TextView textView3 = new TextView(context3);
                    textView3.setText(m.h(new byte[]{48, -54, -46}, new byte[]{-46, 92, 108, -84, 56, -119, -45, -46}));
                    textView3.setTextSize(18.0f);
                    textView3.setTextColor(ContextCompat.getColor(context3, 2131035003));
                    textView3.setGravity(17);
                    linearLayout2.addView(textView3, new LinearLayout$LayoutParams(b(28, context3), b(40, context3)));
                }
                return linearLayout2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i9, View view, ViewGroup viewGroup) {
        switch (this.f2867b) {
            case 0:
                break;
        }
        return c(i9, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i9, View view, ViewGroup viewGroup) {
        switch (this.f2867b) {
            case 0:
                break;
        }
        return c(i9, false);
    }

    public b(Context context, ArrayList arrayList) {
        super(context, 2131493136, arrayList);
        setDropDownViewResource(2131493129);
    }
}
