package t1;

import android.graphics.Bitmap;
import android.util.Log;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.protobuf.q;
import e0.p3;
import e0.x1;
import ru.transfer.MessageData;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f5347b;
    public TextView c;
    public ImageButton d;
    public ImageButton e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5348f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public EditText f5349g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public LinearLayout f5350h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LinearLayout f5351i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ImageView f5352j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public g f5353k;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMessage(MessageData messageData) {
        Boolean boolValueOf;
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = e0.m.f1896j;
        String[] strArr = p3.f1924a;
        q.s(bArr, aVarO, "", sb);
        q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = q.g(sb, x1.f1989q);
        u0.a aVarO2 = h0.b.o();
        byte[] bArr2 = e0.m.f1892f;
        if (q.w(bArr2, aVarO2, "", strG)) {
            boolValueOf = Boolean.valueOf(q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(q.x(new byte[]{-36}, new byte[]{-20, 72, 83, -52, 55, 54, 62, -120}, h0.b.o(), q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        } else {
            boolValueOf = Boolean.FALSE;
        }
        if (boolValueOf.booleanValue()) {
            Bitmap iconBitmap = messageData.getIconBitmap();
            String sender = messageData.getSender();
            String message = messageData.getMessage();
            ImageView imageView = this.f5352j;
            if (iconBitmap != null) {
                imageView.setImageBitmap(iconBitmap);
            } else {
                imageView.setImageResource(2131165523);
            }
            this.c.setText(sender);
            this.f5347b.setText(message);
            if (messageData.gethasReply()) {
                this.f5350h.setVisibility(0);
                this.f5351i.setVisibility(0);
                this.d.setOnClickListener(new androidx.navigation.ui.a(22, this, messageData));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMessageDataViewListener(g gVar) {
        this.f5353k = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void seteditTextMessadge(String str) {
        if (this.f5348f) {
            String str2 = this.f5349g.getText().toString() + " " + str;
            Log.d(e0.m.h(new byte[]{-28, -7, 76, -25, 81, 60, 80, 39, -14, -28, 76, -49, 80, 38, 87, 18, -13, -5, 93}, new byte[]{-105, -100, 56, -126, 53, 85, 36, 115}), str2);
            this.f5349g.setText(str2);
        }
    }
}
