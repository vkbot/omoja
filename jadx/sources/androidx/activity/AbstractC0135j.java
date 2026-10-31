package androidx.activity;

import android.app.Person;
import android.os.Parcelable;
import android.text.PrecomputedText;
import android.text.TextPaint;

/* JADX INFO: renamed from: androidx.activity.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0135j {
    /* JADX INFO: renamed from: f */
    public static /* bridge */ /* synthetic */ Person m324f(Parcelable parcelable) {
        return (Person) parcelable;
    }

    /* JADX INFO: renamed from: g */
    public static /* bridge */ /* synthetic */ Person m325g(Object obj) {
        return (Person) obj;
    }

    /* JADX INFO: renamed from: m */
    public static /* synthetic */ PrecomputedText.Params.Builder m331m(TextPaint textPaint) {
        return new PrecomputedText.Params.Builder(textPaint);
    }

    /* JADX INFO: renamed from: p */
    public static /* bridge */ /* synthetic */ PrecomputedText m334p(Object obj) {
        return (PrecomputedText) obj;
    }

    /* JADX INFO: renamed from: y */
    public static /* bridge */ /* synthetic */ boolean m343y(Object obj) {
        return obj instanceof PrecomputedText;
    }
}
