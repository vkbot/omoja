package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.example.navistart.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
class TimePickerView extends ConstraintLayout {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f2595c = 0;

    /* JADX INFO: renamed from: b */
    public final Chip f2596b;

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        ViewOnClickListenerC1125i viewOnClickListenerC1125i = new ViewOnClickListenerC1125i();
        LayoutInflater.from(context).inflate(R.layout.material_timepicker, this);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R.id.material_clock_period_toggle);
        materialButtonToggleGroup.f2213l.add(new C1124h());
        Chip chip = (Chip) findViewById(R.id.material_minute_tv);
        Chip chip2 = (Chip) findViewById(R.id.material_hour_tv);
        this.f2596b = chip2;
        ViewOnTouchListenerC1127k viewOnTouchListenerC1127k = new ViewOnTouchListenerC1127k(new GestureDetector(getContext(), new C1126j()));
        chip.setOnTouchListener(viewOnTouchListenerC1127k);
        chip2.setOnTouchListener(viewOnTouchListenerC1127k);
        chip.setTag(R.id.selection_type, 12);
        chip2.setTag(R.id.selection_type, 10);
        chip.setOnClickListener(viewOnClickListenerC1125i);
        chip2.setOnClickListener(viewOnClickListenerC1125i);
        chip.setAccessibilityClassName("android.view.View");
        chip2.setAccessibilityClassName("android.view.View");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (view == this && i10 == 0) {
            this.f2596b.sendAccessibilityEvent(8);
        }
    }
}
