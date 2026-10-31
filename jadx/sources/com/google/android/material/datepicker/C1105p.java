package com.google.android.material.datepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.fragment.app.DialogFragment;
import androidx.navigation.ViewOnClickListenerC0675c;
import com.example.navistart.R;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p004a3.AbstractC0007a;
import p134m3.AbstractC2381a;
import p142n0.C2467b;
import p144n3.ViewOnTouchListenerC2474a;
import p154o3.AbstractC2585c;
import p228w3.AbstractC3517b;
import p258z3.C3725k;

/* JADX INFO: renamed from: com.google.android.material.datepicker.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C1105p<S> extends DialogFragment {

    /* JADX INFO: renamed from: b */
    public final LinkedHashSet f2300b;

    /* JADX INFO: renamed from: c */
    public final LinkedHashSet f2301c;

    /* JADX INFO: renamed from: d */
    public int f2302d;

    /* JADX INFO: renamed from: e */
    public AbstractC1112w f2303e;

    /* JADX INFO: renamed from: f */
    public C1089b f2304f;

    /* JADX INFO: renamed from: g */
    public C1103n f2305g;

    /* JADX INFO: renamed from: h */
    public int f2306h;

    /* JADX INFO: renamed from: i */
    public CharSequence f2307i;

    /* JADX INFO: renamed from: j */
    public boolean f2308j;

    /* JADX INFO: renamed from: k */
    public int f2309k;

    /* JADX INFO: renamed from: l */
    public int f2310l;

    /* JADX INFO: renamed from: m */
    public CharSequence f2311m;

    /* JADX INFO: renamed from: n */
    public int f2312n;

    /* JADX INFO: renamed from: o */
    public CharSequence f2313o;

    /* JADX INFO: renamed from: p */
    public int f2314p;

    /* JADX INFO: renamed from: q */
    public CharSequence f2315q;

    /* JADX INFO: renamed from: r */
    public int f2316r;

    /* JADX INFO: renamed from: s */
    public CharSequence f2317s;

    /* JADX INFO: renamed from: t */
    public TextView f2318t;

    /* JADX INFO: renamed from: u */
    public CheckableImageButton f2319u;

    /* JADX INFO: renamed from: v */
    public C3725k f2320v;

    /* JADX INFO: renamed from: w */
    public boolean f2321w;

    /* JADX INFO: renamed from: x */
    public CharSequence f2322x;

    /* JADX INFO: renamed from: y */
    public CharSequence f2323y;

    public C1105p() {
        new LinkedHashSet();
        new LinkedHashSet();
        this.f2300b = new LinkedHashSet();
        this.f2301c = new LinkedHashSet();
    }

    /* JADX INFO: renamed from: u */
    public static int m1804u(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        Calendar calendarM1799b = AbstractC1088a0.m1799b();
        calendarM1799b.set(5, 1);
        Calendar calendarM1798a = AbstractC1088a0.m1798a(calendarM1799b);
        calendarM1798a.get(2);
        calendarM1798a.get(1);
        int maximum = calendarM1798a.getMaximum(7);
        calendarM1798a.getActualMaximum(5);
        calendarM1798a.getTimeInMillis();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width) * maximum;
        return ((maximum - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding)) + dimensionPixelSize + (dimensionPixelOffset * 2);
    }

    /* JADX INFO: renamed from: v */
    public static boolean m1805v(int i10, Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(AbstractC3517b.m5586c(context, C1103n.class.getCanonicalName(), R.attr.materialCalendarStyle).data, new int[]{i10});
        boolean z9 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z9;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.f2300b.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f2302d = bundle.getInt("OVERRIDE_THEME_RES_ID");
        if (bundle.getParcelable("DATE_SELECTOR_KEY") != null) {
            C2467b.m3822a();
            return;
        }
        this.f2304f = (C1089b) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") != null) {
            C2467b.m3822a();
            return;
        }
        this.f2306h = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f2307i = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.f2309k = bundle.getInt("INPUT_MODE_KEY");
        this.f2310l = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f2311m = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.f2312n = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f2313o = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        this.f2314p = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f2315q = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        this.f2316r = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f2317s = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        CharSequence text = this.f2307i;
        if (text == null) {
            text = requireContext().getResources().getText(this.f2306h);
        }
        this.f2322x = text;
        if (text != null) {
            CharSequence[] charSequenceArrSplit = TextUtils.split(String.valueOf(text), "\n");
            if (charSequenceArrSplit.length > 1) {
                text = charSequenceArrSplit[0];
            }
        } else {
            text = null;
        }
        this.f2323y = text;
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Context contextRequireContext = requireContext();
        requireContext();
        int i10 = this.f2302d;
        if (i10 == 0) {
            m1806t();
            throw null;
        }
        Dialog dialog = new Dialog(contextRequireContext, i10);
        Context context = dialog.getContext();
        this.f2308j = m1805v(android.R.attr.windowFullscreen, context);
        this.f2320v = new C3725k(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, AbstractC0007a.f38q, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        int color = typedArrayObtainStyledAttributes.getColor(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f2320v.m5944m(context);
        this.f2320v.m5948q(ColorStateList.valueOf(color));
        this.f2320v.m5947p(dialog.getWindow().getDecorView().getElevation());
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.f2308j ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        if (this.f2308j) {
            viewInflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(m1804u(context), -2));
        } else {
            viewInflate.findViewById(R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(m1804u(context), -1));
        }
        ((TextView) viewInflate.findViewById(R.id.mtrl_picker_header_selection_text)).setAccessibilityLiveRegion(1);
        this.f2319u = (CheckableImageButton) viewInflate.findViewById(R.id.mtrl_picker_header_toggle);
        this.f2318t = (TextView) viewInflate.findViewById(R.id.mtrl_picker_title_text);
        this.f2319u.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.f2319u;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, AppCompatResources.getDrawable(context, R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], AppCompatResources.getDrawable(context, R.drawable.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.f2319u.setChecked(this.f2309k != 0);
        ViewCompat.setAccessibilityDelegate(this.f2319u, null);
        CheckableImageButton checkableImageButton2 = this.f2319u;
        this.f2319u.setContentDescription(this.f2309k == 1 ? checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
        this.f2319u.setOnClickListener(new ViewOnClickListenerC0675c(2, this));
        m1806t();
        throw null;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f2301c.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f2302d);
        bundle.putParcelable("DATE_SELECTOR_KEY", null);
        C1089b c1089b = this.f2304f;
        C1087a c1087a = new C1087a();
        int i10 = C1087a.f2251b;
        int i11 = C1087a.f2251b;
        long j10 = c1089b.f2254b.f2331g;
        long j11 = c1089b.f2255c.f2331g;
        c1087a.f2252a = Long.valueOf(c1089b.f2257e.f2331g);
        int i12 = c1089b.f2258f;
        C1093d c1093d = c1089b.f2256d;
        C1103n c1103n = this.f2305g;
        C1107r c1107r = c1103n == null ? null : c1103n.f2284e;
        if (c1107r != null) {
            c1087a.f2252a = Long.valueOf(c1107r.f2331g);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", c1093d);
        C1107r c1107rM1808r = C1107r.m1808r(j10);
        C1107r c1107rM1808r2 = C1107r.m1808r(j11);
        C1093d c1093d2 = (C1093d) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l10 = c1087a.f2252a;
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new C1089b(c1107rM1808r, c1107rM1808r2, c1093d2, l10 == null ? null : C1107r.m1808r(l10.longValue()), i12));
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f2306h);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f2307i);
        bundle.putInt("INPUT_MODE_KEY", this.f2309k);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.f2310l);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.f2311m);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f2312n);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f2313o);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.f2314p);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.f2315q);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f2316r);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f2317s);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        AbstractC1112w abstractC1112w;
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f2308j) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f2320v);
            if (!this.f2321w) {
                View viewFindViewById = requireView().findViewById(R.id.fullscreen_header);
                ColorStateList colorStateListM4029d = AbstractC2585c.m4029d(viewFindViewById.getBackground());
                Integer numValueOf = colorStateListM4029d != null ? Integer.valueOf(colorStateListM4029d.getDefaultColor()) : null;
                boolean z9 = false;
                boolean z10 = numValueOf == null || numValueOf.intValue() == 0;
                int iM3747b = AbstractC2381a.m3747b(window.getContext(), android.R.attr.colorBackground, ViewCompat.MEASURED_STATE_MASK);
                if (z10) {
                    numValueOf = Integer.valueOf(iM3747b);
                }
                WindowCompat.setDecorFitsSystemWindows(window, false);
                window.getContext();
                int alphaComponent = Build.VERSION.SDK_INT < 27 ? ColorUtils.setAlphaComponent(AbstractC2381a.m3747b(window.getContext(), android.R.attr.navigationBarColor, ViewCompat.MEASURED_STATE_MASK), 128) : 0;
                window.setStatusBarColor(0);
                window.setNavigationBarColor(alphaComponent);
                int iIntValue = numValueOf.intValue();
                WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightStatusBars(iIntValue != 0 && ColorUtils.calculateLuminance(iIntValue) > 0.5d);
                boolean z11 = iM3747b != 0 && ColorUtils.calculateLuminance(iM3747b) > 0.5d;
                if ((alphaComponent != 0 && ColorUtils.calculateLuminance(alphaComponent) > 0.5d) || (alphaComponent == 0 && z11)) {
                    z9 = true;
                }
                WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightNavigationBars(z9);
                ViewCompat.setOnApplyWindowInsetsListener(viewFindViewById, new C1104o(viewFindViewById, viewFindViewById.getLayoutParams().height, viewFindViewById.getPaddingLeft(), viewFindViewById.getPaddingTop(), viewFindViewById.getPaddingRight()));
                this.f2321w = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f2320v, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new ViewOnTouchListenerC2474a(requireDialog(), rect));
        }
        requireContext();
        int i10 = this.f2302d;
        if (i10 == 0) {
            m1806t();
            throw null;
        }
        m1806t();
        C1089b c1089b = this.f2304f;
        C1103n c1103n = new C1103n();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i10);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", c1089b);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", c1089b.f2257e);
        c1103n.setArguments(bundle);
        this.f2305g = c1103n;
        if (this.f2309k == 1) {
            abstractC1112w = c1103n;
            m1806t();
            C1089b c1089b2 = this.f2304f;
            C1106q c1106q = new C1106q();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("THEME_RES_ID_KEY", i10);
            bundle2.putParcelable("DATE_SELECTOR_KEY", null);
            bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", c1089b2);
            c1106q.setArguments(bundle2);
            abstractC1112w = c1106q;
        }
        abstractC1112w = c1103n;
        this.f2303e = abstractC1112w;
        this.f2318t.setText((this.f2309k == 1 && getResources().getConfiguration().orientation == 2) ? this.f2323y : this.f2322x);
        m1806t();
        getContext();
        throw null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStop() {
        this.f2303e.f2345b.clear();
        super.onStop();
    }

    /* JADX INFO: renamed from: t */
    public final void m1806t() {
        if (getArguments().getParcelable("DATE_SELECTOR_KEY") == null) {
            return;
        }
        C2467b.m3822a();
    }
}
