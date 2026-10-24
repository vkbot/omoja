.class public final synthetic Lp1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/EditText;

.field public final synthetic d:Landroid/widget/EditText;

.field public final synthetic e:Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/a;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lp1/a;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lp1/a;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lp1/a;->d:Landroid/widget/EditText;

    iput-object p5, p0, Lp1/a;->e:Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    sget p1, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;->k:I

    iget-object v1, p0, Lp1/a;->e:Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;

    const-string/jumbo p1, "this$0"

    invoke-static {v1, p1}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lp1/a;->a:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lp1/a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lp1/a;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lp1/a;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;->j:Lx3/d;

    new-instance p1, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;-><init>(Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Lh3/d;)V

    invoke-static {p0, p1}, Ld/f;->S(Lx3/d;Ln3/p;)V

    goto :goto_1

    :cond_1
    :goto_0
    const p0, 0x7f12019a

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1388

    invoke-static {v1, p0, p1}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method
