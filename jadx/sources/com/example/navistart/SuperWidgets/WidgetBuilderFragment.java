package com.example.navistart.SuperWidgets;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0148R;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.example.navistart.AllWidgetServices;
import com.example.navistart.R;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import com.example.navistart.cores.ProLanProxy;
import com.google.android.material.materialswitch.MaterialSwitch;
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.IntConsumer;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.apache.commons.net.nntp.NNTPReply;
import org.apache.commons.p161io.filefilter.C2806b;
import org.json.JSONArray;
import org.json.JSONException;
import p022b7.DialogInterfaceOnClickListenerC0912h;
import p047e0.AbstractC1387m;
import p047e0.C1329a1;
import p047e0.C1341c3;
import p047e0.C1349e1;
import p047e0.DialogInterfaceOnClickListenerC1348e0;
import p047e0.RunnableC1337c;
import p078h0.C1652b;
import p094i7.C1762k;
import p098j0.AbstractC1920f;
import p098j0.C1916b;
import p098j0.C1917c;
import p098j0.C1919e;
import p132m0.RunnableC2351s2;
import p190s1.RunnableC3180x0;
import p235x0.AbstractC3562p;
import p235x0.C3549c;
import p235x0.C3557k;
import p235x0.C3558l;
import p235x0.C3559m;
import p235x0.C3561o;
import p235x0.EnumC3560n;
import p235x0.ViewOnClickListenerC3551e;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Keep
public final class WidgetBuilderFragment extends Fragment {
    private static final String[] TYPES = {AbstractC1387m.m2421h(new byte[]{88, -25, ByteCompanionObject.MIN_VALUE, 108, -93, 57, 70, -76, 88, -57, ByteCompanionObject.MIN_VALUE, 97, 83, 87, 34, -37, Base64.padSymbol, -83, -23, 0, -14, 86, 20, -37, 58, -83, -24, 0, -4}, new byte[]{-120, 125, 80, -47, 115, -121, -106, 11}), AbstractC1387m.m2421h(new byte[]{56, 100, 85, 88, -75, 113, ByteCompanionObject.MIN_VALUE, -16, 56, 65, 85, 86, -75, ByteCompanionObject.MAX_VALUE, -127, -62, 56, 75, 84, 111, -76, 68, ByteCompanionObject.MIN_VALUE, -2, 57, 119}, new byte[]{-24, -5, -123, -19, 100, -15, 80, 69}), AbstractC1387m.m2421h(new byte[]{-2, 118, -6, 83, -30, 25, 31, -13, -1, 104, -6, 87, -30, 21, -17, -126, -103, -56, -6, 80, -30, 25, 31, -12, -2, 80, -5, 96, -30, 18, 31, -5, -1, 100}, new byte[]{46, -24, 42, -30, 50, -89, -49, 64}), AbstractC1387m.m2421h(new byte[]{50, -96, -116, 112, 94, -40, -27, -47, 50, -118, -116, 126, 95, -22, -27, -43, 50, -118, -115, 74, -82, -89, -125, 115, 50, ByteCompanionObject.MIN_VALUE, -116, 123, 94, -47, -28, -21, 51, -80, -116, 112, 94, -34, -27, -33}, new byte[]{-30, 50, 92, -59, -114, 101, 52, 83}), AbstractC1387m.m2421h(new byte[]{11, 19, -120, 70, 109, 59, 119, 98, 10, 13, -120, 66, 109, 55, -121, 19, 108, -83, -120, 72, 109, 53, 118, 80, 10, 12, -120, 71, 109, 51, 119, 105, 10, 13}, new byte[]{-37, -115, 88, -9, -67, -123, -89, -47}), AbstractC1387m.m2421h(new byte[]{69, -49, 69, 89, -72, -49, -31, -51, 69, -27, 69, 87, -71, -3, -31, -55, 69, -27, 68, 99, 72, -80, -121, 111, 69, -30, 69, 92, -71, -13, -31, -50, 69, -19, 69, 90, -72, -54, -31, -49}, new byte[]{-107, 93, -107, -20, 104, 114, 48, 79})};
    private final List<C1919e> actions = new ArrayList();
    private Button alignmentButton;
    private LinearLayout body;
    private Button closedTab;
    private boolean collapsedPreview;
    private C3561o current;
    private List<C3561o> designs;
    private Button openTab;
    private C3549c previewBoard;
    private LinearLayout previewHost;

    private Spinner actionSpinner(String str) {
        Spinner spinnerThemedSpinner = themedSpinner();
        spinnerThemedSpinner.setAdapter((SpinnerAdapter) new C1916b(spinnerThemedSpinner.getContext(), this.actions));
        spinnerThemedSpinner.setBackgroundResource(R.drawable.modern_field);
        for (int i10 = 0; i10 < this.actions.size(); i10++) {
            if (AbstractC1920f.m3009g(this.actions.get(i10)).equals(str)) {
                spinnerThemedSpinner.setSelection(i10);
            }
        }
        return spinnerThemedSpinner;
    }

    private void addDisplayChoice(List<String> list, List<Integer> list2, Display[] displayArr, int i10, String str) {
        if (i10 < 0 || i10 >= displayArr.length) {
            return;
        }
        list.add(str);
        list2.add(Integer.valueOf(displayArr[i10].getDisplayId()));
    }

    private Button button(String str) {
        AppCompatButton appCompatButton = new AppCompatButton(requireContext());
        appCompatButton.setText(str);
        appCompatButton.setTextSize(13.0f);
        appCompatButton.setAllCaps(false);
        appCompatButton.setTextColor(color(R.color.modern_text));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(color(R.color.modern_primary_dark));
        gradientDrawable.setCornerRadius(m1575dp(14));
        gradientDrawable.setStroke(m1575dp(1), color(R.color.modern_primary));
        appCompatButton.setBackground(gradientDrawable);
        appCompatButton.setSupportBackgroundTintList(null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, m1575dp(46));
        layoutParams.setMargins(0, m1575dp(8), m1575dp(8), m1575dp(8));
        appCompatButton.setLayoutParams(layoutParams);
        appCompatButton.setPadding(m1575dp(14), 0, m1575dp(14), 0);
        return appCompatButton;
    }

    private LinearLayout card() {
        LinearLayout linearLayoutColumn = column();
        linearLayoutColumn.setPadding(m1575dp(16), m1575dp(14), m1575dp(16), m1575dp(14));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(color(R.color.modern_surface));
        gradientDrawable.setCornerRadius(m1575dp(20));
        gradientDrawable.setStroke(m1575dp(1), color(R.color.modern_divider));
        linearLayoutColumn.setBackground(gradientDrawable);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, m1575dp(14), 0, m1575dp(6));
        linearLayoutColumn.setLayoutParams(layoutParams);
        return linearLayoutColumn;
    }

    private MaterialSwitch check(String str, boolean z9) {
        MaterialSwitch materialSwitch = new MaterialSwitch(requireContext(), null);
        materialSwitch.setText(str);
        materialSwitch.setTextColor(color(R.color.modern_text));
        materialSwitch.setTextSize(14.0f);
        materialSwitch.setChecked(z9);
        return materialSwitch;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int color(int i10) {
        return ContextCompat.getColor(requireContext(), i10);
    }

    private LinearLayout column() {
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setOrientation(1);
        return linearLayout;
    }

    private AlertDialog.Builder dialogBuilder() {
        return new AlertDialog.Builder(popupContext(), R.style.ThemeOverlay_JCarTools_WidgetBuilderAlert);
    }

    private TextView dialogLabel(String str) {
        return label(str, 13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: dp */
    public int m1575dp(int i10) {
        return Math.round(i10 * getResources().getDisplayMetrics().density);
    }

    private void editElement(final C3559m c3559m, final boolean z9) {
        Spinner spinnerActionSpinner;
        Spinner spinnerActionSpinner2;
        EnumC3560n enumC3560n = c3559m.f10580c;
        EnumC3560n enumC3560n2 = EnumC3560n.f10588b;
        if ((enumC3560n == enumC3560n2 || enumC3560n == EnumC3560n.f10589c) && this.actions.isEmpty()) {
            Toast.makeText(requireContext(), AbstractC1387m.m2421h(new byte[]{-84, -98, -87, 65, 15, -74, -91, 19, -84, -127, -87, 68, -1, -34, -64, 66, -55, -17, -64, 47, 94, -33, -10, 66, -50, -17, -63, 46, 102, 46, -92, 37, -84, -113, -87, 77, 14, -114, -91, 17, -84, -119, -87, 78, 15, -69, -91, 16, -83, -66, -88, 113, -13, 46, -92, 45, -84, -127, -87, 76, 14, -116, -92, 44, -83, -65, -87, 70, 14, -116, -92, 39, 92, -18, -2, 46, 106, -33, -12, 66, -55, -17, -50, -34, 14, -113, -92, 39, -84, -123, -88, 125, 15, -77, -92, 38, -83, -68}, new byte[]{124, 63, 121, -2, -33, 14, 116, -110}), 0).show();
            return;
        }
        LinearLayout linearLayoutColumn = column();
        linearLayoutColumn.setPadding(m1575dp(20), m1575dp(12), m1575dp(20), m1575dp(12));
        linearLayoutColumn.setBackgroundColor(color(R.color.modern_surface));
        linearLayoutColumn.addView(label(c3559m.f10580c == enumC3560n2 ? AbstractC1387m.m2421h(new byte[]{98, -65, -4, -42, 12, 10, ByteCompanionObject.MAX_VALUE, -62, 98, -110, -4, -37, 12, 5, ByteCompanionObject.MAX_VALUE, -59, -110, -14, -98, 70, 13, 60, ByteCompanionObject.MAX_VALUE, -49, 98, -102, -3, -25, 12, 7, ByteCompanionObject.MAX_VALUE, -59, -110, -14, -111, -74, 108, 108, 46, -95, 48, -13, -84, -74, 98, 109, 26, -96, 8}, new byte[]{-78, 34, 44, 102, -36, -67, -81, 112}) : AbstractC1387m.m2421h(new byte[]{-35, -38, 99, 0, 29, 20, -32, 74, -35, -3, 98, 63, 28, 44, 16, 37, -80, -107, 3, -98, 28, 45, -32, 78, -35, -16, 99, 2, 29, 21, -32, 72, -36, -57, 99, 11}, new byte[]{13, 69, -77, -66, -51, -96, 48, -11}), 13));
        final EditText editTextInput = input(AbstractC1387m.m2421h(new byte[]{104, 20, 108, -109, 81, 16, -20, 63, 104, 49, 108, -97, 81, 26, -20, 63, -126, -87, 108, -66, 81, 31, -19, 13, 104, 49, 108, -112, 81, 31, -20, 57, 104, 49, 109, -84}, new byte[]{-72, -119, -68, 35, -127, -81, Base64.padSymbol, -65}), c3559m.f10579b, false);
        linearLayoutColumn.addView(editTextInput);
        if (c3559m.f10580c == enumC3560n2) {
            linearLayoutColumn.addView(label(AbstractC1387m.m2421h(new byte[]{-24, -1, 81, 91, 12, 85, 78, -36, -123, -78, 63, 59, -109, 85, 78, -36, -115, 66, 81, 85, -3, 7, 36, -78, -24, -45, 80, 107, -4, 53, 36, -70, -24, -46, 81, 94, -3, 7, 37, -115, -23, -19, -95, 58, -82, 85, 74, -36, -125, -77, 13, 59, -106, 85, 74, 44, -24, -40, 80, 107, -3, 6, 36, -77, -24, -33, 80, 96, -4, 60, -44, -36, -113, -78, 60, 59, -100, 84, 115, -36, -122, -78, 59, -53, -4, 55, 37, -121, -24, -45, 80, 107, -4, 53, 36, -79, -24, -33, 81, 85, -4, 54, 36, -78, 24, -78, 53, 59, -103, 85, 77, -35, -71, -77, 3, 59, -98, 85, 76, -35, -73, 78, -95, 59, -99, 85, 65, -36, -113, 66, 80, 105, -4, 48, 36, -74, -23, -29, 80, 105, -4, 53, -38}, new byte[]{56, 98, -127, -21, 44, -123, -12, 12}), 12));
        }
        final MaterialSwitch materialSwitchCheck = check(AbstractC1387m.m2421h(new byte[]{-10, 89, -25, 113, -67, 82, 44, 78, -10, 117, -26, 72, -67, 82, 45, 114, 6, 23, -124, 32, -44, 0, 72, 46, -98, 23, -118, 33, -25, 0, 64, -34, -10, 120, -25, 112, -68, 104, -36, 47, -89, 23, -124, 32, -46, 1, 124, 46, -106, 22, -79, 32, -44, 0, 78, 46, -106, 23, -117, 32, -44, 0, 68}, new byte[]{38, -57, 54, -16, 108, -48, -4, -2}), c3559m.f10583f);
        linearLayoutColumn.addView(materialSwitchCheck);
        linearLayoutColumn.addView(label(AbstractC1387m.m2421h(new byte[]{85, 37, 98, -85, 96, 110, -124, -10, 85, 59, 98, -96, 97, 81, -124, -1, 85, 48, 98, -90, 97, 87, -124, -4, -91, 85, 14, -53, 4, 63, -23, -104, 10, 85, 7, -54, 51, 62, -43, -104, 10, -91, 98, -92, 97, 90, -123, -55, 85, 48, 99, -103, 97, 95, -123, -56, 85, 63, 98, -93, 97, 93, -124, -7, 85, 56, 98, -93, 97, 90, -124, -11, -91, 85, 0, 59, 97, 83, -124, -7, 85, 63, 98, -82, 96, 109, -124, -4, -85, -91, 98, -113, 97, 84, -123, -58, -91, 84, 51, -53, 3, 62, -59, -104, 5, 85, 15, -54, 50, 62, -42, -103, 59, 85, 1, -53, 15, -49, -124, -5, 85, Base64.padSymbol, 98, -81, 97, 95, 116, -103, 59, 85, 15, -53, 15, -49, -124, -12, 85, 53, 99, -102, 96, 109, -123, -55, 85, 53, 98, -93, 97, 93, -124, -7, 85, 48, 99, -103, 96, 110, -123, -58, -91, 85, 12, -54, 51, 63, -32, -103, 48, 85, 9, -54, Base64.padSymbol, 63, -23, -103, 59, -85}, new byte[]{-123, -123, -78, 27, -79, -17, 84, 73}), 12));
        EnumC3560n enumC3560n3 = c3559m.f10580c;
        if (enumC3560n3 == enumC3560n2 || enumC3560n3 == EnumC3560n.f10589c) {
            EnumC3560n enumC3560n4 = EnumC3560n.f10589c;
            linearLayoutColumn.addView(dialogLabel(enumC3560n3 == enumC3560n4 ? AbstractC1387m.m2421h(new byte[]{-7, 40, -95, 104, 6, -31, 50, -95, -8, 62, -95, 111, 6, -32, 51, -107, 9, 108, -50, 12, 86, -120, 91, 0, -7, 14, -95, 103, 6, -29, 50, -82, -8, 59, -95, 104, 6, -27, 51, -104, -7, 4}, new byte[]{41, -68, 113, -35, -42, 88, -29, 32}) : AbstractC1387m.m2421h(new byte[]{-75, 123, -11, 16, 51, -26, 34, 90, -76, 109, -11, 23, 51, -25, 35, 110}, new byte[]{101, -17, 37, -91, -29, 95, -13, -37})));
            spinnerActionSpinner = actionSpinner(c3559m.f10581d);
            linearLayoutColumn.addView(spinnerActionSpinner);
            spinnerActionSpinner.setContentDescription(c3559m.f10580c == enumC3560n4 ? AbstractC1387m.m2421h(new byte[]{-102, -49, -122, -33, -101, 73, -5, 115, -101, -39, -122, -40, -101, 72, -6, 71, 106, -117, -23, -69, -53, 32, -110, -46, -102, -23, -122, -48, -101, 75, -5, 124, -101, -36, -122, -33, -101, 77, -6, 74, -102, -29}, new byte[]{74, 91, 86, 106, 75, -16, 42, -14}) : AbstractC1387m.m2421h(new byte[]{102, -82, -47, 114, 10, 0, -102, 114, 103, -72, -47, 117, 10, 1, -101, 70}, new byte[]{-74, 58, 1, -57, -38, -71, 75, -13}));
            if (c3559m.f10580c == enumC3560n4) {
                linearLayoutColumn.addView(dialogLabel(AbstractC1387m.m2421h(new byte[]{64, 9, -89, -127, 103, -56, 124, -90, 65, 31, -89, -122, 103, -55, 125, -110, -80, 77, -56, -27, 55, -95, 21, 7, 64, 47, -90, -65, 103, -53, 125, -100, 65, 19, -90, -77, 103, -60, 125, -102, 64, 37, -89, -116}, new byte[]{-112, -99, 119, 52, -73, 113, -83, 39})));
                spinnerActionSpinner2 = actionSpinner(c3559m.f10582e);
                linearLayoutColumn.addView(spinnerActionSpinner2);
            } else {
                spinnerActionSpinner2 = null;
            }
            if (spinnerActionSpinner2 != null) {
                spinnerActionSpinner2.setContentDescription(AbstractC1387m.m2421h(new byte[]{63, 67, -115, -56, 96, 54, 56, -79, 62, 85, -115, -49, 96, 55, 57, -123, -49, 7, -30, -84, 48, 95, 81, 16, 63, 101, -116, -10, 96, 53, 57, -117, 62, 89, -116, -6, 96, 58, 57, -115, 63, 111, -115, -59}, new byte[]{-17, -41, 93, 125, -80, -113, -23, 48}));
            }
        } else {
            linearLayoutColumn.addView(label(AbstractC1387m.m2421h(new byte[]{-115, -115, -59, -17, -75, 102, -20, -70, -115, -84, -59, -17, -75, 105, -19, ByteCompanionObject.MIN_VALUE, -115, -91, 53, -113, -40, 0, -116, 34, -115, -94, -60, -34, -76, 94, 28, -46, -25, -64, -91, -114, -27, 1, -66, -46, -29, -63, -110, -113, -33, 1, -65, 56, 125, -64, -89, -114, -18, 0, -122, -46, -26, -63, -101, -114, -30, 0, -119, -46, -32, -64, -85, ByteCompanionObject.MAX_VALUE, -121, 86, -82, 34, 108, 48, -9, -39, -9, -16, 14, 34, -65, -106, -121, ByteCompanionObject.MAX_VALUE, 86, -16, -34, -124, -49, 48, -59, -19, -76, 91, -20, -72, -115, -85, -60, -47, -76, 87, -20, -73, -115, -83, -59, -31, 75, -16, -20, -102, -115, -83, -59, -21, -75, 104, -20, -72, -115, -96, -60, -35, -75, 110, -19, -126, -116, -101, 53, -113, -38, 0, -126, -46, -25, -64, -91, -113, -46, 1, -73, -46, -17, -64, -91, -114, -21, 1, -66, 34, -116, -110, -59, -22, -75, 106, -19, -127, -116, -103, -59, -25, -75, 105, 28, -45, -34, -63, -107, -113, -37, 0, -114, -46, -24, -64, -88, -114, -23, -2, 28, -46, -62, -63, -107, -113, -35, -16, -20, -80, -115, -86, -59, -28, -76, 94, -19, -123, -115, -91, -59, -30, -75, 104, -20, -70, 125, -64, -85, -113, -44, 0, -126, -46, -18, -63, -107, -113, -48, 0, -114, -46, -19, 48, -59, -19, -75, 101, -20, -65, -116, -110, -59, -25, -75, 107, -19, -115, -116, -106, -59, -25, -76, 95, 28, -45, -48, -63, -105, -113, -37, 0, -113, -46, -29, 48, -60, -34, -75, 104, -20, -74, -115, -91, -59, -30, -76, 92, -19, -115, 125, -64, -89, -114, -18, 0, -122, -46, -26, -63, -101, -114, -30, 0, -116, -46, -24, -63, -105, -114, -28, 1, -77, 46, 125, -64, -83, ByteCompanionObject.MAX_VALUE, -75, 109, -20, -78, -115, -82, -59, -18, -75, 110, -19, -126, -115, -82, -60, -35, 75}, new byte[]{93, 16, 21, 95, 101, -48, 60, 2}), 13));
            spinnerActionSpinner2 = null;
            spinnerActionSpinner = null;
        }
        ScrollView scrollView = new ScrollView(requireContext());
        scrollView.addView(linearLayoutColumn);
        final Spinner spinner = spinnerActionSpinner2;
        final Spinner spinner2 = spinnerActionSpinner;
        dialogBuilder().setTitle(TYPES[c3559m.f10580c.ordinal()]).setView(scrollView).setNegativeButton(AbstractC1387m.m2421h(new byte[]{-47, 33, 34, -108, -43, -96, 114, 109, -47, 2, 35, -90}, new byte[]{1, -65, -13, 22, 5, 28, -94, -40}), (DialogInterface.OnClickListener) null).setPositiveButton(AbstractC1387m.m2421h(new byte[]{-125, 51, 108, 41, -5, -60, 87, -119, -125, 25, 109, 20, -5, -60, 86, -73, -126, 32, -99, 121, -111, 92, 87, -119, -125, 28, 109, 19, -5, -55, 86, -73, -126, 47}, new byte[]{83, -84, -67, -87, 43, 124, -121, 53}), new DialogInterface.OnClickListener() { // from class: x0.d
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                this.f10551b.lambda$editElement$33(c3559m, editTextInput, materialSwitchCheck, spinner2, spinner, z9, dialogInterface, i10);
            }
        }).show();
    }

    private void editor() {
        LinearLayout linearLayoutColumn;
        this.body.removeAllViews();
        heading(AbstractC1387m.m2421h(new byte[]{26, 82, 52, -8, 89, -16, 78, -8, 26, ByteCompanionObject.MAX_VALUE, 52, -3, -87, -105, 44, -104, 114, 22, 80, -112, 63, -105, 43, -103, 72, 22, 84}, new byte[]{-54, -58, -28, 64, -119, 71, -98, 72}), AbstractC1387m.m2421h(new byte[]{97, 14, -36, -77, -109, -44, -105, 18, -47, -15, 126, -78, -114, -44, -103, 19, -23, -15, 126, -77, -69, 36, -9, 113, ByteCompanionObject.MIN_VALUE, -104, 44, -41, -34, -78, -9, 118, -127, -94, -36, 67, 46, -58, -112, -29, 112, 0, -50, 77, 46, -44, -77, 19, -18, -16, 77, -77, -66, -44, -107, 18, -36, -15, 126, -77, -69, 36, -9, 119, ByteCompanionObject.MIN_VALUE, -107, 44, -38, -33, -123, -10, 65, ByteCompanionObject.MIN_VALUE, -110, 44, -37, -33, -117, 7, -29, 112, -30, 75, 67, 46, 36, 20, -19, 112, -16, 92, -77, -66, -43, -90, 19, -17, -16, 66, -77, -75, -44, -103, 19, -26, -16, 68, -78, -116, -44, -110, -29, -127, -83, 44, -40, -34, -79, -9, ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MIN_VALUE, -107, 44, -34, -33, -122, -10, 72}, new byte[]{80, 32, -4, 99, 14, 4, 39, -61}));
        LinearLayout linearLayoutRow = row();
        View viewButton = button(AbstractC1387m.m2421h(new byte[]{-51, -104, -40, -20, -66, -88, -13, -6, -1, -83, 65, 28, -36, -22, -102, -85, -101, -56, -41, 28, -37, -21, -96, -86, -92}, new byte[]{47, 24, 97, -52, 110, 58, 34, 123}));
        View viewButton2 = button(AbstractC1387m.m2421h(new byte[]{-118, 93, -7, 1, 49, 31, 62, -108, -118, 76, -7, 2, 48, 34, 62, -106, -117, 112}, new byte[]{90, -4, 41, -65, -32, -102, -17, 20}));
        linearLayoutRow.addView(viewButton);
        linearLayoutRow.addView(viewButton2);
        this.body.addView(linearLayoutRow);
        viewButton.setOnClickListener(new ViewOnClickListenerC3551e(this, 6));
        viewButton2.setOnClickListener(new ViewOnClickListenerC3551e(this, 3));
        LinearLayout linearLayout = this.body;
        if (getResources().getConfiguration().screenWidthDp >= 720) {
            LinearLayout linearLayoutRow2 = row();
            linearLayoutRow2.setGravity(48);
            this.body.addView(linearLayoutRow2);
            linearLayoutColumn = column();
            LinearLayout linearLayoutColumn2 = column();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 0.42f);
            layoutParams.setMargins(0, 0, m1575dp(20), 0);
            linearLayoutRow2.addView(linearLayoutColumn, layoutParams);
            linearLayoutRow2.addView(linearLayoutColumn2, new LinearLayout.LayoutParams(0, -2, 0.58f));
            this.body = linearLayoutColumn2;
        } else {
            linearLayoutColumn = linearLayout;
        }
        LinearLayout linearLayoutCard = card();
        linearLayoutColumn.addView(linearLayoutCard);
        linearLayoutCard.addView(label(AbstractC1387m.m2421h(new byte[]{85, 115, -93, 96, -100, -99, -45, 52, 84, 110, -93, 110, -99, -91, -46, 12, 85, 86, 83, 0, -1, -52, -70, 102, 49, 62, -59, 0, -8, -51, ByteCompanionObject.MIN_VALUE, 102, 53}, new byte[]{-123, -18, 115, -48, 77, 28, 2, -74}), 21));
        linearLayoutCard.addView(label(AbstractC1387m.m2421h(new byte[]{115, 103, 80, -58, 2, 88, 25, -96, 115, 76, -96, -89, 108, 1, 121, -55, 35, 41, 48, -89, 111, 1, 124, -55, 33, 40, 0, -90, 88, -21, -23, -55, 46, 41, 58, -90, 83, 1, 121, -56, 30, -43, -96, -90, 87, 1, 119, -55, 35, 41, 60, -89, 99, -15, 25, -96, -125, 40, 1, -89, 97, 1, 119, -55, 35, 41, 48, -90, 84, 1, 113, -56, 17, 41, 48, -89, 110, 1, 113, -56, 22}, new byte[]{-93, -7, ByteCompanionObject.MIN_VALUE, 119, -45, -47, -55, 24}), 12));
        linearLayoutCard.addView(label(AbstractC1387m.m2421h(new byte[]{-109, 43, -117, -111, 26, -65, -79, 49, -109, 6, -117, -100, 26, -80, -79, 54, 99, 102, -23, -15, 114, -40, -43, 83, -11, 102, -18, -16, 72, -40, -47}, new byte[]{67, -74, 91, 33, -54, 8, 97, -125}), 13));
        EditText editTextInput = input(AbstractC1387m.m2421h(new byte[]{-41, 90, -25, 11, 68, -105, -19, 72, -41, 119, -25, 6, 68, -104, -19, 79}, new byte[]{7, -57, 55, -69, -108, 32, Base64.padSymbol, -6}), this.current.f10595b, false);
        linearLayoutCard.addView(editTextInput);
        watch(editTextInput, new RunnableC3180x0(12, this, editTextInput));
        MaterialSwitch materialSwitchCheck = check(AbstractC1387m.m2421h(new byte[]{-79, -62, 99, 67, -121, 27, -106, -13, -79, -27, 98, 121, 119, ByteCompanionObject.MAX_VALUE, -12, -107, -37, ByteCompanionObject.MIN_VALUE, 8, 42, -39, 126, -63, -108, -16, ByteCompanionObject.MIN_VALUE, 14}, new byte[]{97, 80, -77, -5, 87, -81, 70, 69}), this.current.f10596c);
        linearLayoutCard.addView(materialSwitchCheck);
        final int i10 = 0;
        materialSwitchCheck.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: x0.g

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WidgetBuilderFragment f10564b;

            {
                this.f10564b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                switch (i10) {
                    case 0:
                        this.f10564b.lambda$editor$12(compoundButton, z9);
                        break;
                    case 1:
                        this.f10564b.lambda$editor$13(compoundButton, z9);
                        break;
                    default:
                        this.f10564b.lambda$editor$14(compoundButton, z9);
                        break;
                }
            }
        });
        final int i11 = 1;
        MaterialSwitch materialSwitchCheck2 = check(AbstractC1387m.m2421h(new byte[]{18, -2, -86, -53, 121, -120, -10, -63, 18, -30, -85, -6, 121, -101, -10, -54, 18, -26, 90, -87, 26, -55, -97, -111, 118, ByteCompanionObject.MAX_VALUE, -86, -56, 120, -84, -9, -10, -30, -113, -64, -87, 21, -55, -103, -111, 125, -113, -64, -87, 16, 57, -27, -22, -23, -99, -63}, new byte[]{-62, 95, 122, 121, -88, 25, 39, 65}), !this.current.f10597d);
        linearLayoutCard.addView(materialSwitchCheck2);
        linearLayoutCard.addView(label(AbstractC1387m.m2421h(new byte[]{-74, 90, 7, 53, 28, 11, 90, -42, -73, 74, 7, 54, 28, 8, 91, -23, 70, 21, 84, 100, 115, 89, 49, -73, -22, 20, 108, 100, 115, -87, 91, -21, -74, ByteCompanionObject.MAX_VALUE, 6, 1, 29, 53, 90, -45, -74, 121, 7, 54, 28, 2, -86, -73, -25, -28, 6, 9, 29, 57, 91, -25, -73, 70, 7, 52, 29, 55, 90, -33, -74, 126, 6, 10, 29, 48, -86, -92, -51, 20, 72, 101, 76, 88, 8, -74, -42, 20, 100, 100, 117, 88, 8, -73, -22, -28, 6, 6, 29, 49, 90, -46, -74, 124, 6, 8, 28, 2, 90, -38, 70, 20, 105, 101, 77, 89, 50, 70, -73, 69, 6, 6, 29, 55, 91, -26, -74, 116, 7, 51, 29, 49, 90, -44, -74, 116, 6, 9, 29, 49, 90, -34, -92, ByteCompanionObject.MAX_VALUE, -6, -108, 29, 52, 90, -42, 70, 21, 87, 100, ByteCompanionObject.MAX_VALUE, 89, 52, -74, -34, 21, 83, -108, 29, 53, 90, -45, -73, 69, 7, 54, 29, 57, 91, -29, 70, 21, 87, 100, ByteCompanionObject.MAX_VALUE, 88, 27, -73, -26, 20, 107, 101, 78, 88, 8, -74, -40, 20, 101, 100, 115, -87, 90, -44, -74, 124, 6, 0, 29, 57, -92, 70, -74, 100, 6, 4, 28, 8, 90, -36, -73, 68, 7, 63, 28, 11, 90, -34, -73, 75, -10, 100, 117, -87, 91, -28, -74, 116, 6, 13, 29, 53, 90, -45, -73, 68, 6, 4, -19, 89, 55, -74, -45, 21, 84, -102}, new byte[]{102, -60, -42, -76, -51, -119, -118, 102}), 12));
        MaterialSwitch materialSwitchCheck3 = check(AbstractC1387m.m2421h(new byte[]{74, 19, -66, -18, 42, -78, -53, 106, 75, 9, -66, -20, 43, ByteCompanionObject.MIN_VALUE, 59, 14, 37, 88, -18, -116, 66, 34, -54, 94, 74, 57, -65, -35, 42, -72, -54, 94, 75, 2, -65, -34, 42, -70, -53, 102}, new byte[]{-102, -119, 110, 92, -6, 2, 27, -34}), this.current.f10598e);
        linearLayoutCard.addView(materialSwitchCheck3);
        linearLayoutCard.addView(label(AbstractC1387m.m2421h(new byte[]{-87, 64, 65, -64, 68, 73, 43, 1, -88, 92, 65, -52, 68, 70, 43, 7, -87, 108, -80, -87, 20, 103, -37, 106, -51, 2, 43, -101, 44, 35, 70, 106, -60, 2, 32, -102, 27, -45, 43, 9, -87, 108, 65, -53, 68, 75, 43, 13, -87, 108, 64, -10, 69, 113, 43, 10, -87, 105, 65, -57, 68, 78, 43, 10, -88, 93, -80, -101, 43, 35, 75, 106, -60, 2, 37, -101, 47, 34, 119}, new byte[]{121, -46, -112, 75, -108, -13, -5, -70}), 12));
        materialSwitchCheck3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: x0.g

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WidgetBuilderFragment f10564b;

            {
                this.f10564b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                switch (i11) {
                    case 0:
                        this.f10564b.lambda$editor$12(compoundButton, z9);
                        break;
                    case 1:
                        this.f10564b.lambda$editor$13(compoundButton, z9);
                        break;
                    default:
                        this.f10564b.lambda$editor$14(compoundButton, z9);
                        break;
                }
            }
        });
        MaterialSwitch materialSwitchCheck4 = check(AbstractC1387m.m2421h(new byte[]{-22, 56, 38, -82, 54, -46, -3, 112, -21, 34, 38, -84, 55, -32, 13, 20, -120, -126, 39, -99, 54, -48, -4, 85, -21, 34, 38, -95, 55, -31, -4, 70, -22, 28, 38, -96, -58, -78, -97, 20, -126, 114, 66, -52, 83}, new byte[]{58, -94, -10, 28, -26, 98, 45, -60}), this.current.f10600g);
        linearLayoutCard.addView(materialSwitchCheck4);
        linearLayoutCard.addView(label(AbstractC1387m.m2421h(new byte[]{84, 117, -52, 47, -61, -63, 81, -13, 85, 105, -52, 35, -61, -50, 81, -11, 84, 89, Base64.padSymbol, 70, -109, -17, -95, -104, 59, 54, -99, 117, -100, -85, Base64.padSymbol, -104, 58, 54, -98, 116, -96, -85, 63, -104, 63, 54, -111, 116, -82, -85, 49, -103, 11, -57, -51, 26, -61, -54, 81, -13, 84, 87, -52, 37, -62, -7, 80, -60, -86, -57, -51, 0, -61, -59, 80, -56, 84, 91, -51, 20, 51, -85, 57, 104, 85, 103, -51, 20, -62, -6, 81, -9, 84, 89, -51, 31, -61, -59, 81, -2, 84, 82, -51, 25, -61, -61, 81, -3, -92, 54, -100, 116, -95, -86, 16, -103, 4, 55, -96, 117, -112, -86, 3, -104, 58, 55, -82, 116, -83, 91, 81, -6, 84, 95, -51, 16, -61, -53, -95, -104, 57, 55, -83, 117, -110, -86, 3, -103, 4, 55, -83, 116, -85, -85, 51, -104, 52, 54, -109, 117, -111, -86, 0, -103, 11, -57, -51, 26, -62, -7, 81, -4, 84, 82, -51, 31, -62, -9, 81, -11, 84, 89, Base64.padSymbol, 116, -83, -86, 3, 104, 85, 103, -51, 20, -62, -6, 81, -14, 85, 103, -52, 47, -62, -7, 81, -10, 84, 84, -51, 26, 63, 91, 81, -6, -92, 54, -97, 116, -83, -85, Base64.padSymbol, 104, 85, 96, -51, 28, -62, -6, 81, -13, 84, 82, Base64.padSymbol, 116, -94, -85, 52, -104, 51, -57, -51, 30, -61, -58, 81, -10, 84, 88, -51, 30, -61, -61, -95, -118, 47, -52, -33, 31, Base64.padSymbol}, new byte[]{-124, -25, 29, -92, 19, 123, -127, 72}), 12));
        final int i12 = 2;
        materialSwitchCheck4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: x0.g

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WidgetBuilderFragment f10564b;

            {
                this.f10564b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                switch (i12) {
                    case 0:
                        this.f10564b.lambda$editor$12(compoundButton, z9);
                        break;
                    case 1:
                        this.f10564b.lambda$editor$13(compoundButton, z9);
                        break;
                    default:
                        this.f10564b.lambda$editor$14(compoundButton, z9);
                        break;
                }
            }
        });
        StringBuilder sb = new StringBuilder();
        sb.append(AbstractC1387m.m2421h(new byte[]{86, 53, -116, -127, -37, -108, -13, 14, 86, 32, -115, -79, 43, -14, -93, 98, 54, 68, -35, -31, -79, -14, -93, 99, 13, 68, -34, -31, -75, -13, -112, 98, 56, -75, -116, -125, -37, -101, -13, 6, 86, 35, -116, -124, -38, -95, -13, 2, -90, 87, -21, 17}, new byte[]{-122, -107, 92, 49, 11, 35, 35, -78}));
        sb.append(this.current.f10605l);
        final View viewLabel = label(AbstractC1178q.m2075i(new byte[]{-81}, new byte[]{-118, 68, -108, 17, -94, 86, 36, 67}, sb), 13);
        linearLayoutCard.addView(viewLabel);
        final int i13 = 0;
        linearLayoutCard.addView(slider(AbstractC1387m.m2421h(new byte[]{-8, 112, -68, -24, 17, 36, -59, 64, -8, 101, -67, -40, -31, 66, -107, 44, -104, 1, -19, -120, 123, 66, -107, 45, -93, 1, -18, -120, ByteCompanionObject.MAX_VALUE, 67, -90, 44, -106, -16, -68, -22, 17, 43, -59, 72, -8, 102, -68, -19, 16, 17, -59, 76}, new byte[]{40, -48, 108, 88, -63, -109, 21, -4}), 50, 200, this.current.f10605l, new IntConsumer(this) { // from class: x0.h

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WidgetBuilderFragment f10566b;

            {
                this.f10566b = this;
            }

            @Override // java.util.function.IntConsumer
            public final void accept(int i14) {
                switch (i13) {
                    case 0:
                        this.f10566b.lambda$editor$15((TextView) viewLabel, i14);
                        break;
                    case 1:
                        this.f10566b.lambda$editor$16((TextView) viewLabel, i14);
                        break;
                    case 2:
                        this.f10566b.lambda$editor$17((TextView) viewLabel, i14);
                        break;
                    case 3:
                        this.f10566b.lambda$editor$18((TextView) viewLabel, i14);
                        break;
                    case 4:
                        this.f10566b.lambda$editor$20((TextView) viewLabel, i14);
                        break;
                    default:
                        this.f10566b.lambda$editor$19((ArrayList) viewLabel, i14);
                        break;
                }
            }
        }));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(AbstractC1387m.m2421h(new byte[]{-110, -5, -97, 90, -46, 102, 112, 1, -110, -18, -98, 106, 34, 0, 33, 109, -16, -118, -34, 59, -126, 1, 29, 108, -63, -118, -51, 58, -68, 1, 19, 109, -4, 123, -97, 88, -46, 105, 112, 9, -110, -19, -97, 95, -45, 83, 112, 13, 98, -103, -8, -54}, new byte[]{66, 91, 79, -22, 2, -47, -96, -67}));
        sb2.append(this.current.f10606m);
        final View viewLabel2 = label(AbstractC1178q.m2075i(new byte[]{4}, new byte[]{33, -48, 73, -35, 80, -119, -50, 104}, sb2), 13);
        linearLayoutCard.addView(viewLabel2);
        linearLayoutCard.addView(slider(AbstractC1387m.m2421h(new byte[]{-25, 96, 13, 90, -32, -35, -97, 60, -25, 117, 12, 106, 16, -69, -50, 80, -123, 17, 76, 59, -80, -70, -14, 81, -76, 17, 95, 58, -114, -70, -4, 80, -119, -32, 13, 88, -32, -46, -97, 52, -25, 118, 13, 95, -31, -24, -97, 48}, new byte[]{55, -64, -35, -22, 48, 106, 79, ByteCompanionObject.MIN_VALUE}), 50, 200, this.current.f10606m, new IntConsumer(this) { // from class: x0.h

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WidgetBuilderFragment f10566b;

            {
                this.f10566b = this;
            }

            @Override // java.util.function.IntConsumer
            public final void accept(int i14) {
                switch (i11) {
                    case 0:
                        this.f10566b.lambda$editor$15((TextView) viewLabel2, i14);
                        break;
                    case 1:
                        this.f10566b.lambda$editor$16((TextView) viewLabel2, i14);
                        break;
                    case 2:
                        this.f10566b.lambda$editor$17((TextView) viewLabel2, i14);
                        break;
                    case 3:
                        this.f10566b.lambda$editor$18((TextView) viewLabel2, i14);
                        break;
                    case 4:
                        this.f10566b.lambda$editor$20((TextView) viewLabel2, i14);
                        break;
                    default:
                        this.f10566b.lambda$editor$19((ArrayList) viewLabel2, i14);
                        break;
                }
            }
        }));
        linearLayoutCard.addView(label(AbstractC1387m.m2421h(new byte[]{-8, -104, -44, -36, 37, 65, 74, -55, 29, 26, 33, 72, 23, 115, 14, 87, 29, 29, -47, 44, 123, 17, 107, 57, 112, 121, 125, 45, 79, 17, 107, -59, -19, -103, -63, -52, -30, -31, 60, 105, 89, -120, 33, 66, 23, 112, 15, 98, 28, 47, 33, 65, 22, 74, 14, 80, -19, 121, 113, 44, 119, 17, 105, 57, 113, 120, 68, 45, 71, -19, -2, -37, -3, -104, -44, -36, 37, 65, 74, -55, 29, 26, 33, 72, 23, 115, 14, 87, 29, 29, -47, 44, 118, 17, 96, 57, 118, 121, 125, 45, 79, 17, 107, -57, -19, 120, 109, 44, 119, 16, 95, 56, 69, 121, 115, 44, 119, 17, 111, 57, 117, 121, 113, 45, 68, 17, 107, 56, 79, 121, 112, 45, 72, -31, 14, 91, 29, 29, 32, 125, 22, 77, -2, 57, ByteCompanionObject.MAX_VALUE, 120, 73, 44, 115, 17, 104, 57, 120, 121, 115, -36, 23, 115, 14, 85, 29, 29, 32, 125, 22, 67, 14, 92, -19, 121, 112, -36, 22, 76, 14, 82, 29, 29, 33, 64, 23, 116, 14, 84, 28, 42, 33, 76, 23, 125, 14, 81, -29}, new byte[]{-51, -88, -15, -4, -57, -63, -34, -23}), 12));
        StringBuilder sb3 = new StringBuilder();
        sb3.append(AbstractC1387m.m2421h(new byte[]{-95, -58, 42, 47, -120, 112, -104, -44, -96, -39, 43, 31, -119, 73, -104, -34, -95, -25, 42, 46, -119, 76, -103, -17, 81, -101, 76, -113}, new byte[]{113, 89, -5, -81, 88, -50, 72, 99}));
        sb3.append(this.current.f10603j);
        final View viewLabel3 = label(AbstractC1178q.m2075i(new byte[]{105}, new byte[]{76, -16, -18, -32, -109, 0, -13, 102}, sb3), 13);
        linearLayoutCard.addView(viewLabel3);
        final int i14 = 2;
        linearLayoutCard.addView(slider(AbstractC1387m.m2421h(new byte[]{-20, -6, 26, 107, -104, -65, -7, 106, -19, -27, 27, 91, -103, -122, -7, 96, -20, -37, 26, 106, -103, -125, -8, 81, 28, -75, 121, 59, -16, -47, -99, 13, -118, -75, 126, 58, -54, -47, -103}, new byte[]{60, 101, -53, -21, 72, 1, 41, -35}), 0, 100, this.current.f10603j, new IntConsumer(this) { // from class: x0.h

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WidgetBuilderFragment f10566b;

            {
                this.f10566b = this;
            }

            @Override // java.util.function.IntConsumer
            public final void accept(int i15) {
                switch (i14) {
                    case 0:
                        this.f10566b.lambda$editor$15((TextView) viewLabel3, i15);
                        break;
                    case 1:
                        this.f10566b.lambda$editor$16((TextView) viewLabel3, i15);
                        break;
                    case 2:
                        this.f10566b.lambda$editor$17((TextView) viewLabel3, i15);
                        break;
                    case 3:
                        this.f10566b.lambda$editor$18((TextView) viewLabel3, i15);
                        break;
                    case 4:
                        this.f10566b.lambda$editor$20((TextView) viewLabel3, i15);
                        break;
                    default:
                        this.f10566b.lambda$editor$19((ArrayList) viewLabel3, i15);
                        break;
                }
            }
        }));
        linearLayoutCard.addView(label(AbstractC1387m.m2421h(new byte[]{-98, -51, -85, 111, 111, -33, -83, 74, 17, 56, 53, 93, 84, -101, 48, 74, 16, 57, 10, 92, 109, -102, 1, 75, 32, -56, 91, 63, 63, -13, 93, 46, 126, 80, 91, 49, 62, -64, 93, 35, -126, -56, -70, -67, -33, 110, -83, 120, 46, 124, -85, 93, 80, -101, 51, 74, 21, 56, 54, 93, 81, -102, 12, 75, 44, 57, 7, 92, 97, 107, 93, 37, ByteCompanionObject.MAX_VALUE, 104, 91, 51, 63, -4, 92, 26, 126, 88, 90, 10, 63, -10, 92, 17, 126, 81}, new byte[]{-82, -24, -117, -115, -17, 75, -115, -102}), 12));
        StringBuilder sb4 = new StringBuilder();
        sb4.append(AbstractC1387m.m2421h(new byte[]{-126, 39, -100, 15, -110, -47, 33, -112, -125, 56, -99, 63, -109, -24, 33, -102, -126, 6, -100, 14, -109, -19, 32, -85, 114, 105, -55, 95, -4, -65, 76, -9, -30, -104, -99, 49, -110, -43, 33, -102, -126, 8, 109, 77, -11, 79}, new byte[]{82, -72, 77, -113, 66, 111, -15, 39}));
        sb4.append(this.current.f10604k);
        final View viewLabel4 = label(AbstractC1178q.m2075i(new byte[]{51}, new byte[]{22, 16, -105, -99, 72, 82, 50, 98}, sb4), 13);
        linearLayoutCard.addView(viewLabel4);
        final int i15 = 3;
        linearLayoutCard.addView(slider(AbstractC1387m.m2421h(new byte[]{-125, 59, 2, 54, 119, 69, -38, -47, -126, 36, 3, 6, 118, 124, -38, -37, -125, 26, 2, 55, 118, 121, -37, -22, 115, 117, 87, 102, 25, 43, -73, -74, -29, -124, 2, 54, 119, 75, -37, -25, -125, 30, 2, 54, 118, 112, -37, -28, -125, 26, 3, 5, 119, 69, 42, -74, -19, 116, 105, 102, 26, 43, -70}, new byte[]{83, -92, -45, -74, -89, -5, 10, 102}), 0, 100, this.current.f10604k, new IntConsumer(this) { // from class: x0.h

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WidgetBuilderFragment f10566b;

            {
                this.f10566b = this;
            }

            @Override // java.util.function.IntConsumer
            public final void accept(int i16) {
                switch (i15) {
                    case 0:
                        this.f10566b.lambda$editor$15((TextView) viewLabel4, i16);
                        break;
                    case 1:
                        this.f10566b.lambda$editor$16((TextView) viewLabel4, i16);
                        break;
                    case 2:
                        this.f10566b.lambda$editor$17((TextView) viewLabel4, i16);
                        break;
                    case 3:
                        this.f10566b.lambda$editor$18((TextView) viewLabel4, i16);
                        break;
                    case 4:
                        this.f10566b.lambda$editor$20((TextView) viewLabel4, i16);
                        break;
                    default:
                        this.f10566b.lambda$editor$19((ArrayList) viewLabel4, i16);
                        break;
                }
            }
        }));
        linearLayoutCard.addView(label(AbstractC1387m.m2421h(new byte[]{-76, 69, -105, -10, 44, 83, 19, -72, -76, 93, -105, -10, -36, 57, 70, -28, -38, 55, -6, 104, 45, 104, 18, -124, -75, 102, -105, -14, 45, 104, 19, -65, -75, 101, -105, -10, 44, 91, 18, -118, 68, 55, -7, -104, 70, 56, ByteCompanionObject.MAX_VALUE, -28, -44, -55, 103, -104, 83, 57, 66, -28, -34, 55, -7, -103, 125, 57, 64, -27, -24, -57, -105, -14, 44, 85, 18, -118, -76, 88, -105, -10, 44, 82, -30, -28, -36, -57, -105, -16, 44, 85, 18, ByteCompanionObject.MIN_VALUE, -76, 95, -105, -14, 44, 88, 19, -74, -76, 89, -106, -56, 44, 86, 18, -122, 68, 55, -6, -104, 73, -56, 18, -120, -76, 82, -105, -11, 45, 103, 18, -127, -75, 101, -106, -55, 45, 103, -20}, new byte[]{100, -25, 71, 72, -4, -24, -62, 52}), 12));
        linearLayoutCard.addView(label(AbstractC1387m.m2421h(new byte[]{-14, -122, -4, 39, -94, -54, -38, 58, -14, -106, 12, 77, -57, -102, -79, 91, -83, 11, -4, 35, -94, -56, -38, 52, -14, -102, -3, 29, -93, -6, -38, 60, -14, -98, -4, 32, -93, -14, -37, 5}, new byte[]{34, 43, 44, -99, 115, 74, 10, -118}), 13));
        Display[] displays = ((DisplayManager) requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-125, 40, -26, 107, 12, 116, 56}, new byte[]{-25, 65, -107, 27, 96, 21, 65, -100}))).getDisplays();
        ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        C1652b.m2734a();
        ProLanProxy proLanProxyM2744n = C1652b.m2744n();
        addDisplayChoice(arrayList, arrayList2, displays, proLanProxyM2744n.getGuDisplayID(), AbstractC1387m.m2421h(new byte[]{30, 65, -125, -21, -12, -52, 73, 100, -18, 2, -19, -103, 85, -2, 116, 32, 112, 2, -31, -104, 105, -2, 119, 32, 119, -14, -125, -9, 4, -107, 25, 64, 30, 111, -126, -64, 4, -101, 24, 114}, new byte[]{-50, -46, 83, 72, -44, 46, -55, -16}));
        addDisplayChoice(arrayList, arrayList2, displays, proLanProxyM2744n.getGuPassDisplayID(), AbstractC1387m.m2421h(new byte[]{-23, -55, -110, -33, 1, 90, 83, 34, -24, -34, -110, -47, 0, 104, -93, 79, -122, -122, -14, -75, 80, 59, 2, 79, -119, -122, -12, -76, 105, 59, 3, 79, -119}, new byte[]{57, 86, 66, 100, -47, -22, -125, -97}));
        addDisplayChoice(arrayList, arrayList2, displays, proLanProxyM2744n.getZaPassDisplayID(), AbstractC1387m.m2421h(new byte[]{8, 116, 125, -103, 68, 115, -97, 62, 9, 99, 125, -105, 69, 65, 111, 82, 90, 58, 45, -14, 33, 18, -51, 82, 84, 59, 24, -14, 39, 19, -15, -93, 9, 107, 124, -83, 68, 119, -97, 51}, new byte[]{-40, -21, -83, 34, -108, -61, 79, -125}));
        if (!arrayList2.contains(Integer.valueOf(this.current.f10601h))) {
            arrayList.add(AbstractC1387m.m2421h(new byte[]{-50, 67, -98, 23, 1, 77, 84, -50, -50, 86, 110, 119, 99, 33, 15, -85, -81, 50, -50, 119, 97, 32, 57, -85, -93, 50, -59, 119, 104, -48, 85, -10, -50, 89, -97, 39, 1, 64, 84, -58, 62, 33, -7, -121}, new byte[]{30, -29, 78, -89, -47, -16, -124, 123}) + this.current.f10601h);
            arrayList2.add(Integer.valueOf(this.current.f10601h));
        }
        Spinner spinner = spinner(arrayList);
        spinner.setSelection(arrayList2.indexOf(Integer.valueOf(this.current.f10601h)));
        linearLayoutCard.addView(spinner);
        spinner.setContentDescription(AbstractC1387m.m2421h(new byte[]{65, -99, -1, 89, 69, 125, 44, 98, 65, -115, 15, 51, 32, 45, 71, 3, 30, 16, -1, 93, 69, ByteCompanionObject.MAX_VALUE, 44, 108, 65, -127, -2, 99, 68, 77, 44, 100, 65, -123, -1, 94, 68, 69, 45, 93}, new byte[]{-111, 48, 47, -29, -108, -3, -4, -46}));
        final int i16 = 5;
        select(spinner, new IntConsumer(this) { // from class: x0.h

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WidgetBuilderFragment f10566b;

            {
                this.f10566b = this;
            }

            @Override // java.util.function.IntConsumer
            public final void accept(int i17) {
                switch (i16) {
                    case 0:
                        this.f10566b.lambda$editor$15((TextView) arrayList2, i17);
                        break;
                    case 1:
                        this.f10566b.lambda$editor$16((TextView) arrayList2, i17);
                        break;
                    case 2:
                        this.f10566b.lambda$editor$17((TextView) arrayList2, i17);
                        break;
                    case 3:
                        this.f10566b.lambda$editor$18((TextView) arrayList2, i17);
                        break;
                    case 4:
                        this.f10566b.lambda$editor$20((TextView) arrayList2, i17);
                        break;
                    default:
                        this.f10566b.lambda$editor$19((ArrayList) arrayList2, i17);
                        break;
                }
            }
        });
        MaterialSwitch materialSwitchCheck5 = check(AbstractC1387m.m2421h(new byte[]{17, -38, -54, 124, 33, 43, 86, -118, 17, -10, -54, 126, 33, 43, 86, -116, 16, -51, -54, 123, 33, 40, 86, -114, 17, -14, 58, 31, 113, 121, 52, -28, ByteCompanionObject.MAX_VALUE, -101, -102, 30, 64, 120, 1, -28, 121, -102, -88, 30, 64, 120, 4, -27, 77}, new byte[]{-63, 74, 26, -50, -16, -87, -122, 52}), this.current.f10599f);
        linearLayoutCard.addView(materialSwitchCheck5);
        StringBuilder sb5 = new StringBuilder();
        sb5.append(AbstractC1387m.m2421h(new byte[]{-3, 63, -35, 29, -79, 28, 13, -7, -3, 35, -36, 44, -80, 43, 13, -11, 13, 79, -118, ByteCompanionObject.MAX_VALUE, -44, 120, 92, -87, -104, 78, -70, -113, -93, 30, -4}, new byte[]{45, -98, 13, -81, 97, -87, -36, 121}));
        sb5.append(this.current.f10602i);
        final View viewLabel5 = label(AbstractC1178q.m2075i(new byte[]{-110, 120, 9, 33, -87, 2, -50, -125}, new byte[]{-78, -87, -120, -15, 28, -46, 116, -83}, sb5), 13);
        linearLayoutCard.addView(viewLabel5);
        final int i17 = 4;
        View viewSlider = slider(AbstractC1387m.m2421h(new byte[]{44, -98, -2, -119, 66, 76, -66, 36, 44, -119, -1, -71, -78, 37, -34, 72, 78, -19, -84, -23, 44, 36, -17, 72, 78, -20, -112, -24, 18, 37, -34, 73, 123, -20, -106, -23, 32, 37, -34, 72, 65, -20, -106, -24, 29, -39, 78, 73, 125, -20, -101, -23, 40, 36, -19, 72, 65, -20, -102}, new byte[]{-4, 60, 46, 57, -110, -11, 110, -104}), 1, 3600, this.current.f10602i, new IntConsumer(this) { // from class: x0.h

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WidgetBuilderFragment f10566b;

            {
                this.f10566b = this;
            }

            @Override // java.util.function.IntConsumer
            public final void accept(int i18) {
                switch (i17) {
                    case 0:
                        this.f10566b.lambda$editor$15((TextView) viewLabel5, i18);
                        break;
                    case 1:
                        this.f10566b.lambda$editor$16((TextView) viewLabel5, i18);
                        break;
                    case 2:
                        this.f10566b.lambda$editor$17((TextView) viewLabel5, i18);
                        break;
                    case 3:
                        this.f10566b.lambda$editor$18((TextView) viewLabel5, i18);
                        break;
                    case 4:
                        this.f10566b.lambda$editor$20((TextView) viewLabel5, i18);
                        break;
                    default:
                        this.f10566b.lambda$editor$19((ArrayList) viewLabel5, i18);
                        break;
                }
            }
        });
        linearLayoutCard.addView(viewSlider);
        final RunnableC2351s2 runnableC2351s2 = new RunnableC2351s2(2, this, materialSwitchCheck5, viewSlider, viewLabel5);
        final int i18 = 0;
        materialSwitchCheck5.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: x0.j

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WidgetBuilderFragment f10572b;

            {
                this.f10572b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                switch (i18) {
                    case 0:
                        this.f10572b.lambda$editor$22(runnableC2351s2, compoundButton, z9);
                        break;
                    default:
                        this.f10572b.lambda$editor$23(runnableC2351s2, compoundButton, z9);
                        break;
                }
            }
        });
        materialSwitchCheck2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: x0.j

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ WidgetBuilderFragment f10572b;

            {
                this.f10572b = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                switch (i11) {
                    case 0:
                        this.f10572b.lambda$editor$22(runnableC2351s2, compoundButton, z9);
                        break;
                    default:
                        this.f10572b.lambda$editor$23(runnableC2351s2, compoundButton, z9);
                        break;
                }
            }
        });
        runnableC2351s2.run();
        this.body.addView(label(AbstractC1387m.m2421h(new byte[]{-2, -33, -52, -27, 9, -78, 16, 53, -97, -84, -97, -123, 109, -40, -123, 52, -84, 93, -52, -25, 8, -125, -32, 86, -2, -58, -51, -38, 9, -68, -32, 80, -1, -1, -51, -39, -7, -40, -126, 53, -106, -83, -88, -123, 111, -40, -123, 52, -84}, new byte[]{46, 125, 28, 85, -39, 8, 48, -27}), 21));
        LinearLayout linearLayoutRow3 = row();
        Button button = button(AbstractC1387m.m2421h(new byte[]{-95, -67, 103, 4, 120, 103, -8, 113, -96, -99, 102, 63, 120, 100, -7, 64, -95, -92}, new byte[]{113, 29, -73, -76, -87, -26, 40, -53}));
        Button button2 = button(AbstractC1387m.m2421h(new byte[]{-64, 87, -59, 59, -53, 95, 69, 78, -64, 75, -60, 10, -53, 76, 69, 69, -64, 79}, new byte[]{16, -10, 21, -119, 26, -50, -108, -50}));
        linearLayoutRow3.addView(button);
        linearLayoutRow3.addView(button2);
        this.body.addView(linearLayoutRow3);
        this.openTab = button;
        this.closedTab = button2;
        button.setOnClickListener(new ViewOnClickListenerC3551e(this, 7));
        button2.setOnClickListener(new ViewOnClickListenerC3551e(this, 0));
        Button button3 = button(AbstractC1387m.m2421h(new byte[]{-4, 70, 21, 11, 81, 107, 7, -41, -4, 100, 20, 50, 81, 105, 7, -39, -4, 100, 21, 4, 80, 81, 7, -37, -4, 102, 21, 4, 80, 81, 7, -36}, new byte[]{44, -42, -59, -71, ByteCompanionObject.MIN_VALUE, -23, -41, 105}));
        this.body.addView(button3);
        this.alignmentButton = button3;
        button3.setOnClickListener(new ViewOnClickListenerC3551e(this, i11));
        this.body.addView(label(AbstractC1387m.m2421h(new byte[]{-36, 97, 60, 71, -31, -7, -100, -98, -36, 67, Base64.padSymbol, 126, -31, -5, -100, -112, -36, 67, 60, 72, -32, -61, -100, -110, -36, 65, 60, 72, -32, -61, -100, -107, 44, 32, 104, 37, -114, -86, -52, -16, -80, 33, 84, 36, -80, -86, -49, -16, -71, 32, 110, -43, -31, -5, -100, -98, -36, 67, 60, 72, -31, -16, -100, -107, 44, 32, 108, 36, -65, -85, -8, -15, -121, -47, 60, 71, 16, -85, -2, -15, -121, 33, 93, 36, -80, -85, -4, -16, -79, 33, 81, 37, -114, -85, -16, 0, -36, 67, 60, 77, -32, -49, -100, -107, 34, -47, 60, 103, 16, -86, -51, -16, -66, 32, 125, 36, -80, -85, -15, -15, -113, 32, 110, 37, -114, -85, -16, 0, -36, 67, 60, 77, -32, -49, -100, -107, 44, 33, 82, 36, -79, -86, -50, -16, -68, 33, 94, 37, -117, -86, -61, -16, -71, 32, 110, -43, -32, -63, -100, -99, -36, 79, 60, 74, -32, -63, -99, -93, 44, 51, 71, -34, -14, -64, 108, -16, -77, 33, 82, -43, -31, -3, -100, -107, -36, 76, Base64.padSymbol, 119, -31, -5, -99, -93, 32, -47, 60, 64, -31, -6, -100, -101, -36, 73, -52, 37, -114, -85, -15, -16, -68, -47, 60, 71, -32, -63, -100, -101, -35, ByteCompanionObject.MAX_VALUE, Base64.padSymbol, 114, -32, -50, -100, -99, -36, 65, -62, -43, -32, -37, -100, -107, -36, 70, Base64.padSymbol, 118, -32, -64, -99, -84, -35, 115, 60, 69, -31, -7, 108, -16, -80, 33, 82, 37, -122, -85, -15, -16, -78, -47, 60, 74, -32, -59, -100, -97, -35, 113, 60, 69, -32, -55, -100, -104, -35, 115, Base64.padSymbol, 121, 16, -85, -2, -15, -116, 32, 111, 36, -73, -85, -15, -15, -113, 32, 98, -37}, new byte[]{12, -15, -20, -11, 48, 123, 76, 32}), 12));
        this.body.addView(label(AbstractC1387m.m2421h(new byte[]{-91, -26, 54, -37, 114, -109, 67, -107, -91, -61, 55, -23, 114, -112, -77, -7, -56, -85, 86, 75, 115, -88, 67, -110, -91, -50, 54, -41, 114, -112, 67, -108, -92, -7, -54, 75, 115, -94, 66, -85, -91, -59, 54, -38, 115, -82, -77, -7, -56, -85, 86, -70, 35, -12, 17, -8, -11, -85, 88, -69, 26, -12, 17, -8, -7, 91, 54, -34, 114, -106, 67, -105, 85, -85, 82, -69, 23, -11, 42, -8, -12, -86, 100, -69, 16, -11, 43, -7, -64, 85, -58, -69, Base64.padSymbol, -11, 38, -8, -11, -85, 83, -70, 32, -11, 35, -8, -4, -85, 94, -70, 32, -11, 38, 5, 85, -86, 97, -70, 32, -11, 45, -7, -60, -86, 109, 75, 114, -99, 67, -98, -91, -57, 54, -34, 114, -104, 67, -111, -92, -7, 55, -25, -126, -12, 19, -7, -59, -86, 103, -69, 29, -11, 45, -7, -50, -85, 88, -69, 20, -11, 38, -7, -56, -85, 94, -69, 23, 11, -77, -7, -25, 91, 55, -22, 114, -105, 66, -72, -92, -5, 54, -42, 115, -90, 66, -85, -91, -59, 54, -41, -126, -11, 33, -7, -51, -85, 82, -69, 23, 5, 67, -107, -91, -59, 54, -35, 114, -104, 67, -105, 85, -85, 82, -69, 16, -11, 43, -7, -58, -85, 86, -70, 32, -12, 31, 9, -91, -63, 54, -42, 114, -101, 67, -106, -91, -63, 55, -24, -126, -12, 19, -7, -59, -86, 103, -69, 24, -12, 19, -8, -2, -86, 100, -69, 26, -12, 28, 7}, new byte[]{117, 123, -26, 107, -94, 37, -109, 41}), 12));
        LinearLayout linearLayoutColumn3 = column();
        this.previewHost = linearLayoutColumn3;
        this.body.addView(linearLayoutColumn3);
        preview();
        this.body.addView(label(AbstractC1387m.m2421h(new byte[]{6, -29, ByteCompanionObject.MAX_VALUE, -27, 19, 109, -78, -33, 6, -5, ByteCompanionObject.MAX_VALUE, -29, 18, 90, -77, -24, -10, -98, 23, 126, 19, 96, -77, -26, -10, -98, 27, -114, 118, 8, -37, -78, 87, -97, 45, -114, 113, 8, -38, -78, 89}, new byte[]{-42, 78, -81, 94, -61, -40, 98, 99}), 21));
        this.body.addView(label(AbstractC1387m.m2421h(new byte[]{-38, 4, Base64.padSymbol, -43, -110, 105, 51, 31, -37, 31, -51, -79, -1, 12, 82, 79, -117, 66, 111, -80, -62, 12, 82, 78, -78, 67, 95, -79, -14, 13, 108, 79, -120, 66, 108, -80, -51, -4, 50, 33, -38, 45, Base64.padSymbol, -43, -110, 99, 50, 38, -37, 18, Base64.padSymbol, -39, 110, -4, 50, 42, -38, 38, Base64.padSymbol, -40, -109, 93, 51, 28, -38, 33, Base64.padSymbol, -39, -109, 83, -62, 78, -78, -77, Base64.padSymbol, -45, -110, 100, 50, 42, -38, 43, Base64.padSymbol, -35, -110, 98, 51, 31, -37, 17, 60, -19, 98, 12, 88, 78, -70, 67, 91, -79, -10, 12, 92, 78, -77, -77, Base64.padSymbol, -37, -110, 97, 50, 32, -38, 44, Base64.padSymbol, -37, -110, 100, -52, -66, -38, 62, 60, -29, -110, 100, -62, 78, -68, 67, 88, 65, -110, 97, 50, 46, -37, 18, 60, -29, -109, 92, 50, 32, -38, 42, Base64.padSymbol, -37, -110, 100, -62, 78, -76, 66, 111, -79, -8, 13, 98, 79, -127, 67, 95, -79, -14, 13, 108, 79, -120, 66, 108, -80, -51, -4, 50, 35, -38, 35, Base64.padSymbol, -41, -110, 108, 51, 28, -38, 43, Base64.padSymbol, -44, -110, 96, -62, 78, -72, -77, Base64.padSymbol, -35, -110, 108, 50, 36, -38, 38, 60, -29, -110, 105, -52}, new byte[]{10, -109, -19, 97, 66, -36, -30, -98}), 12));
        if (this.current.f10614u.isEmpty()) {
            this.body.addView(label(AbstractC1387m.m2421h(new byte[]{-111, 106, -118, -26, 120, 92, -35, 93, 97, 37, -25, -120, 29, 55, -113, -51, -112, 120, -118, -29, 120, 83, -35, 81, -111, 64, -118, -27, 121, 100, -35, 83, -111, 71, 116, 120, 120, 114, -35, 83, -111, 68, -118, -24, 120, 84, -36, 97, -112, 119, -118, -19, -120, 54, -73, Base64.padSymbol, -4, 37, -28, -120, 23, 54, -73, 60, -62, -39, 122, -120, 23, 54, -72, 60, -63, 37, -17, -120, 18, 54, -74, 60, -49, 36, -35, -120, 24, 55, -113, Base64.padSymbol, -12, 37, -31, -119, 36, -58, -35, 85, -111, 78, -118, -32, -120, 55, -114, Base64.padSymbol, -2, 36, -38, -120, 24, 54, -65, Base64.padSymbol, -6, 37, -17, -120, 21, 54, -75, Base64.padSymbol, -12, -43, -117, -39, 120, 94, -35, 89, -111, 64, -118, -27, 121, 106, -35, 88, -111, 73, 116}, new byte[]{65, -11, 90, 88, -88, -26, 13, -19}), 14));
        }
        Button button4 = button(AbstractC1387m.m2421h(new byte[]{106, 17, 27, 69, -13, 56, 81, 104, 85, 28, 64, -43, -13, 30, 81, 110, 84, 47, 65, -23, 3, 125, 12, 6, 62, 125, 37, -75, -97, 124, 52, 6, 56, 124, 18}, new byte[]{-123, -83, -112, 101, 35, -84, -127, -42}));
        this.body.addView(button4);
        button4.setOnClickListener(new ViewOnClickListenerC3551e(this, 2));
        ArrayList arrayList3 = this.current.f10614u;
        int size = arrayList3.size();
        int i19 = 0;
        while (i19 < size) {
            Object obj = arrayList3.get(i19);
            i19++;
            final C3559m c3559m = (C3559m) obj;
            LinearLayout linearLayoutCard2 = card();
            linearLayoutCard2.addView(label(c3559m.f10579b, 17));
            linearLayoutCard2.addView(label(TYPES[c3559m.f10580c.ordinal()], 12));
            linearLayoutCard2.addView(label(elementSummary(c3559m), 14));
            linearLayoutCard2.addView(label(c3559m.f10583f ? AbstractC1387m.m2421h(new byte[]{11, ByteCompanionObject.MAX_VALUE, -27, -98, 76, 0, -81, -81, 11, 80, 21, -10, 46, -108, -82, -102, 11, 93, -28, -89, 76, 14, -82, -102, 10, 102, -28, -92, 76, 10, -81, -90, -5, Base64.padSymbol, -115, 6, 77, 53, -81, -88, 10, 124, -28, -90, 76, 9, -82, -103, 10, 111, -27, -104, 76, 8, 95, -54, 105, Base64.padSymbol, -115, -10, 40, 100, -54}, new byte[]{-37, -19, 53, 38, -100, -76, ByteCompanionObject.MAX_VALUE, 26}) : AbstractC1387m.m2421h(new byte[]{-77, 72, 118, 69, -16, -35, 59, -63, -77, 103, -122, 44, -94, -71, 85, -92, -40, 11, 42, 45, -102, -71, 85, 84, -77, 104, -122, 44, -96, -71, 91, -91, -30, 10, 28, 44, -96, -72, 96, -91, -31, 10, 24, 45, -100, 73, 59, -58, -77, 98, 118, 73, -16, -36}, new byte[]{99, -38, -90, -3, 32, 105, -21, 116}), 12));
            LinearLayout linearLayoutRow4 = row();
            View viewButton3 = button(AbstractC1387m.m2421h(new byte[]{62, 84, -35, 65, -101, -90, -23, -18, 63, 73, -35, 79, -102, -97, -23, -18, 63, 69, 45, 32, -57, -9, -125, -68, 91, 25, -79, 33, -1, -9, -123, -67, 108}, new byte[]{-18, -55, 13, -15, 74, 39, 56, 108}));
            View viewButton4 = button(AbstractC1387m.m2421h(new byte[]{-118, 91, 63, 33, 50, 98, -53, 121, -118, 64, 62, 23, 51, 94}, new byte[]{90, -8, -17, -107, -30, -46, 27, -62}));
            linearLayoutRow4.addView(viewButton3);
            linearLayoutRow4.addView(viewButton4);
            linearLayoutCard2.addView(linearLayoutRow4);
            this.body.addView(linearLayoutCard2);
            final int i20 = 0;
            viewButton3.setOnClickListener(new View.OnClickListener(this) { // from class: x0.f

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ WidgetBuilderFragment f10561c;

                {
                    this.f10561c = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i20) {
                        case 0:
                            this.f10561c.lambda$editor$29(c3559m, view);
                            break;
                        default:
                            this.f10561c.lambda$editor$30(c3559m, view);
                            break;
                    }
                }
            });
            viewButton4.setOnClickListener(new View.OnClickListener(this) { // from class: x0.f

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ WidgetBuilderFragment f10561c;

                {
                    this.f10561c = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i11) {
                        case 0:
                            this.f10561c.lambda$editor$29(c3559m, view);
                            break;
                        default:
                            this.f10561c.lambda$editor$30(c3559m, view);
                            break;
                    }
                }
            });
        }
        this.body.addView(label(AbstractC1387m.m2421h(new byte[]{-49, 69, -71, 34, -42, -57, 76, 26, -49, 96, -71, 32, -42, -58, 76, 23, -50, 82, 73, 69, -71, -86, 28, ByteCompanionObject.MAX_VALUE, -89, 13, -43, 69, -77, -85, 33, 126, -112, 12, -25, 68, -124, -86, 29, 126, -112, -3, -71, 47, -42, -58, 76, 17, -49, 98, -71, 47, -42, -59, 76, 22, 63, 31, -62, 69, -89, -85, 34, 126, -102, 12, -23, 69, -74, -85, 33, ByteCompanionObject.MAX_VALUE, -89, 12, -21, 68, -118, -71, 39, -127, 63, 13, -50, 68, -124, -85, 34, ByteCompanionObject.MAX_VALUE, -82, 12, -30, -75, -42, -60, 76, 26, -50, 93, -71, 32, -42, -57, 76, 26, -50, 92, -72, 23, -42, -61, 77, 45, -50, 81, 73, 69, -76, -85, 41, 126, -98, 12, -27, -75, -42, -55, 76, 23, -49, 105, -71, 35, -42, -50, 77, 45, 51, -3, -72, 22, -42, -49, 76, 26, -50, 93, -71, 35, -42, -61, 76, 29, -49, 109, -71, 44, -41, -7, 76, 26, 63, 13, -46, 68, -120, -85, 45, ByteCompanionObject.MAX_VALUE, -95, 13, -48, -75, -41, -10, 76, 20, -49, 104, -71, 41, -42, -50, 76, 18, -50, 95, 69, -75, -42, -52, 76, 31, -49, 110, -71, 43, -42, -64, 76, 17, -49, 111, -71, 43, -42, -63, -68, ByteCompanionObject.MAX_VALUE, -89, 13, -46, 69, -66, 91, 76, 21, -49, 96, -71, 43, -42, -60, 76, 21, -50, 94, 73, 68, -122, -85, 44, 126, -98, 13, -45, 68, -122, -86, 23, 126, -99, 13, -47, 68, -119, 87, -68, ByteCompanionObject.MAX_VALUE, -88, 13, -39, 68, -124, -85, 41, ByteCompanionObject.MAX_VALUE, -93, -3, -71, 42, -42, -50, 77, 47, -49, 104, -72, 23, -42, -53, 77, 38, -49, 101, -72, 23, -42, -50, -78}, new byte[]{31, -35, 105, -107, 6, 123, -100, -81}), 12));
        this.body = linearLayout;
    }

    private String elementSummary(C3559m c3559m) {
        EnumC3560n enumC3560n = c3559m.f10580c;
        if (enumC3560n == EnumC3560n.f10588b) {
            return AbstractC1387m.m2421h(new byte[]{-41, -21, -66, 18, 30, 11, 34, 95, -42, -12, -66, 26, 30, 8, -46, 13, -127, -28, 78}, new byte[]{7, 118, 110, -94, -50, -67, -14, -17}) + AbstractC1920f.m3004b(requireContext(), c3559m.f10581d).f5066i;
        }
        if (enumC3560n != EnumC3560n.f10589c) {
            return AbstractC1387m.m2421h(new byte[]{-21, -117, -113, 24, -38, -93, 28, 73, -22, -108, -113, 16, -38, -96, -20, 41, -122, -58, -17, -120, -38, -81, 28, 73, -22, -106, -114, 42, -38, -85, 29, 126, -21, -84, -114, 43, 42, -9, 74, 107, 27, -58, -19, 121, -127, -59, 118, 41, ByteCompanionObject.MIN_VALUE, -57, -47, 121, -115, -59, 121, 41, -122, -58, -31, -120, -24, -109, 94, -39, 10, 54, -67, 46, -104, 53, -2, -39, -39, -112, -51, -120, 57, 53, 46, ByteCompanionObject.MAX_VALUE, -87, 54, -113, 26, -37, -98, 28, 67, -21, -83, -114, 38, -37, -110, 28, 76, -21, -85, -113, 22}, new byte[]{59, 22, 95, -88, 10, 21, -52, -7});
        }
        return AbstractC1387m.m2421h(new byte[]{-30, -24, 93, 35, 108, 77, -73, -82, -29, -3, 93, 33, 109, 116, -73, -84, 18, -104, 11, 11, -100}, new byte[]{50, 122, -115, -103, -68, -10, 102, 32}) + AbstractC1920f.m3004b(requireContext(), c3559m.f10581d).f5066i + AbstractC1387m.m2421h(new byte[]{3, 79, 4, 96, -7, 11, 94, -97, -78, 78, 24, 96, -11, 11, 92, -98, -117, 78, 26, -111, -112, 93, 118, 111}, new byte[]{9, -97, -106, -79, 114, -37, -28, 79}) + AbstractC1920f.m3004b(requireContext(), c3559m.f10582e).f5066i;
    }

    private void heading(String str, String str2) {
        this.body.addView(label(str, 28));
        this.body.addView(label(str2, 14));
    }

    private EditText input(String str, String str2, boolean z9) {
        AppCompatEditText appCompatEditText = new AppCompatEditText(requireContext());
        appCompatEditText.setHint(str);
        appCompatEditText.setText(str2);
        appCompatEditText.setSingleLine();
        appCompatEditText.setTextColor(color(R.color.modern_text));
        appCompatEditText.setHintTextColor(color(R.color.modern_text_secondary));
        appCompatEditText.setTextSize(16.0f);
        if (z9) {
            appCompatEditText.setInputType(2);
        }
        return appCompatEditText;
    }

    private TextView label(String str, int i10) {
        TextView textView = new TextView(requireContext());
        textView.setText(str);
        textView.setTextSize(i10);
        textView.setTextColor(color(i10 >= 17 ? R.color.modern_text : R.color.modern_text_secondary));
        textView.setPadding(0, m1575dp(6), 0, m1575dp(6));
        if (i10 >= 17) {
            textView.setTypeface(Typeface.DEFAULT, 1);
        }
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editElement$33(C3559m c3559m, EditText editText, MaterialSwitch materialSwitch, Spinner spinner, Spinner spinner2, boolean z9, DialogInterface dialogInterface, int i10) {
        String strTrim = editText.getText().toString().trim();
        c3559m.f10579b = strTrim;
        if (strTrim.isEmpty()) {
            c3559m.f10579b = TYPES[c3559m.f10580c.ordinal()];
        }
        c3559m.f10583f = materialSwitch.isChecked();
        if (spinner != null) {
            c3559m.f10581d = AbstractC1920f.m3009g((C1919e) spinner.getSelectedItem());
        }
        if (spinner2 != null) {
            c3559m.f10582e = AbstractC1920f.m3009g((C1919e) spinner2.getSelectedItem());
        }
        if (z9) {
            this.current.f10614u.add(c3559m);
        }
        this.current.m5677b();
        editor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$10(View view) {
        persist();
        Toast.makeText(requireContext(), AbstractC1387m.m2421h(new byte[]{4, -2, 11, -21, -124, -124, -95, 46, 4, -39, 10, -47, 116, -31, -16, 72, 106, -67, 94, -126, -44, -32, -63, 72, 105, -67, 74, -125, -23}, new byte[]{-44, 108, -37, 83, 84, 48, 113, -104}), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$11(EditText editText) {
        this.current.f10595b = editText.getText().toString().trim();
        preview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$12(CompoundButton compoundButton, boolean z9) {
        this.current.f10596c = z9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$13(CompoundButton compoundButton, boolean z9) {
        C3561o c3561o = this.current;
        c3561o.f10598e = z9;
        c3561o.m5677b();
        preview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$14(CompoundButton compoundButton, boolean z9) {
        C3561o c3561o = this.current;
        c3561o.f10600g = z9;
        c3561o.f10611r = 0;
        c3561o.f10612s = 0;
        c3561o.m5677b();
        this.collapsedPreview = true;
        preview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$15(TextView textView, int i10) {
        this.current.f10605l = i10;
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2086t(new byte[]{-30, Base64.padSymbol, -49, -13, 59, 9, -22, 110, -30, 40, -50, -61, -53, 111, -70, 2, -126, 76, -98, -109, 81, 111, -70, 3, -71, 76, -99, -109, 85, 110, -119, 2, -116, -67, -49, -15, 59, 6, -22, 102, -30, 43, -49, -10, 58, 60, -22, 98, 18, 95, -88, 99}, new byte[]{50, -99, 31, 67, -21, -66, 58, -46}, sb, i10);
        sb.append(AbstractC1387m.m2421h(new byte[]{-57}, new byte[]{-30, 55, 121, -118, -122, -23, 104, -127}));
        textView.setText(sb.toString());
        if (this.current.f10597d) {
            this.collapsedPreview = false;
        }
        preview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$16(TextView textView, int i10) {
        this.current.f10606m = i10;
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2086t(new byte[]{-106, -42, -105, -29, 87, 35, -85, -21, -106, -61, -106, -45, -89, 69, -6, -121, -12, -89, -42, -126, 7, 68, -58, -122, -59, -89, -59, -125, 57, 68, -56, -121, -8, 86, -105, -31, 87, 44, -85, -29, -106, -64, -105, -26, 86, 22, -85, -25, 102, -76, -16, 115}, new byte[]{70, 118, 71, 83, -121, -108, 123, 87}, sb, i10);
        sb.append(AbstractC1387m.m2421h(new byte[]{23}, new byte[]{50, -6, 47, -105, 5, 87, -97, -21}));
        textView.setText(sb.toString());
        this.collapsedPreview = true;
        preview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$17(TextView textView, int i10) {
        this.current.f10603j = i10;
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2086t(new byte[]{117, 105, 119, -88, -125, 8, 19, -43, 116, 118, 118, -104, -126, 49, 19, -33, 117, 72, 119, -87, -126, 52, 18, -18, -123, 52, 17, 8}, new byte[]{-91, -10, -90, 40, 83, -74, -61, 98}, sb, i10);
        sb.append(AbstractC1387m.m2421h(new byte[]{-42}, new byte[]{-13, 106, -1, 107, 20, 9, 94, 69}));
        textView.setText(sb.toString());
        C3549c c3549c = this.previewBoard;
        if (c3549c != null) {
            c3549c.setAlpha(1.0f - (i10 / 100.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$18(TextView textView, int i10) {
        this.current.f10604k = i10;
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2086t(new byte[]{125, 78, 98, 15, 92, -118, 38, 71, 124, 81, 99, 63, 93, -77, 38, 77, 125, 111, 98, 14, 93, -74, 39, 124, -115, 0, 55, 95, 50, -28, 75, 32, 29, -15, 99, 49, 92, -114, 38, 77, 125, 97, -109, 77, 59, 20}, new byte[]{-83, -47, -77, -113, -116, 52, -10, -16}, sb, i10);
        sb.append(AbstractC1387m.m2421h(new byte[]{-106}, new byte[]{-77, 55, -45, -58, 45, 94, -36, 83}));
        textView.setText(sb.toString());
        C3549c c3549c = this.previewBoard;
        if (c3549c != null) {
            c3549c.m5672s();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$19(List list, int i10) {
        this.current.f10601h = ((Integer) list.get(i10)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$20(TextView textView, int i10) {
        this.current.f10602i = i10;
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2086t(new byte[]{-49, -124, -106, 4, 57, -15, -29, 45, -49, -104, -105, 53, 56, -58, -29, 33, 63, -12, -63, 102, 92, -107, -78, 125, -86, -11, -15, -106, 43, -13, 18}, new byte[]{31, 37, 70, -74, -23, 68, 50, -83}, sb, i10);
        sb.append(AbstractC1387m.m2421h(new byte[]{107, 113, 81, -33, 14, -85, -18, 51}, new byte[]{75, -96, -48, 15, -69, 123, 84, 29}));
        textView.setText(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$21(MaterialSwitch materialSwitch, SeekBar seekBar, TextView textView) {
        materialSwitch.setEnabled(this.current.f10597d);
        materialSwitch.setAlpha(this.current.f10597d ? 1.0f : 0.5f);
        C3561o c3561o = this.current;
        boolean z9 = c3561o.f10597d && c3561o.f10599f;
        seekBar.setEnabled(z9);
        seekBar.setAlpha(z9 ? 1.0f : 0.5f);
        textView.setAlpha(z9 ? 1.0f : 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$22(Runnable runnable, CompoundButton compoundButton, boolean z9) {
        this.current.f10599f = z9;
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$23(Runnable runnable, CompoundButton compoundButton, boolean z9) {
        this.current.f10597d = !z9;
        if (z9) {
            this.collapsedPreview = true;
        }
        runnable.run();
        preview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$24(View view) {
        this.collapsedPreview = false;
        preview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$25(View view) {
        this.collapsedPreview = true;
        preview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$editor$26(View view) {
        int i10;
        int iMax;
        int i11;
        boolean z9;
        int i12;
        int iMax2;
        int size;
        int i13;
        int i14;
        boolean z10;
        C3561o c3561o = this.current;
        boolean z11 = this.collapsedPreview;
        ArrayList arrayList = c3561o.f10614u;
        int i15 = NNTPReply.AUTHENTICATION_REQUIRED;
        int iMax3 = 88;
        if (z11) {
            ArrayList arrayList2 = new ArrayList();
            int size2 = arrayList.size();
            int i16 = 0;
            int iMax4 = 76;
            while (i16 < size2) {
                Object obj = arrayList.get(i16);
                i16++;
                C3559m c3559m = (C3559m) obj;
                if (c3559m.f10583f) {
                    arrayList2.add(c3559m);
                    iMax3 = Math.max(iMax3, c3559m.m5674b());
                    iMax4 = Math.max(iMax4, c3559m.m5673a());
                }
            }
            if (c3561o.f10600g) {
                i15 = 320;
            }
            while (true) {
                i12 = iMax3 + 12;
                iMax2 = Math.max(1, (i15 - 20) / i12);
                size = ((arrayList2.size() + iMax2) - 1) / iMax2;
                i13 = (size + 1) / 2;
                if (!c3561o.f10597d) {
                    i14 = 32;
                    if (size != 0) {
                        i14 = 32 + ((size - 1) * 12) + (size * iMax4);
                    }
                } else if (i13 == 0) {
                    i14 = 96;
                } else {
                    i14 = (((i13 - 1) * 12) + (i13 * iMax4) + 60) * 2;
                }
                z10 = c3561o.f10600g;
                if (!z10 || i14 <= i15) {
                    break;
                } else {
                    i15 += 8;
                }
            }
            if (z10) {
                c3561o.f10611r = i15;
            } else {
                c3561o.f10612s = Math.max(240, i14);
            }
            int iM5678c = c3561o.m5678c(false);
            c3561o.f10607n = (i15 - 64) / 2;
            int i17 = (iM5678c - 64) / 2;
            c3561o.f10608o = i17;
            boolean z12 = c3561o.f10597d;
            c3561o.f10613t = z12;
            int iMax5 = z12 ? ((i17 - 12) - (i13 * iMax4)) - (Math.max(0, i13 - 1) * 12) : ((iM5678c - (size * iMax4)) - (Math.max(0, size - 1) * 12)) / 2;
            for (int i18 = 0; i18 < arrayList2.size(); i18++) {
                int i19 = i18 / iMax2;
                int iMin = Math.min(iMax2, arrayList2.size() - (i19 * iMax2));
                C3559m c3559m2 = (C3559m) arrayList2.get(i18);
                c3559m2.f10586i = ((iMax3 - c3559m2.m5674b()) / 2) + ((i18 % iMax2) * i12) + (((i15 - (iMin * iMax3)) - ((iMin - 1) * 12)) / 2);
                c3559m2.f10587j = ((iMax4 - c3559m2.m5673a()) / 2) + ((!c3561o.f10597d || i19 < i13) ? ((iMax4 + 12) * i19) + iMax5 : ((iMax4 + 12) * (i19 - i13)) + c3561o.f10608o + 76);
            }
        } else {
            int size3 = arrayList.size();
            int iMax6 = 76;
            int i20 = 0;
            while (i20 < size3) {
                Object obj2 = arrayList.get(i20);
                i20++;
                C3559m c3559m3 = (C3559m) obj2;
                iMax3 = Math.max(iMax3, c3559m3.m5674b());
                iMax6 = Math.max(iMax6, c3559m3.m5673a());
            }
            if (c3561o.f10598e) {
                i15 = 320;
            }
            while (true) {
                i10 = iMax3 + 12;
                iMax = Math.max(1, (i15 - 20) / i10);
                int size4 = ((arrayList.size() + iMax) - 1) / iMax;
                i11 = size4 == 0 ? 68 : ((size4 - 1) * 12) + (size4 * iMax6) + 52 + 16;
                z9 = c3561o.f10598e;
                if (!z9 || i11 <= i15) {
                    break;
                } else {
                    i15 += 8;
                }
            }
            if (z9) {
                c3561o.f10609p = i15;
            } else {
                c3561o.f10610q = Math.max(176, i11);
            }
            for (int i21 = 0; i21 < arrayList.size(); i21++) {
                int i22 = i21 / iMax;
                int iMin2 = Math.min(iMax, arrayList.size() - (i22 * iMax));
                int i23 = ((i15 - (iMin2 * iMax3)) - ((iMin2 - 1) * 12)) / 2;
                C3559m c3559m4 = (C3559m) arrayList.get(i21);
                c3559m4.f10584g = ((iMax3 - c3559m4.m5674b()) / 2) + ((i21 % iMax) * i10) + i23;
                c3559m4.f10585h = ((iMax6 + 12) * i22) + 52;
            }
        }
        preview();
        Toast.makeText(requireContext(), (this.collapsedPreview && this.current.f10597d) ? AbstractC1387m.m2421h(new byte[]{-84, -13, 69, -22, 76, 86, 6, -12, -83, -40, 69, -31, -68, 53, 86, -104, -13, -125, 33, -123, 23, -56, -10, -103, -58, -125, 40, -124, 34, 52, 105, -103, -58, -125, 37, 116, 76, 90, 7, -53, -84, -23, 68, -44, 77, 111, 7, -53, -84, -21, 68, -37, -68, 52, 105, -103, -62, 115, 68, -46, 76, 81, 6, -12, -83, -47, 68, -44, 77, 103}, new byte[]{124, 83, -107, 84, -100, -28, -42, 73}) : AbstractC1387m.m2421h(new byte[]{-44, -61, 76, 116, 70, -55, -79, -44, -44, -37, 76, 114, 71, -2, -80, -29, 36, -66, 46, 30, 29, -83, -31, -72, -70, -66, 46, 31, 43, -84, -44, -72, -71, -65, 23, -17, 70, -50, 65, -71, -124, -65, 19, 31, 34, -83, -22}, new byte[]{4, 110, -100, -49, -106, 124, 97, 104}), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$27(DialogInterface dialogInterface, int i10) {
        C3559m c3559m = new C3559m();
        c3559m.f10580c = EnumC3560n.values()[i10];
        c3559m.f10579b = TYPES[i10];
        c3559m.f10584g = ((this.current.f10614u.size() % 3) * 144) + 16;
        c3559m.f10585h = 52;
        c3559m.f10586i = ((this.current.f10614u.size() % 2) * 160) + 8;
        c3559m.f10587j = (((this.current.f10614u.size() / 2) % 2) * 144) + 8;
        editElement(c3559m, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$28(View view) {
        dialogBuilder().setTitle(AbstractC1387m.m2421h(new byte[]{111, -68, 40, 110, 126, 77, -89, 115, 50, -50, 67, 6, 27, 34, 59, 114, 10, -50, 69, 7, 44, 34, 55}, new byte[]{-65, 30, -8, -42, -82, -14, -121, -94})).setAdapter(popupItems(TYPES), new DialogInterfaceOnClickListenerC0912h(4, this)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$29(C3559m c3559m, View view) {
        editElement(c3559m, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$30(C3559m c3559m, View view) {
        this.current.f10614u.remove(c3559m);
        editor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editor$9(View view) {
        this.current = null;
        library();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$library$2(View view) {
        requireActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$library$3(View view) {
        C3561o c3561o = new C3561o();
        this.current = c3561o;
        c3561o.f10595b = AbstractC1387m.m2421h(new byte[]{84, 18, -78, 104, 25, -57, -103, 123, 84, 53, -77, 82, -23}, new byte[]{-124, ByteCompanionObject.MIN_VALUE, 98, -48, -55, 115, 73, -51}) + (this.designs.size() + 1);
        this.designs.add(this.current);
        this.collapsedPreview = false;
        editor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$library$4(C3561o c3561o, CompoundButton compoundButton, boolean z9) {
        c3561o.f10596c = z9;
        persist();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$library$5(C3561o c3561o, View view) {
        this.current = c3561o;
        this.collapsedPreview = false;
        editor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$library$6(C3561o c3561o, View view) {
        try {
            C3561o c3561oM5676e = C3561o.m5676e(c3561o.m5679d());
            c3561oM5676e.f10594a = UUID.randomUUID().toString();
            c3561oM5676e.f10595b += AbstractC1387m.m2421h(new byte[]{105, 26, -35, 93, -77, 78, 56, -73, -103, 103, -70, -59, -78, 123}, new byte[]{73, -40, 106, 125, 99, -12, -24, 9});
            this.designs.add(c3561oM5676e);
            persist();
            library();
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$library$7(C3561o c3561o, DialogInterface dialogInterface, int i10) {
        this.designs.remove(c3561o);
        persist();
        library();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$library$8(C3561o c3561o, View view) {
        dialogBuilder().setTitle(AbstractC1387m.m2421h(new byte[]{-86, 7, -6, -40, 120, -115, -47, 0, -86, 28, -5, -18, 121, -79, 33, 121, -47}, new byte[]{122, -92, 42, 108, -88, Base64.padSymbol, 1, -69}) + c3561o.f10595b + AbstractC1387m.m2421h(new byte[]{-109, 70, 22}, new byte[]{81, -3, 41, -7, 64, 82, 111, 123})).setNegativeButton(AbstractC1387m.m2421h(new byte[]{96, 43, 105, 85, 120, 12, 125, -44, 96, 8, 104, 103}, new byte[]{-80, -75, -72, -41, -88, -80, -83, 97}), (DialogInterface.OnClickListener) null).setPositiveButton(AbstractC1387m.m2421h(new byte[]{108, -6, 66, -99, 39, -25, 49, -1, 108, -31, 67, -85, 38, -37}, new byte[]{-68, 89, -110, 41, -9, 87, -31, 68}), new DialogInterfaceOnClickListenerC1348e0(10, this, c3561o)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateView$0(List list) {
        this.actions.clear();
        this.actions.addAll(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateView$1(Context context) {
        new Handler(Looper.getMainLooper()).post(new RunnableC3180x0(13, this, new C1917c(context).m2990e()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preview$31(C3559m c3559m) {
        editElement(c3559m, false);
    }

    private void library() {
        this.previewHost = null;
        this.previewBoard = null;
        this.body.removeAllViews();
        heading(AbstractC1387m.m2421h(new byte[]{38, 102, 2, -69, -45, 96, 97, 23, 39, 126, 3, -123, -46, 94, 96, 44, 39, 126, 2, -69, -46, 93, -112, 70, 68, 44, 106, -43, -73, 13, 6, 70, 67, 45, 80, -43, -67, 13, 2}, new byte[]{-10, -4, -46, 5, 3, -35, -80, -106}), AbstractC1387m.m2421h(new byte[]{-83, 120, -44, -112, 43, 14, 101, 104, 93, 58, -80, -16, 79, 86, 12, 1, -4, 59, -122, -16, 72, 86, 13, 1, -14, -54, -26, -96, 110, -90, 101, 109, -83, 90, 36, -16, 71, 87, 54, 0, -53, 58, -71, -16, 68, 86, 9, -16, -84, 103, -44, -102, 43, 6, 101, 96, -83, 87, -44, -107}, new byte[]{125, -22, 4, 32, -6, -122, -75, -48}));
        LinearLayout linearLayoutRow = row();
        Button button = button(AbstractC1387m.m2421h(new byte[]{-56, -26, 27, 11, -10, 48, 126, 58, -6, -47, 114, -101, -10, 25}, new byte[]{42, 102, -94, 43, 38, -83, -82, -118}));
        Button button2 = button(AbstractC1387m.m2421h(new byte[]{-54, 64, -80, -124, -7, -112, -97, -13, -11, 75, -21, 16, -7, -127, -98, -49, -12, 112, 27, 116, -101, -31, -9, -99, -111, 44, -115, 116, -100, -32, -51}, new byte[]{37, -4, 59, -92, 41, 49, 79, 77}));
        linearLayoutRow.addView(button);
        linearLayoutRow.addView(button2);
        this.body.addView(linearLayoutRow);
        button.setOnClickListener(new ViewOnClickListenerC3551e(this, 4));
        button2.setOnClickListener(new ViewOnClickListenerC3551e(this, 5));
        if (this.designs.isEmpty()) {
            LinearLayout linearLayoutCard = card();
            linearLayoutCard.addView(label(AbstractC1387m.m2421h(new byte[]{-4, -68, 75}, new byte[]{30, 43, -61, 95, 63, 46, -101, -73}), 40));
            linearLayoutCard.addView(label(AbstractC1387m.m2421h(new byte[]{-3, 0, 120, 24, -41, 120, 56, 91, -4, 33, 120, 30, -42, 75, 56, 91, 13, 112, 41, 118, -75, 25, 86, 63, -68, -127, 121, 37, -41, 118, 57, 110, -3, 17, 120, 20, -41, 114, 56, 91, -3, 28, 120, 30, -41, 124}, new byte[]{45, -95, -88, -90, 7, -55, -24, -18}), 20));
            linearLayoutCard.addView(label(AbstractC1387m.m2421h(new byte[]{-60, -29, 11, 42, -11, 37, -85, -53, -60, -61, 11, 47, 9, -69, -85, -53, -60, -52, 10, 23, -11, 46, -85, -50, -60, -62, 10, 25, -12, 28, -85, -60, -59, -5, 11, 34, -11, 32, -85, -52, 52, -87, 99, -73, -12, 25, -86, -12, -60, -63, -5, 70, -90, 74, -5, -92, -86, -87, 105, 71, -104, 74, -12, 84, -59, -8, 11, 47, -11, 47, -85, -63, -60, -60, 11, 47, -11, 34, 85, 84, -60, -25, 10, 21, -11, 47, -85, -63, -60, -62, 10, 27, -11, 38, -85, -54, -60, -52, -5, 70, -91, 75, -53, -91, -107, -87, 100, 71, -101, 75, -64, -92, -86, -87, 109, 71, -112, 75, -58, -92, -84, -87, 110, -73, -11, 47, -85, -49, -59, -10, -5, 70, -91, 75, -53, -91, -107, -87, 97, 70, -91, 74, -16, -91, -106, -87, 101, 71, -106, 75, -59, 84, -60, -63, -5, 70, -92, 75, -55, -91, -123, -88, 91, 71, -104, 74, -8, -91, -106, -87, 101, 71, -106, 75, -59, 84, -60, -53, 11, 47, -11, 47, -85, -60, 58}, new byte[]{20, 121, -37, -105, 37, -101, 123, 116}), 14));
            this.body.addView(linearLayoutCard);
        }
        for (final C3561o c3561o : this.designs) {
            LinearLayout linearLayoutCard2 = card();
            linearLayoutCard2.addView(label(c3561o.f10595b, 20));
            StringBuilder sb = new StringBuilder();
            sb.append(c3561o.f10614u.size());
            sb.append(AbstractC1387m.m2421h(new byte[]{-37, 9, -79, -89, -100, -50, 60, 77, 71, 8, -119, -89, -102, -49, 11, 77, 69, 8, -114, 87, 7, -36, 62, -67, -37}, new byte[]{-5, -40, 60, 119, 39, 30, -119, -99}));
            sb.append(c3561o.f10598e ? AbstractC1387m.m2421h(new byte[]{69, 9, -14, 36, -105, 121, -2, 86, 68, 19, -14, 38, -106, 75}, new byte[]{-107, -109, 34, -106, 71, -55, 46, -30}) : AbstractC1387m.m2421h(new byte[]{-84, -7, -69, 75, 64, -87, -110, 82, -84, -35, -70, 119}, new byte[]{124, 102, 107, -5, -112, 20, 66, -25}));
            sb.append(AbstractC1387m.m2421h(new byte[]{-66, -111, -34, -39, 81, -127, -97, 80, 78, 11, -51, -18, -95, 17, -97, 64, -66}, new byte[]{-98, -79, 28, 110, 113, -95, 79, -3}));
            sb.append(c3561o.f10601h);
            linearLayoutCard2.addView(label(sb.toString(), 12));
            MaterialSwitch materialSwitchCheck = check(AbstractC1387m.m2421h(new byte[]{17, -62, 120, -11, 94, -14, 83, 69, 17, -27, 121, -49, -82, -106, 49, 35, 123, ByteCompanionObject.MIN_VALUE, 19, -100, 0, -105, 4, 34, 80, ByteCompanionObject.MIN_VALUE, 21}, new byte[]{-63, 80, -88, 77, -114, 70, -125, -13}), c3561o.f10596c);
            materialSwitchCheck.setOnCheckedChangeListener(new C1341c3(5, this, c3561o));
            linearLayoutCard2.addView(materialSwitchCheck);
            LinearLayout linearLayoutRow2 = row();
            Button button3 = button(AbstractC1387m.m2421h(new byte[]{5, -88, Base64.padSymbol, -94, 22, 58, 29, 49, 4, -75, Base64.padSymbol, -84, 23, 3, 29, 49, 4, -71}, new byte[]{-43, 53, -19, 18, -57, -69, -52, -77}));
            Button button4 = button(AbstractC1387m.m2421h(new byte[]{-106, -31, -4, 12, -35, 88, -78, 41, -105, -12}, new byte[]{70, 123, 44, -78, 13, -25, 98, -111}));
            Button button5 = button(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, 112, 103, 7, -66, 110, -87, 109, ByteCompanionObject.MAX_VALUE, 107, 102, 49, -65, 82}, new byte[]{-81, -45, -73, -77, 110, -34, 121, -42}));
            linearLayoutRow2.addView(button3);
            linearLayoutRow2.addView(button4);
            linearLayoutRow2.addView(button5);
            linearLayoutCard2.addView(linearLayoutRow2);
            this.body.addView(linearLayoutCard2);
            final int i10 = 0;
            button3.setOnClickListener(new View.OnClickListener(this) { // from class: x0.i

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ WidgetBuilderFragment f10569c;

                {
                    this.f10569c = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i10) {
                        case 0:
                            this.f10569c.lambda$library$5(c3561o, view);
                            break;
                        case 1:
                            this.f10569c.lambda$library$6(c3561o, view);
                            break;
                        default:
                            this.f10569c.lambda$library$8(c3561o, view);
                            break;
                    }
                }
            });
            final int i11 = 1;
            button4.setOnClickListener(new View.OnClickListener(this) { // from class: x0.i

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ WidgetBuilderFragment f10569c;

                {
                    this.f10569c = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i11) {
                        case 0:
                            this.f10569c.lambda$library$5(c3561o, view);
                            break;
                        case 1:
                            this.f10569c.lambda$library$6(c3561o, view);
                            break;
                        default:
                            this.f10569c.lambda$library$8(c3561o, view);
                            break;
                    }
                }
            });
            final int i12 = 2;
            button5.setOnClickListener(new View.OnClickListener(this) { // from class: x0.i

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ WidgetBuilderFragment f10569c;

                {
                    this.f10569c = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i12) {
                        case 0:
                            this.f10569c.lambda$library$5(c3561o, view);
                            break;
                        case 1:
                            this.f10569c.lambda$library$6(c3561o, view);
                            break;
                        default:
                            this.f10569c.lambda$library$8(c3561o, view);
                            break;
                    }
                }
            });
        }
    }

    private void persist() {
        List<C3561o> list = this.designs;
        String str = AbstractC3562p.f10615a;
        JSONArray jSONArray = new JSONArray();
        try {
            for (C3561o c3561o : list) {
                c3561o.m5677b();
                jSONArray.put(c3561o.m5679d());
            }
            C1652b.m2745o().saveString(AbstractC3562p.f10615a, jSONArray.toString());
            Context contextRequireContext = requireContext();
            AllWidgetServices allWidgetServices = AllWidgetServices.f1208g;
            if (allWidgetServices == null) {
                AllWidgetServices.m1384c(contextRequireContext);
            } else {
                allWidgetServices.f1211b.post(new RunnableC1337c(allWidgetServices, 0));
            }
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    private Context popupContext() {
        return new ContextThemeWrapper(requireContext(), R.style.Theme_JCarTools_WidgetBuilderPopup);
    }

    private ArrayAdapter<String> popupItems(String[] strArr) {
        return new C3557k(this, popupContext(), strArr);
    }

    private void preview() {
        C3561o c3561o;
        LinearLayout linearLayout = this.previewHost;
        if (linearLayout == null || (c3561o = this.current) == null) {
            return;
        }
        if (!c3561o.f10597d) {
            this.collapsedPreview = true;
        }
        linearLayout.removeAllViews();
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(requireContext());
        C3549c c3549c = new C3549c(requireContext(), this.current, true, !this.collapsedPreview);
        this.previewBoard = c3549c;
        c3549c.setElementEditor(new C2806b(4, this));
        Button button = this.openTab;
        int i10 = 8;
        if (button != null) {
            button.setEnabled(this.current.f10597d);
            this.closedTab.setText(this.current.f10597d ? AbstractC1387m.m2421h(new byte[]{-100, -22, 27, 80, -57, -41, 56, -121, -100, -10, 26, 97, -57, -60, 56, -116, -100, -14}, new byte[]{76, 75, -53, -30, 22, 70, -23, 7}) : AbstractC1387m.m2421h(new byte[]{-12, -71, 103, -119, -52, 13, -5, -60, -98, -8, 10, -20, -94, 106, 100, -60, -98, -8, 15, 28, -34, 17, -16, -42, -97}, new byte[]{36, 40, -73, 60, 28, -70, -37, 20}));
            tab(this.openTab, !this.collapsedPreview);
            tab(this.closedTab, this.collapsedPreview);
            this.closedTab.setEnabled(true);
        }
        Button button2 = this.alignmentButton;
        if (button2 != null) {
            button2.setEnabled(true);
            this.alignmentButton.setAlpha(1.0f);
        }
        horizontalScrollView.addView(c3549c, new ViewGroup.LayoutParams(c3549c.m5669p(c3549c.m5659c()), c3549c.m5669p(c3549c.m5658b())));
        this.previewHost.addView(horizontalScrollView);
        this.previewHost.addView(label(this.collapsedPreview ? AbstractC1387m.m2421h(new byte[]{-9, 60, -76, 5, -3, -118, -118, 12, -9, 32, -75, 52, -3, -103, -118, 7, -9, 36, 68, 103, -98, -53, -29, 92, -109}, new byte[]{39, -99, 100, -73, 44, 27, 91, -116}) : AbstractC1387m.m2421h(new byte[]{-59, 108, 20, 106, 65, 85, 40, 111, -60, 76, 21, 81, 65, 86, 41, 94, -59, 117, -28, 10, 34, 4, 64, 5, -95}, new byte[]{21, -52, -60, -38, -112, -44, -8, -43}), 12));
        if (this.collapsedPreview && this.current.f10614u.stream().noneMatch(new C1762k(i10))) {
            this.previewHost.addView(label((this.current.f10597d ? AbstractC1387m.m2421h(new byte[]{41, -123, -43, 78, -99, -93, 84, 21, 41, -108, -44, 122, 109, -54, 59, 67, 120, -11, -121, 43, -3, -53, 20, 67, 123, -11, -124, 42, -62, 58, 84, 16, 41, -102, -43, 64, -100, -106, 85, 40, 41, -102, 37, 43, -9, -54, 56, 66, 71, -12, -70, 43, -9, -54, 53, -78, 40, -92, -43, 75, -100, -101, 85, 40, 40, -92, -44, 112, -100, -104, 85, 42, 40, -85, 43}, new byte[]{-7, 36, 5, -5, 77, 26, -123, -110}) : AbstractC1387m.m2421h(new byte[]{-39, -125, 44, -24, -27, -63, -67, -109, -39, -110, 45, -36, 21, -88, -34, -60, -79, -14, 72, -115, -115, -88, -48, -59, -126, -13, 121, 125, -28, -11, -68, -81, -39, -105, 44, -31, -27, -51, -68, -87, -40, -96, 44, -29, -27, -54, 76, -60, -76, -14, 73, -116, -73, 86}, new byte[]{9, 34, -4, 93, 53, 120, 108, 20})).concat(AbstractC1387m.m2421h(new byte[]{-30, -38, 30, -127, 23, -21, -16, 49, 19, -117, 93, 35, 22, -42, -16, 63, 18, -77, 92, 27, 23, -26, -15, 4, -30, -38, 49, 112, 68, -122, -106, 81, ByteCompanionObject.MAX_VALUE, -38, 50, 113, 116, -122, -98, -95, 19, -121, 92, 26, 23, -29, -16, Base64.padSymbol, 18, -65, 92, 28, 22, -44, -16, 49, -30, -38, 62, 113, 125, -122, -101, 80, 76, -37, 11, 113, ByteCompanionObject.MAX_VALUE, -121, -94, 81, 119, 42, 78, 10, 23, -56, -15, 0, 19, -120, 92, 17, 23, -28, -16, 57, 19, -120, 93, 45, -25, -122, -110, 81, 122, -38, 56, 113, ByteCompanionObject.MAX_VALUE, -122, -100, 80, 73, -38, 48, -127, 23, -23, -15, 1, 18, -78, -84, 112, 70, -122, -110, 81, 124, -37, 12, 113, 119, -121, -89, 81, 122, -38, 62, 113, 119, -122, -99, 81, 122, -38, 52, 99, 124, 120}, new byte[]{-62, 10, -116, -95, -57, 86, 32, -127})), 13));
        }
    }

    private LinearLayout row() {
        LinearLayout linearLayout = new LinearLayout(requireContext());
        linearLayout.setGravity(16);
        return linearLayout;
    }

    private void select(Spinner spinner, IntConsumer intConsumer) {
        spinner.setOnItemSelectedListener(new C1349e1(5, intConsumer));
    }

    private void show() {
        if (this.current == null) {
            library();
        } else {
            editor();
        }
    }

    private SeekBar slider(String str, int i10, int i11, int i12, IntConsumer intConsumer) {
        AppCompatSeekBar appCompatSeekBar = new AppCompatSeekBar(requireContext());
        appCompatSeekBar.setContentDescription(str);
        appCompatSeekBar.setMax(i11 - i10);
        appCompatSeekBar.setProgress(i12 - i10);
        appCompatSeekBar.setProgressTintList(ColorStateList.valueOf(color(R.color.modern_primary)));
        appCompatSeekBar.setProgressBackgroundTintList(ColorStateList.valueOf(color(R.color.modern_divider)));
        appCompatSeekBar.setThumbTintList(ColorStateList.valueOf(color(R.color.modern_primary)));
        appCompatSeekBar.setSplitTrack(false);
        appCompatSeekBar.setPadding(m1575dp(10), 0, m1575dp(10), 0);
        appCompatSeekBar.setLayoutParams(new LinearLayout.LayoutParams(-1, m1575dp(44)));
        appCompatSeekBar.setOnSeekBarChangeListener(new C3558l(intConsumer, i10));
        return appCompatSeekBar;
    }

    private Spinner spinner(List<String> list) {
        Spinner spinnerThemedSpinner = themedSpinner();
        spinnerThemedSpinner.setAdapter((SpinnerAdapter) new C3557k(this, spinnerThemedSpinner.getContext(), list));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(color(R.color.modern_surface_high));
        gradientDrawable.setCornerRadius(m1575dp(12));
        spinnerThemedSpinner.setBackground(gradientDrawable);
        spinnerThemedSpinner.setPadding(m1575dp(8), 0, m1575dp(8), 0);
        return spinnerThemedSpinner;
    }

    private void tab(Button button, boolean z9) {
        button.setAlpha(z9 ? 1.0f : 0.55f);
        button.setSelected(z9);
    }

    private Spinner themedSpinner() {
        Context contextPopupContext = popupContext();
        return new AppCompatSpinner(contextPopupContext, null, C0148R.attr.spinnerStyle, 0, contextPopupContext.getTheme());
    }

    private void watch(EditText editText, Runnable runnable) {
        editText.addTextChangedListener(new C1329a1(4, runnable));
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        this.designs = AbstractC3562p.m5681a();
        if (bundle != null) {
            try {
                JSONArray jSONArray = new JSONArray(bundle.getString(AbstractC1387m.m2421h(new byte[]{17, 83, 22, 54, 50, -5, 83}, new byte[]{117, 54, 101, 95, 85, -107, 32, 12}), AbstractC1387m.m2421h(new byte[]{28, -118}, new byte[]{71, -41, -32, -124, -24, 21, -123, 38})));
                this.designs.clear();
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    this.designs.add(C3561o.m5676e(jSONArray.getJSONObject(i10)));
                }
            } catch (Exception unused) {
                this.designs = AbstractC3562p.m5681a();
            }
            for (C3561o c3561o : this.designs) {
                if (c3561o.f10594a.equals(bundle.getString(AbstractC1387m.m2421h(new byte[]{24, -19, -56, 24, -94, -62, -91}, new byte[]{123, -104, -70, 106, -57, -84, -47, -43})))) {
                    this.current = c3561o;
                }
            }
            this.collapsedPreview = bundle.getBoolean(AbstractC1387m.m2421h(new byte[]{18, 40, -33, 6, -94, 85, -111, 35, 21}, new byte[]{113, 71, -77, 106, -61, 37, -30, 70}));
        }
        ScrollView scrollView = new ScrollView(requireContext());
        scrollView.setFillViewport(true);
        LinearLayout linearLayoutColumn = column();
        this.body = linearLayoutColumn;
        linearLayoutColumn.setPadding(m1575dp(24), m1575dp(20), m1575dp(24), m1575dp(24));
        this.body.setBackgroundColor(color(R.color.modern_background));
        scrollView.addView(this.body);
        show();
        Context applicationContext = requireContext().getApplicationContext();
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        executorServiceNewSingleThreadExecutor.execute(new RunnableC3180x0(14, this, applicationContext));
        executorServiceNewSingleThreadExecutor.shutdown();
        return scrollView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.body = null;
        this.previewHost = null;
        this.previewBoard = null;
        this.openTab = null;
        this.closedTab = null;
        this.alignmentButton = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        JSONArray jSONArray = new JSONArray();
        try {
            Iterator<C3561o> it = this.designs.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().m5679d());
            }
        } catch (Exception unused) {
        }
        bundle.putString(AbstractC1387m.m2421h(new byte[]{-48, 56, 5, -67, 35, 69, -46}, new byte[]{-76, 93, 118, -44, 68, 43, -95, -66}), jSONArray.toString());
        if (this.current != null) {
            bundle.putString(AbstractC1387m.m2421h(new byte[]{36, 116, -74, -115, 58, -12, 13}, new byte[]{71, 1, -60, -1, 95, -102, 121, 88}), this.current.f10594a);
        }
        bundle.putBoolean(AbstractC1387m.m2421h(new byte[]{-75, 59, 6, -11, 17, 89, 86, 64, -78}, new byte[]{-42, 84, 106, -103, 112, 41, 37, 37}), this.collapsedPreview);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        AllWidgetServices.f1210i = true;
        AllWidgetServices allWidgetServices = AllWidgetServices.f1208g;
        if (allWidgetServices == null) {
            return;
        }
        allWidgetServices.f1211b.post(new RunnableC1337c(allWidgetServices, 1));
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        AllWidgetServices.f1210i = false;
        AllWidgetServices allWidgetServices = AllWidgetServices.f1208g;
        if (allWidgetServices != null) {
            allWidgetServices.f1211b.post(new RunnableC1337c(allWidgetServices, 1));
        }
        super.onStop();
    }
}
