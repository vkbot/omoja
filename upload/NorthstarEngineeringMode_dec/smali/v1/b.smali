.class public final synthetic Lv1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/b;->a:Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;

    iput p2, p0, Lv1/b;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lv1/b;->a:Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->a:Ljava/util/ArrayList;

    iget p0, p0, Lv1/b;->b:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/e;

    iget v0, v0, Lv1/e;->d:I

    const-string/jumbo v1, "showDialog "

    const-string v2, "ConfigurationAdapter"

    invoke-static {v1, v0, v2}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    iput p0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->m:I

    iput v0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->l:I

    iget-object p0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->e:Landroid/app/AlertDialog;

    iget-object v1, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->b:Landroid/content/Context;

    if-nez p0, :cond_0

    new-instance p0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    iput-object p0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->e:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v2, 0x7f080142

    invoke-virtual {p0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    new-instance p0, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120190

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(I)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v2, 0x7f06012e

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x14

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->e:Landroid/app/AlertDialog;

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v2, 0x7f0d005b

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    iget-object v2, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->e:Landroid/app/AlertDialog;

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const v2, 0x7f0a0209

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->h:Landroid/widget/TextView;

    const v2, 0x7f0a044a

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->i:Landroid/widget/TextView;

    const v2, 0x7f0a0445

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->f:Landroid/widget/Button;

    const v2, 0x7f0a0446

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->g:Landroid/widget/Button;

    const v2, 0x7f0a0447

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->j:Landroid/widget/Button;

    const v2, 0x7f0a0449

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    iput-object p0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->k:Landroid/widget/Button;

    iget-object p0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->f:Landroid/widget/Button;

    new-instance v2, Lv1/c;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lv1/c;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->g:Landroid/widget/Button;

    new-instance v2, Lx0/b;

    const/16 v3, 0xb

    invoke-direct {v2, v3, p1}, Lx0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->j:Landroid/widget/Button;

    new-instance v2, Lq0/a;

    const/16 v3, 0xd

    invoke-direct {v2, v3, p1}, Lq0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->k:Landroid/widget/Button;

    new-instance v2, Lv1/c;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lv1/c;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f12018f

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->i:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->e:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->e:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
