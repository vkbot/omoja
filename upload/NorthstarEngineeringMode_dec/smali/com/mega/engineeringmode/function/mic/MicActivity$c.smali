.class public final Lcom/mega/engineeringmode/function/mic/MicActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/mic/MicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/function/mic/MicActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/mic/MicActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity$c;->c:Lcom/mega/engineeringmode/function/mic/MicActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity$c;->c:Lcom/mega/engineeringmode/function/mic/MicActivity;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->n:Lcom/mega/engineeringmode/function/mic/a;

    sget-object v1, Lcom/mega/engineeringmode/function/mic/a$b;->x:Lcom/mega/engineeringmode/function/mic/a$b;

    iput-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->f:Lcom/mega/engineeringmode/function/mic/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mega/engineeringmode/function/mic/a;->a()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f120217

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
