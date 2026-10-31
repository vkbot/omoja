package p198t1;

import android.graphics.Bitmap;
import android.util.Log;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.C1440x1;
import p078h0.C1652b;
import p206u0.C3277a;
import ru.transfer.MessageData;

/* JADX INFO: renamed from: t1.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3230h extends FrameLayout {

    /* JADX INFO: renamed from: b */
    public TextView f9453b;

    /* JADX INFO: renamed from: c */
    public TextView f9454c;

    /* JADX INFO: renamed from: d */
    public ImageButton f9455d;

    /* JADX INFO: renamed from: e */
    public ImageButton f9456e;

    /* JADX INFO: renamed from: f */
    public boolean f9457f;

    /* JADX INFO: renamed from: g */
    public EditText f9458g;

    /* JADX INFO: renamed from: h */
    public LinearLayout f9459h;

    /* JADX INFO: renamed from: i */
    public LinearLayout f9460i;

    /* JADX INFO: renamed from: j */
    public ImageView f9461j;

    /* JADX INFO: renamed from: k */
    public InterfaceC3229g f9462k;

    public void setMessage(MessageData messageData) {
        Boolean boolValueOf;
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            boolValueOf = Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-36}, new byte[]{-20, 72, 83, -52, 55, 54, 62, -120}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        } else {
            boolValueOf = Boolean.FALSE;
        }
        if (boolValueOf.booleanValue()) {
            Bitmap iconBitmap = messageData.getIconBitmap();
            String sender = messageData.getSender();
            String message = messageData.getMessage();
            ImageView imageView = this.f9461j;
            if (iconBitmap != null) {
                imageView.setImageBitmap(iconBitmap);
            } else {
                imageView.setImageResource(R.drawable.icon_voice_message_6376305);
            }
            this.f9454c.setText(sender);
            this.f9453b.setText(message);
            if (messageData.gethasReply()) {
                this.f9459h.setVisibility(0);
                this.f9460i.setVisibility(0);
                this.f9455d.setOnClickListener(new ViewOnClickListenerC0701a(22, this, messageData));
            }
        }
    }

    public void setMessageDataViewListener(InterfaceC3229g interfaceC3229g) {
        this.f9462k = interfaceC3229g;
    }

    public void seteditTextMessadge(String str) {
        if (this.f9457f) {
            String str2 = this.f9458g.getText().toString() + " " + str;
            Log.d(AbstractC1387m.m2421h(new byte[]{-28, -7, 76, -25, 81, 60, 80, 39, -14, -28, 76, -49, 80, 38, 87, 18, -13, -5, 93}, new byte[]{-105, -100, 56, -126, 53, 85, 36, 115}), str2);
            this.f9458g.setText(str2);
        }
    }
}
