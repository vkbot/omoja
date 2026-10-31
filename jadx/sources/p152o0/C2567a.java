package p152o0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.R;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p047e0.C1341c3;
import p078h0.C1652b;
import p121l0.C2195b;

/* JADX INFO: renamed from: o0.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2567a extends C2195b {

    /* JADX INFO: renamed from: b */
    public C2571e f7105b;

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i10;
        int i11;
        boolean z9 = false;
        View viewInflate = layoutInflater.inflate(requireActivity() instanceof ModernMainActivity ? R.layout.modern_gesture_zones : R.layout.activity_gesture_zones, viewGroup, false);
        this.f7105b = new C2571e(requireContext());
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.zoneContainer);
        EnumC2572f[] enumC2572fArrValues = EnumC2572f.values();
        int length = enumC2572fArrValues.length;
        int i12 = 0;
        while (i12 < length) {
            EnumC2572f enumC2572f = enumC2572fArrValues[i12];
            View viewInflate2 = LayoutInflater.from(requireActivity()).inflate(requireActivity() instanceof ModernMainActivity ? R.layout.modern_item_zone_row : R.layout.item_zone_row, linearLayout, z9);
            Spinner spinner = (Spinner) viewInflate2.findViewById(R.id.zoneSpinner);
            CheckBox checkBox = (CheckBox) viewInflate2.findViewById(R.id.zoneCheckBox);
            ImageView imageView = (ImageView) viewInflate2.findViewById(R.id.imageZone);
            int iOrdinal = enumC2572f.ordinal();
            int i13 = 3;
            if (iOrdinal == 0) {
                i10 = R.drawable.ic_gesture_zone_left_top;
            } else if (iOrdinal == 1) {
                i10 = R.drawable.ic_gesture_zone_left_bottom;
            } else if (iOrdinal == 2) {
                i10 = R.drawable.ic_gesture_zone_right_top;
            } else if (iOrdinal == 3) {
                i10 = R.drawable.ic_gesture_zone_right_bottom;
            } else if (iOrdinal == 4) {
                i10 = R.drawable.ic_gesture_zone_bottom_left;
            } else {
                if (iOrdinal != 5) {
                    throw new IncompatibleClassChangeError();
                }
                i10 = R.drawable.ic_gesture_zone_bottom_right;
            }
            imageView.setImageResource(i10);
            TextView textView = (TextView) viewInflate2.findViewById(R.id.textZoneName);
            if (textView != null) {
                int iOrdinal2 = enumC2572f.ordinal();
                if (iOrdinal2 == 0) {
                    i11 = R.string.gesture_zone_left_top;
                } else if (iOrdinal2 == 1) {
                    i11 = R.string.gesture_zone_left_bottom;
                } else if (iOrdinal2 == 2) {
                    i11 = R.string.gesture_zone_right_top;
                } else if (iOrdinal2 == 3) {
                    i11 = R.string.gesture_zone_right_bottom;
                } else if (iOrdinal2 == 4) {
                    i11 = R.string.gesture_zone_bottom_left;
                } else {
                    if (iOrdinal2 != 5) {
                        throw new IncompatibleClassChangeError();
                    }
                    i11 = R.string.gesture_zone_bottom_right;
                }
                textView.setText(i11);
            }
            checkBox.setChecked(this.f7105b.m4003a(enumC2572f));
            C1652b.m2734a();
            C1652b.m2737f().m2996m(spinner, AbstractC1387m.m2421h(new byte[]{62, -7, 108, -117, -7, 33, -29, -15, 22, -14, 122, -78, -19, Base64.padSymbol, -25, -52, 28, -18}, new byte[]{121, -100, 31, -1, -116, 83, -122, -85}) + enumC2572f.name());
            checkBox.setOnCheckedChangeListener(new C1341c3(i13, this, enumC2572f));
            linearLayout.addView(viewInflate2);
            i12++;
            z9 = false;
        }
        return viewInflate;
    }
}
