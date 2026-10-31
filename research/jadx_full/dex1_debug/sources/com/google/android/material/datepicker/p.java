package com.google.android.material.datepicker;

import android.R$attr;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnDismissListener;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class p<S> extends DialogFragment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashSet f1265b;
    public final LinkedHashSet c;
    public int d;
    public w e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public b f1266f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public n f1267g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1268h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f1269i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1270j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1271k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1272l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CharSequence f1273m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1274n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public CharSequence f1275o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1276p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f1277q;
    public int r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public CharSequence f1278s;
    public TextView t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public CheckableImageButton f1279u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public z3.k f1280v;
    public boolean w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public CharSequence f1281x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public CharSequence f1282y;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p() {
        new LinkedHashSet();
        new LinkedHashSet();
        this.f1265b = new LinkedHashSet();
        this.c = new LinkedHashSet();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int u(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(2131100513);
        Calendar calendarB = a0.b();
        calendarB.set(5, 1);
        Calendar calendarA = a0.a(calendarB);
        calendarA.get(2);
        calendarA.get(1);
        int maximum = calendarA.getMaximum(7);
        calendarA.getActualMaximum(5);
        calendarA.getTimeInMillis();
        int dimensionPixelSize = resources.getDimensionPixelSize(2131100519) * maximum;
        return ((maximum - 1) * resources.getDimensionPixelOffset(2131100533)) + dimensionPixelSize + (dimensionPixelOffset * 2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean v(int i9, Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(w3.b.c(context, n.class.getCanonicalName(), 2130903943).data, new int[]{i9});
        boolean z8 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface$OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.f1265b.iterator();
        while (it.hasNext()) {
            ((DialogInterface$OnCancelListener) it.next()).onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.d = bundle.getInt("OVERRIDE_THEME_RES_ID");
        if (bundle.getParcelable("DATE_SELECTOR_KEY") != null) {
            n0.b.a();
            return;
        }
        this.f1266f = (b) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") != null) {
            n0.b.a();
            return;
        }
        this.f1268h = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f1269i = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.f1271k = bundle.getInt("INPUT_MODE_KEY");
        this.f1272l = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f1273m = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.f1274n = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f1275o = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        this.f1276p = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f1277q = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        this.r = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f1278s = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        CharSequence text = this.f1269i;
        if (text == null) {
            text = requireContext().getResources().getText(this.f1268h);
        }
        this.f1281x = text;
        if (text != null) {
            CharSequence[] charSequenceArrSplit = TextUtils.split(String.valueOf(text), "\n");
            if (charSequenceArrSplit.length > 1) {
                text = charSequenceArrSplit[0];
            }
        } else {
            text = null;
        }
        this.f1282y = text;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Context contextRequireContext = requireContext();
        requireContext();
        int i9 = this.d;
        if (i9 == 0) {
            t();
            throw null;
        }
        Dialog dialog = new Dialog(contextRequireContext, i9);
        Context context = dialog.getContext();
        this.f1270j = v(R$attr.windowFullscreen, context);
        this.f1280v = new z3.k(context, null, 2130903943, 2132018361);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, a3.a.f20q, 2130903943, 2132018361);
        int color = typedArrayObtainStyledAttributes.getColor(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f1280v.m(context);
        this.f1280v.q(ColorStateList.valueOf(color));
        this.f1280v.p(dialog.getWindow().getDecorView().getElevation());
        return dialog;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.f1270j ? 2131493086 : 2131493085, viewGroup);
        Context context = viewInflate.getContext();
        if (this.f1270j) {
            viewInflate.findViewById(2131297097).setLayoutParams(new LinearLayout$LayoutParams(u(context), -2));
        } else {
            viewInflate.findViewById(2131297098).setLayoutParams(new LinearLayout$LayoutParams(u(context), -1));
        }
        ((TextView) viewInflate.findViewById(2131297109)).setAccessibilityLiveRegion(1);
        this.f1279u = (CheckableImageButton) viewInflate.findViewById(2131297111);
        this.t = (TextView) viewInflate.findViewById(2131297115);
        this.f1279u.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.f1279u;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R$attr.state_checked}, AppCompatResources.getDrawable(context, 2131165556));
        stateListDrawable.addState(new int[0], AppCompatResources.getDrawable(context, 2131165558));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.f1279u.setChecked(this.f1271k != 0);
        ViewCompat.setAccessibilityDelegate(this.f1279u, null);
        CheckableImageButton checkableImageButton2 = this.f1279u;
        this.f1279u.setContentDescription(this.f1271k == 1 ? checkableImageButton2.getContext().getString(2131952401) : checkableImageButton2.getContext().getString(2131952403));
        this.f1279u.setOnClickListener(new androidx.navigation.c(2, this));
        t();
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface$OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((DialogInterface$OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.d);
        bundle.putParcelable("DATE_SELECTOR_KEY", null);
        b bVar = this.f1266f;
        a aVar = new a();
        int i9 = a.f1232b;
        int i10 = a.f1232b;
        long j9 = bVar.f1235b.f1285g;
        long j10 = bVar.c.f1285g;
        aVar.f1233a = Long.valueOf(bVar.e.f1285g);
        int i11 = bVar.f1236f;
        d dVar = bVar.d;
        n nVar = this.f1267g;
        r rVar = nVar == null ? null : nVar.e;
        if (rVar != null) {
            aVar.f1233a = Long.valueOf(rVar.f1285g);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", dVar);
        r rVarR = r.r(j9);
        r rVarR2 = r.r(j10);
        d dVar2 = (d) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l9 = aVar.f1233a;
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new b(rVarR, rVarR2, dVar2, l9 == null ? null : r.r(l9.longValue()), i11));
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f1268h);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f1269i);
        bundle.putInt("INPUT_MODE_KEY", this.f1271k);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.f1272l);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.f1273m);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f1274n);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f1275o);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.f1276p);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.f1277q);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.r);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f1278s);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        w wVar;
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f1270j) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f1280v);
            if (!this.w) {
                View viewFindViewById = requireView().findViewById(2131296796);
                ColorStateList colorStateListD = o3.c.d(viewFindViewById.getBackground());
                Integer numValueOf = colorStateListD != null ? Integer.valueOf(colorStateListD.getDefaultColor()) : null;
                boolean z8 = false;
                boolean z9 = numValueOf == null || numValueOf.intValue() == 0;
                int iB = m3.a.b(window.getContext(), R$attr.colorBackground, ViewCompat.MEASURED_STATE_MASK);
                if (z9) {
                    numValueOf = Integer.valueOf(iB);
                }
                WindowCompat.setDecorFitsSystemWindows(window, false);
                window.getContext();
                int alphaComponent = Build$VERSION.SDK_INT < 27 ? ColorUtils.setAlphaComponent(m3.a.b(window.getContext(), R$attr.navigationBarColor, ViewCompat.MEASURED_STATE_MASK), 128) : 0;
                window.setStatusBarColor(0);
                window.setNavigationBarColor(alphaComponent);
                int iIntValue = numValueOf.intValue();
                WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightStatusBars(iIntValue != 0 && ColorUtils.calculateLuminance(iIntValue) > 0.5d);
                boolean z10 = iB != 0 && ColorUtils.calculateLuminance(iB) > 0.5d;
                if ((alphaComponent != 0 && ColorUtils.calculateLuminance(alphaComponent) > 0.5d) || (alphaComponent == 0 && z10)) {
                    z8 = true;
                }
                WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightNavigationBars(z8);
                ViewCompat.setOnApplyWindowInsetsListener(viewFindViewById, new o(viewFindViewById, viewFindViewById.getLayoutParams().height, viewFindViewById.getPaddingLeft(), viewFindViewById.getPaddingTop(), viewFindViewById.getPaddingRight()));
                this.w = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(2131100521);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f1280v, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new n3.a(requireDialog(), rect));
        }
        requireContext();
        int i9 = this.d;
        if (i9 == 0) {
            t();
            throw null;
        }
        t();
        b bVar = this.f1266f;
        n nVar = new n();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i9);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", bVar.e);
        nVar.setArguments(bundle);
        this.f1267g = nVar;
        if (this.f1271k == 1) {
            wVar = nVar;
            t();
            b bVar2 = this.f1266f;
            q qVar = new q();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("THEME_RES_ID_KEY", i9);
            bundle2.putParcelable("DATE_SELECTOR_KEY", null);
            bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar2);
            qVar.setArguments(bundle2);
            wVar = qVar;
        }
        wVar = nVar;
        this.e = wVar;
        this.t.setText((this.f1271k == 1 && getResources().getConfiguration().orientation == 2) ? this.f1282y : this.f1281x);
        t();
        getContext();
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStop() {
        this.e.f1294b.clear();
        super.onStop();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t() {
        if (getArguments().getParcelable("DATE_SELECTOR_KEY") == null) {
            return;
        }
        n0.b.a();
    }
}
