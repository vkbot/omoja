package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.example.navistart.R;
import p022b7.InterfaceC0916l;
import p022b7.InterfaceC0919o;
import p032c7.C1006j;
import p043d6.AbstractC1309h;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class DecoratedBarcodeView extends FrameLayout {

    /* JADX INFO: renamed from: b */
    public final BarcodeView f2816b;

    /* JADX INFO: renamed from: c */
    public final ViewfinderView f2817c;

    /* JADX INFO: renamed from: d */
    public final TextView f2818d;

    public DecoratedBarcodeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, AbstractC1309h.f3124c);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, R.layout.zxing_barcode_scanner);
        typedArrayObtainStyledAttributes.recycle();
        View.inflate(getContext(), resourceId, this);
        BarcodeView barcodeView = (BarcodeView) findViewById(R.id.zxing_barcode_surface);
        this.f2816b = barcodeView;
        if (barcodeView == null) {
            C1929i.m3029k("There is no a com.journeyapps.barcodescanner.BarcodeView on provided layout with the id \"zxing_barcode_surface\".");
            throw null;
        }
        barcodeView.m1046b(attributeSet);
        ViewfinderView viewfinderView = (ViewfinderView) findViewById(R.id.zxing_viewfinder_view);
        this.f2817c = viewfinderView;
        if (viewfinderView == null) {
            C1929i.m3029k("There is no a com.journeyapps.barcodescanner.ViewfinderView on provided layout with the id \"zxing_viewfinder_view\".");
            throw null;
        }
        viewfinderView.setCameraPreview(this.f2816b);
        this.f2818d = (TextView) findViewById(R.id.zxing_status_view);
    }

    public BarcodeView getBarcodeView() {
        return (BarcodeView) findViewById(R.id.zxing_barcode_surface);
    }

    public C1006j getCameraSettings() {
        return this.f2816b.getCameraSettings();
    }

    public InterfaceC0916l getDecoderFactory() {
        return this.f2816b.getDecoderFactory();
    }

    public TextView getStatusView() {
        return this.f2818d;
    }

    public ViewfinderView getViewFinder() {
        return this.f2817c;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 == 24) {
            this.f2816b.setTorch(true);
            return true;
        }
        if (i10 == 25) {
            this.f2816b.setTorch(false);
            return true;
        }
        if (i10 == 27 || i10 == 80) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    public void setCameraSettings(C1006j c1006j) {
        this.f2816b.setCameraSettings(c1006j);
    }

    public void setDecoderFactory(InterfaceC0916l interfaceC0916l) {
        this.f2816b.setDecoderFactory(interfaceC0916l);
    }

    public void setStatusText(String str) {
        TextView textView = this.f2818d;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setTorchListener(InterfaceC0919o interfaceC0919o) {
    }
}
