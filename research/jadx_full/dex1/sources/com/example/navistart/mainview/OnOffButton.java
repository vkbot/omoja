package com.example.navistart.mainview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.navigation.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class OnOffButton extends FrameLayout {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Boolean f983g = Boolean.FALSE;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Button f984b;
    public final TextView c;
    public final ImageView d;
    public Runnable e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f985f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnOffButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, 2131493114, this);
        this.f984b = (Button) findViewById(2131297156);
        this.c = (TextView) findViewById(2131297553);
        this.d = (ImageView) findViewById(2131296895);
        this.f984b.setOnClickListener(new c(21, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Boolean getOnOff() {
        return f983g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEnable(Boolean bool) {
        this.f984b.setEnabled(bool.booleanValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnOff(Boolean bool) {
        f983g = bool;
        boolean zBooleanValue = bool.booleanValue();
        ImageView imageView = this.d;
        if (zBooleanValue) {
            imageView.setImageResource(2131165534);
        } else {
            imageView.setImageResource(2131165532);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRunnableOff(Runnable runnable) {
        this.f985f = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRunnableOn(Runnable runnable) {
        this.e = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTextButton(String str) {
        this.c.setText(str);
    }
}
