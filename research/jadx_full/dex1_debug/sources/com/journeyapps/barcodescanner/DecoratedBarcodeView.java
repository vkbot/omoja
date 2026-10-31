package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import b7.l;
import b7.o;
import c7.j;
import d6.h;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DecoratedBarcodeView extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BarcodeView f1588b;
    public final ViewfinderView c;
    public final TextView d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DecoratedBarcodeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, h.c);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 2131493158);
        typedArrayObtainStyledAttributes.recycle();
        View.inflate(getContext(), resourceId, this);
        BarcodeView barcodeView = (BarcodeView) findViewById(2131297788);
        this.f1588b = barcodeView;
        if (barcodeView == null) {
            i.k("There is no a com.journeyapps.barcodescanner.BarcodeView on provided layout with the id \"zxing_barcode_surface\".");
            throw null;
        }
        barcodeView.b(attributeSet);
        ViewfinderView viewfinderView = (ViewfinderView) findViewById(2131297798);
        this.c = viewfinderView;
        if (viewfinderView == null) {
            i.k("There is no a com.journeyapps.barcodescanner.ViewfinderView on provided layout with the id \"zxing_viewfinder_view\".");
            throw null;
        }
        viewfinderView.setCameraPreview(this.f1588b);
        this.d = (TextView) findViewById(2131297797);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BarcodeView getBarcodeView() {
        return (BarcodeView) findViewById(2131297788);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j getCameraSettings() {
        return this.f1588b.getCameraSettings();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l getDecoderFactory() {
        return this.f1588b.getDecoderFactory();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TextView getStatusView() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewfinderView getViewFinder() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, android.view.KeyEvent$Callback
    public final boolean onKeyDown(int i9, KeyEvent keyEvent) {
        if (i9 == 24) {
            this.f1588b.setTorch(true);
            return true;
        }
        if (i9 == 25) {
            this.f1588b.setTorch(false);
            return true;
        }
        if (i9 == 27 || i9 == 80) {
            return true;
        }
        return super.onKeyDown(i9, keyEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCameraSettings(j jVar) {
        this.f1588b.setCameraSettings(jVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDecoderFactory(l lVar) {
        this.f1588b.setDecoderFactory(lVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStatusText(String str) {
        TextView textView = this.d;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setTorchListener(o oVar) {
    }
}
