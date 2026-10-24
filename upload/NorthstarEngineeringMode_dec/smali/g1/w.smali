.class public final synthetic Lg1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mega/engineeringmode/function/SystemRebootActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/SystemRebootActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg1/w;->a:I

    iput-object p1, p0, Lg1/w;->b:Lcom/mega/engineeringmode/function/SystemRebootActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lg1/w;->a:I

    const v0, 0x7f12030a

    iget-object p0, p0, Lg1/w;->b:Lcom/mega/engineeringmode/function/SystemRebootActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/mega/engineeringmode/function/SystemRebootActivity;->l:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lk2/a;

    invoke-direct {p1, p0}, Lk2/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Ls0/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Ls0/e;-><init>(ILjava/lang/Object;)V

    iput-object v1, p1, Lk2/a;->a:Lk2/a$a;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lk2/a;->a(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget p1, Lcom/mega/engineeringmode/function/SystemRebootActivity;->l:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lk2/a;

    invoke-direct {p1, p0}, Lk2/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Lg1/a0;

    invoke-direct {v1, p0}, Lg1/a0;-><init>(Lcom/mega/engineeringmode/function/SystemRebootActivity;)V

    iput-object v1, p1, Lk2/a;->a:Lk2/a$a;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lk2/a;->a(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
