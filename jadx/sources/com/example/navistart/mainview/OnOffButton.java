package com.example.navistart.mainview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.navigation.ViewOnClickListenerC0675c;
import com.example.navistart.R;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class OnOffButton extends FrameLayout {

    /* JADX INFO: renamed from: g */
    public static Boolean f1840g = Boolean.FALSE;

    /* JADX INFO: renamed from: b */
    public final Button f1841b;

    /* JADX INFO: renamed from: c */
    public final TextView f1842c;

    /* JADX INFO: renamed from: d */
    public final ImageView f1843d;

    /* JADX INFO: renamed from: e */
    public Runnable f1844e;

    /* JADX INFO: renamed from: f */
    public Runnable f1845f;

    public OnOffButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, R.layout.onoffbutton, this);
        this.f1841b = (Button) findViewById(R.id.onoff_button);
        this.f1842c = (TextView) findViewById(R.id.textButton);
        this.f1843d = (ImageView) findViewById(R.id.lampOnOff);
        this.f1841b.setOnClickListener(new ViewOnClickListenerC0675c(21, this));
    }

    public Boolean getOnOff() {
        return f1840g;
    }

    public void setEnable(Boolean bool) {
        this.f1841b.setEnabled(bool.booleanValue());
    }

    public void setOnOff(Boolean bool) {
        f1840g = bool;
        boolean zBooleanValue = bool.booleanValue();
        ImageView imageView = this.f1843d;
        if (zBooleanValue) {
            imageView.setImageResource(R.drawable.lamp_on);
        } else {
            imageView.setImageResource(R.drawable.lamp_off);
        }
    }

    public void setRunnableOff(Runnable runnable) {
        this.f1845f = runnable;
    }

    public void setRunnableOn(Runnable runnable) {
        this.f1844e = runnable;
    }

    public void setTextButton(String str) {
        this.f1842c.setText(str);
    }
}
