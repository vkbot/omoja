package p101j3;

import com.google.android.material.carousel.CarouselLayoutManager;

/* JADX INFO: renamed from: j3.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1957d extends AbstractC1958e {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ CarouselLayoutManager f5339b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1957d(CarouselLayoutManager carouselLayoutManager) {
        super(0);
        this.f5339b = carouselLayoutManager;
    }

    @Override // p101j3.AbstractC1958e
    /* JADX INFO: renamed from: a */
    public final int mo3052a() {
        CarouselLayoutManager carouselLayoutManager = this.f5339b;
        return carouselLayoutManager.getHeight() - carouselLayoutManager.getPaddingBottom();
    }

    @Override // p101j3.AbstractC1958e
    /* JADX INFO: renamed from: b */
    public final int mo3053b() {
        return 0;
    }

    @Override // p101j3.AbstractC1958e
    /* JADX INFO: renamed from: c */
    public final int mo3054c() {
        return this.f5339b.getWidth();
    }

    @Override // p101j3.AbstractC1958e
    /* JADX INFO: renamed from: d */
    public final int mo3055d() {
        CarouselLayoutManager carouselLayoutManager = this.f5339b;
        if (carouselLayoutManager.m1788m()) {
            return carouselLayoutManager.getWidth();
        }
        return 0;
    }

    @Override // p101j3.AbstractC1958e
    /* JADX INFO: renamed from: e */
    public final int mo3056e() {
        return this.f5339b.getPaddingTop();
    }
}
