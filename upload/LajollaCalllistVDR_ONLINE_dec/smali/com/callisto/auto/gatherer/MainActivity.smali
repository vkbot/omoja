.class public Lcom/callisto/auto/gatherer/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public o:Lc1/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/callisto/auto/gatherer/R$layout;->activity_main:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/callisto/auto/gatherer/R$id;->adb_status:I

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->Y(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    sget v0, Lcom/callisto/auto/gatherer/R$id;->cpu_usage:I

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->Y(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    sget v0, Lcom/callisto/auto/gatherer/R$id;->disk_usage:I

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->Y(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    sget v0, Lcom/callisto/auto/gatherer/R$id;->memory_usage:I

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->Y(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    sget v0, Lcom/callisto/auto/gatherer/R$id;->release_info:I

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->Y(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    sget v0, Lcom/callisto/auto/gatherer/R$id;->selinux_status:I

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->Y(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    sget v0, Lcom/callisto/auto/gatherer/R$id;->usb_debug:I

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->Y(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/Button;

    if-eqz v11, :cond_0

    new-instance v0, Lc1/a;

    check-cast p1, Landroid/widget/LinearLayout;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v11}, Lc1/a;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/MainActivity;->o:Lc1/a;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/callisto/auto/gatherer/MainActivity;->o:Lc1/a;

    iget-object p1, p1, Lc1/a;->b:Ljava/lang/Object;

    check-cast p1, Landroid/widget/Button;

    const-string v0, "File Read"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/callisto/auto/gatherer/MainActivity;->o:Lc1/a;

    iget-object p1, p1, Lc1/a;->c:Ljava/lang/Object;

    check-cast p1, Landroid/widget/Button;

    const-string v0, "File Exe"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/callisto/auto/gatherer/MainActivity;->o:Lc1/a;

    iget-object p1, p1, Lc1/a;->b:Ljava/lang/Object;

    check-cast p1, Landroid/widget/Button;

    new-instance v0, La1/a;

    invoke-direct {v0, p0, v2}, La1/a;-><init>(Lcom/callisto/auto/gatherer/MainActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/callisto/auto/gatherer/MainActivity;->o:Lc1/a;

    iget-object p1, p1, Lc1/a;->c:Ljava/lang/Object;

    check-cast p1, Landroid/widget/Button;

    new-instance v0, La1/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, La1/a;-><init>(Lcom/callisto/auto/gatherer/MainActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
