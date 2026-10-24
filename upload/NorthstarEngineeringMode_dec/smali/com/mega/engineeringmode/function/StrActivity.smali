.class public Lcom/mega/engineeringmode/function/StrActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic y:I


# instance fields
.field public i:Lcom/mega/engineeringmode/ui/MegaSwitch;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/RadioButton;

.field public l:Landroid/widget/RadioButton;

.field public m:Landroid/widget/RadioButton;

.field public n:Landroid/widget/RadioButton;

.field public o:Landroid/widget/RadioButton;

.field public p:Landroid/widget/RadioButton;

.field public q:Landroid/widget/RadioButton;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/EditText;

.field public t:Landroid/widget/Button;

.field public u:Landroid/widget/LinearLayout;

.field public v:Lmega/car/MegaCarProperty;

.field public final w:Lcom/mega/engineeringmode/function/StrActivity$a;

.field public final x:Lcom/mega/engineeringmode/function/StrActivity$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Lcom/mega/engineeringmode/function/StrActivity$a;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const v1, 0x2d00000b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/mega/engineeringmode/function/StrActivity;->w:Lcom/mega/engineeringmode/function/StrActivity$a;

    new-instance v0, Lcom/mega/engineeringmode/function/StrActivity$b;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/StrActivity$b;-><init>(Lcom/mega/engineeringmode/function/StrActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/StrActivity;->x:Lcom/mega/engineeringmode/function/StrActivity$b;

    return-void
.end method


# virtual methods
.method public final n(BB)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    aput-byte p2, v0, p1

    new-instance p1, Lmega/car/hardware/CarPropertyValue;

    const p2, 0x2d00000a

    invoke-direct {p1, p2, v0}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/StrActivity;->v:Lmega/car/MegaCarProperty;

    invoke-virtual {p0, p1}, Lmega/car/MegaCarProperty;->setRawProp(Lmega/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method public final o(I)V
    .locals 2

    const-string v0, " updateDays "

    const-string v1, "TAG"

    invoke-static {v0, p1, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    if-lez p1, :cond_0

    const/16 v0, 0x2e8

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/mega/engineeringmode/function/StrActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f1202f9

    invoke-virtual {p0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0106

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->j()V

    const p1, 0x7f0a0396

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/ui/MegaSwitch;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->i:Lcom/mega/engineeringmode/ui/MegaSwitch;

    const p1, 0x7f0a0401

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f0a0303

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    const p1, 0x7f0a02f3

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->k:Landroid/widget/RadioButton;

    const p1, 0x7f0a02fe

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->l:Landroid/widget/RadioButton;

    const p1, 0x7f0a02fd

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->m:Landroid/widget/RadioButton;

    const p1, 0x7f0a02f2

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->n:Landroid/widget/RadioButton;

    const p1, 0x7f0a02f1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->o:Landroid/widget/RadioButton;

    const p1, 0x7f0a02fc

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->p:Landroid/widget/RadioButton;

    const p1, 0x7f0a02fb

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->q:Landroid/widget/RadioButton;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->i:Lcom/mega/engineeringmode/ui/MegaSwitch;

    new-instance v0, Lg1/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg1/r;-><init>(Lcom/mega/engineeringmode/function/BaseFunctionActivity;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->k:Landroid/widget/RadioButton;

    new-instance v0, Lg1/s;

    invoke-direct {v0, p0, v1}, Lg1/s;-><init>(Lcom/mega/engineeringmode/function/StrActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->l:Landroid/widget/RadioButton;

    new-instance v0, Lg1/t;

    invoke-direct {v0, p0, v1}, Lg1/t;-><init>(Lcom/mega/engineeringmode/function/StrActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->m:Landroid/widget/RadioButton;

    new-instance v0, Lg1/u;

    invoke-direct {v0, p0, v1}, Lg1/u;-><init>(Lcom/mega/engineeringmode/function/StrActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->n:Landroid/widget/RadioButton;

    new-instance v0, Lg1/s;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg1/s;-><init>(Lcom/mega/engineeringmode/function/StrActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->o:Landroid/widget/RadioButton;

    new-instance v0, Lg1/t;

    invoke-direct {v0, p0, v1}, Lg1/t;-><init>(Lcom/mega/engineeringmode/function/StrActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->p:Landroid/widget/RadioButton;

    new-instance v0, Lg1/u;

    invoke-direct {v0, p0, v1}, Lg1/u;-><init>(Lcom/mega/engineeringmode/function/StrActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->q:Landroid/widget/RadioButton;

    new-instance v0, Lg1/s;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lg1/s;-><init>(Lcom/mega/engineeringmode/function/StrActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f1202ed

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ls2/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0387

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->r:Landroid/widget/TextView;

    const p1, 0x7f0a01db

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->s:Landroid/widget/EditText;

    const p1, 0x7f0a0385

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->t:Landroid/widget/Button;

    const p1, 0x7f0a0386

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->u:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->t:Landroid/widget/Button;

    new-instance v0, Lg1/t;

    invoke-direct {v0, p0, v1}, Lg1/t;-><init>(Lcom/mega/engineeringmode/function/StrActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f1201dd

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/StrActivity;->v:Lmega/car/MegaCarProperty;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/StrActivity;->x:Lcom/mega/engineeringmode/function/StrActivity$b;

    iget-object v2, p0, Lcom/mega/engineeringmode/function/StrActivity;->w:Lcom/mega/engineeringmode/function/StrActivity$a;

    invoke-virtual {p1, v0, v2}, Lmega/car/MegaCarProperty;->registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v1}, Lcom/mega/engineeringmode/function/StrActivity;->n(BB)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/StrActivity;->v:Lmega/car/MegaCarProperty;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mega/engineeringmode/function/StrActivity;->x:Lcom/mega/engineeringmode/function/StrActivity$b;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/StrActivity;->w:Lcom/mega/engineeringmode/function/StrActivity$a;

    invoke-virtual {v0, v1, p0}, Lmega/car/MegaCarProperty;->unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public final p(Z)V
    .locals 4

    iget-object v0, p0, Lcom/mega/engineeringmode/function/StrActivity;->i:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {v0, p1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/StrActivity;->r:Landroid/widget/TextView;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/StrActivity;->u:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
