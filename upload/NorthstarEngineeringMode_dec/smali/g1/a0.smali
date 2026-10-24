.class public final Lg1/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/a$a;


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/function/SystemRebootActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/SystemRebootActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/a0;->c:Lcom/mega/engineeringmode/function/SystemRebootActivity;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    new-instance v0, Lk2/b;

    iget-object v1, p0, Lg1/a0;->c:Lcom/mega/engineeringmode/function/SystemRebootActivity;

    invoke-direct {v0, v1}, Lk2/b;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/mega/engineeringmode/function/SystemRebootActivity;->i:Lk2/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, v1, Lcom/mega/engineeringmode/function/SystemRebootActivity;->i:Lk2/b;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120311

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lk2/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/mega/engineeringmode/function/SystemRebootActivity;->j:Landroid/os/Handler;

    new-instance v1, Lg1/a0$a;

    invoke-direct {v1, p0}, Lg1/a0$a;-><init>(Lg1/a0;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
