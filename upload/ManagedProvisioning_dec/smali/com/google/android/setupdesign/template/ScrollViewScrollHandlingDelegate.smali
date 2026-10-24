.class public Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "ScrollViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;
.implements Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;


# instance fields
.field private final requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/widget/ScrollView;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 43
    instance-of p0, p2, Lcom/google/android/setupdesign/view/BottomScrollView;

    if-eqz p0, :cond_0

    .line 44
    check-cast p2, Lcom/google/android/setupdesign/view/BottomScrollView;

    goto :goto_0

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot set non-BottomScrollView. Found="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScrollViewDelegate"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onRequiresScroll()V
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    return-void
.end method

.method public onScrolledToBottom()V
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    return-void
.end method
