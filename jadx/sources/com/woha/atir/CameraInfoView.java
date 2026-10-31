package com.woha.atir;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.example.navistart.R;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class CameraInfoView extends LinearLayout {

    /* JADX INFO: renamed from: b */
    public ImageView f2851b;

    /* JADX INFO: renamed from: c */
    public TextView f2852c;

    /* JADX INFO: renamed from: d */
    public TextView f2853d;

    /* JADX INFO: renamed from: e */
    public ImageView f2854e;

    /* JADX INFO: renamed from: f */
    public TextView f2855f;

    public CameraInfoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m2201a(context);
    }

    /* JADX INFO: renamed from: a */
    public final void m2201a(Context context) {
        LayoutInflater.from(context).inflate(R.layout.camera_info_view, (ViewGroup) this, true);
        setOrientation(1);
        this.f2851b = (ImageView) findViewById(R.id.cameraImage);
        this.f2852c = (TextView) findViewById(R.id.distanceToCamera);
        this.f2853d = (TextView) findViewById(R.id.typeCamera);
        this.f2854e = (ImageView) findViewById(R.id.speedSignImage);
        this.f2855f = (TextView) findViewById(R.id.speedLimitText);
        setVisibility(8);
    }

    public void setCameraImageResource(int i10) {
        int i11;
        if (i10 == 1) {
            i11 = R.drawable.camera_alarm_show;
        } else if (i10 != 3) {
            i11 = i10 != 11 ? 0 : R.drawable.camera_na_polosu;
        } else {
            i11 = R.drawable.cam_red1;
        }
        this.f2851b.setImageResource(i11);
    }

    public void setDistance(String str) {
        this.f2852c.setText(str);
    }

    public void setSpeedLimit(int i10) {
        this.f2855f.setText(String.valueOf(i10));
    }

    public void setSpeedSignImageResource(int i10) {
        this.f2854e.setImageResource(i10);
    }

    public void setTypeCamera(String str) {
        this.f2853d.setText(str);
    }
}
