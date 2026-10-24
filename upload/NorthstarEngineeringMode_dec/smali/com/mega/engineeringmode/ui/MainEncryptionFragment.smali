.class public Lcom/mega/engineeringmode/ui/MainEncryptionFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object p3, Ln2/c;->a:Ljava/lang/String;

    const-string v0, "T28"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0d009d

    goto :goto_0

    :cond_0
    const p3, 0x7f0d009c

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0251

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lq0/a;

    const/16 v1, 0x15

    invoke-direct {p3, v1, p0}, Lq0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a00d6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p3, Lw0/d;

    const/16 v1, 0x12

    invoke-direct {p3, v1, p0}, Lw0/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const p0, 0x7f0a01a3

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const p2, 0x7f0a0252

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a00b5

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {}, Ln2/c;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Ln2/m;->a:Z

    if-eqz v1, :cond_2

    const-string v0, "VEHICLE_NETWORK"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ld/f;->z(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "ro.ecu.config.VEHICLE_NETWORK"

    invoke-static {v1, v0}, Ld/f;->z(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    :goto_1
    invoke-static {}, Lb1/b;->b()Z

    move-result p2

    if-nez p2, :cond_5

    if-eqz p0, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    return-object p1
.end method
