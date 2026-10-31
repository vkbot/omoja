package ru.transfer;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class MessageData implements Serializable {
    private static final long serialVersionUID = 1;
    private final boolean hasReply;
    private final String iconBase64;
    private final String key;
    private final String message;
    private final String packageName;
    private final String sender;

    private MessageData(String str, boolean z9, String str2, String str3, String str4, String str5) {
        this.key = str;
        this.hasReply = z9;
        this.packageName = str2;
        this.sender = str3;
        this.message = str4;
        this.iconBase64 = str5;
    }

    private static Bitmap base64ToBitmap(String str) {
        if (str == null) {
            return null;
        }
        byte[] bArrDecode = Base64.decode(str, 2);
        return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
    }

    private static String drawableToBase64(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        Bitmap bitmapDrawableToBitmap = drawableToBitmap(drawable);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapDrawableToBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
    }

    private static Bitmap drawableToBitmap(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth() > 0 ? drawable.getIntrinsicWidth() : 1, drawable.getIntrinsicHeight() > 0 ? drawable.getIntrinsicHeight() : 1, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static MessageData fromEncodedIcon(String str, boolean z9, String str2, String str3, String str4, String str5) {
        return new MessageData(str, z9, str2, str3, str4, str5);
    }

    public String getIconBase64() {
        return this.iconBase64;
    }

    public Bitmap getIconBitmap() {
        return base64ToBitmap(this.iconBase64);
    }

    public String getKey() {
        return this.key;
    }

    public String getMessage() {
        return this.message;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getSender() {
        return this.sender;
    }

    public boolean gethasReply() {
        return this.hasReply;
    }

    public MessageData(String str, boolean z9, String str2, String str3, String str4, Drawable drawable) {
        this(str, z9, str2, str3, str4, drawableToBase64(drawable));
    }
}
