.class public final La2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Lcom/mega/engineeringmode/function/sources/SourceActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/sources/SourceActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/h;->r:Lcom/mega/engineeringmode/function/sources/SourceActivity;

    iput p2, p0, La2/h;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, La2/h;->r:Lcom/mega/engineeringmode/function/sources/SourceActivity;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/sources/SourceActivity;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget p0, p0, La2/h;->c:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
