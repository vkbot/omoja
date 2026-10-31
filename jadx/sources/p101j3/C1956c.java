package p101j3;

import com.google.android.material.carousel.CarouselLayoutManager;

/* JADX INFO: renamed from: j3.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1956c extends AbstractC1958e {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ CarouselLayoutManager f5338b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1956c(CarouselLayoutManager carouselLayoutManager) {
        super(1);
        this.f5338b = carouselLayoutManager;
    }

    @Override // p101j3.AbstractC1958e
    /* JADX INFO: renamed from: a */
    public final int mo3052a() {
        return this.f5338b.getHeight();
    }

    @Override // p101j3.AbstractC1958e
    /* JADX INFO: renamed from: b */
    public final int mo3053b() {
        return this.f5338b.getPaddingLeft();
    }

    @Override // p101j3.AbstractC1958e
    /* JADX INFO: renamed from: c */
    public final int mo3054c() {
        CarouselLayoutManager carouselLayoutManager = this.f5338b;
        return carouselLayoutManager.getWidth() - carouselLayoutManager.getPaddingRight();
    }

    @Override // p101j3.AbstractC1958e
    /* JADX INFO: renamed from: d */
    public final int mo3055d() {
        return 0;
    }

    @Override // p101j3.AbstractC1958e
    /* JADX INFO: renamed from: e */
    public final int mo3056e() {
        return 0;
    }
}
