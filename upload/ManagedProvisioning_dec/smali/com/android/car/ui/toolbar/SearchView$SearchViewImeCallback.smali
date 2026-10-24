.class Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Lcom/android/car/ui/toolbar/PrivateImeCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/toolbar/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchViewImeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/ui/toolbar/SearchView;


# direct methods
.method private constructor <init>(Lcom/android/car/ui/toolbar/SearchView;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/ui/toolbar/SearchView;Lcom/android/car/ui/toolbar/SearchView$1;)V
    .locals 0

    .line 402
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;-><init>(Lcom/android/car/ui/toolbar/SearchView;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Ljava/lang/String;)V
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-static {p0}, Lcom/android/car/ui/toolbar/SearchView;->access$200(Lcom/android/car/ui/toolbar/SearchView;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/imewidescreen/CarUiImeSearchListItem;

    if-eqz p0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getOnClickListener()Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 411
    invoke-interface {p1, p0}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;->onClick(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    :cond_0
    return-void
.end method

.method public onPostLoadSearchResults()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-static {v0}, Lcom/android/car/ui/toolbar/SearchView;->access$900(Lcom/android/car/ui/toolbar/SearchView;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-static {p0}, Lcom/android/car/ui/toolbar/SearchView;->access$900(Lcom/android/car/ui/toolbar/SearchView;)Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSecondaryImageClicked(Ljava/lang/String;)V
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-static {p0}, Lcom/android/car/ui/toolbar/SearchView;->access$200(Lcom/android/car/ui/toolbar/SearchView;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/imewidescreen/CarUiImeSearchListItem;

    if-eqz p0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getSupplementalIconOnClickListener()Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 423
    invoke-interface {p1, p0}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;->onClick(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    :cond_0
    return-void
.end method

.method public onSurfaceInfo(ILandroid/os/IBinder;II)V
    .locals 3

    .line 431
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    .line 432
    invoke-static {v0}, Lcom/android/car/ui/toolbar/SearchView;->access$300(Lcom/android/car/ui/toolbar/SearchView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 440
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 442
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-static {v0}, Lcom/android/car/ui/toolbar/SearchView;->access$400(Lcom/android/car/ui/toolbar/SearchView;)Landroid/view/SurfaceControlViewHost;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-static {v0}, Lcom/android/car/ui/toolbar/SearchView;->access$400(Lcom/android/car/ui/toolbar/SearchView;)Landroid/view/SurfaceControlViewHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    new-instance v1, Landroid/view/SurfaceControlViewHost;

    iget-object v2, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/android/car/ui/toolbar/SearchView;->access$402(Lcom/android/car/ui/toolbar/SearchView;Landroid/view/SurfaceControlViewHost;)Landroid/view/SurfaceControlViewHost;

    .line 449
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-static {p1, p3}, Lcom/android/car/ui/toolbar/SearchView;->access$502(Lcom/android/car/ui/toolbar/SearchView;I)I

    .line 450
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-static {p1, p4}, Lcom/android/car/ui/toolbar/SearchView;->access$602(Lcom/android/car/ui/toolbar/SearchView;I)I

    .line 452
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 453
    iget-object p2, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    .line 454
    invoke-static {p2}, Lcom/android/car/ui/toolbar/SearchView;->access$400(Lcom/android/car/ui/toolbar/SearchView;)Landroid/view/SurfaceControlViewHost;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object p2

    const-string p3, "content_area_surface_package"

    .line 453
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 455
    iget-object p2, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-static {p2}, Lcom/android/car/ui/toolbar/SearchView;->access$800(Lcom/android/car/ui/toolbar/SearchView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p2

    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-static {p0}, Lcom/android/car/ui/toolbar/SearchView;->access$700(Lcom/android/car/ui/toolbar/SearchView;)Landroid/widget/EditText;

    move-result-object p0

    const-string p3, "automotive_wide_screen"

    invoke-virtual {p2, p0, p3, p1}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method
