package com.woha.atir;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CameraInfoView extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ImageView f1608b;
    public TextView c;
    public TextView d;
    public ImageView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextView f1609f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CameraInfoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(Context context) {
        LayoutInflater.from(context).inflate(2131492915, (ViewGroup) this, true);
        setOrientation(1);
        this.f1608b = (ImageView) findViewById(2131296600);
        this.c = (TextView) findViewById(2131296707);
        this.d = (TextView) findViewById(2131297692);
        this.e = (ImageView) findViewById(2131297385);
        this.f1609f = (TextView) findViewById(2131297384);
        setVisibility(8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCameraImageResource(int i9) {
        int i10;
        if (i9 == 1) {
            i10 = 2131165354;
        } else if (i9 != 3) {
            i10 = i9 != 11 ? 0 : 2131165355;
        } else {
            i10 = 2131165353;
        }
        this.f1608b.setImageResource(i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDistance(String str) {
        this.c.setText(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpeedLimit(int i9) {
        this.f1609f.setText(String.valueOf(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpeedSignImageResource(int i9) {
        this.e.setImageResource(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTypeCamera(String str) {
        this.d.setText(str);
    }
}
