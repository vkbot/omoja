.class public Lcom/mega/engineeringmode/function/versioninfo/VersionInfoActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f1201df

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const p1, 0x7f0a0153

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lf2/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf2/e;-><init>(Lcom/mega/engineeringmode/function/versioninfo/VersionInfoActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0451

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lf2/f;

    invoke-direct {v0, p0, v1}, Lf2/f;-><init>(Lcom/mega/engineeringmode/function/versioninfo/VersionInfoActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0152

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lw0/d;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Lw0/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0151

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lf2/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lf2/e;-><init>(Lcom/mega/engineeringmode/function/versioninfo/VersionInfoActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0062

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lf2/f;

    invoke-direct {v0, p0, v1}, Lf2/f;-><init>(Lcom/mega/engineeringmode/function/versioninfo/VersionInfoActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lf2/g;->a()Lf2/g;

    move-result-object p0

    iget-object p1, p0, Lf2/g;->a:Lmega/car/MegaCarProperty;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lf2/g;->e:Lf2/g$a;

    iget-object p0, p0, Lf2/g;->b:Ljava/util/HashSet;

    invoke-virtual {p1, v0, p0}, Lmega/car/MegaCarProperty;->registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    invoke-static {}, Lf2/g;->a()Lf2/g;

    move-result-object p0

    iget-object v0, p0, Lf2/g;->a:Lmega/car/MegaCarProperty;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lf2/g;->e:Lf2/g$a;

    iget-object p0, p0, Lf2/g;->b:Ljava/util/HashSet;

    invoke-virtual {v0, v1, p0}, Lmega/car/MegaCarProperty;->unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    :cond_0
    return-void
.end method
