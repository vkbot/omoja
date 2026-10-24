.class public final Ld1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mega/engineeringmode/ui/a$c;


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/b;->c:Lcom/mega/engineeringmode/MainActivity;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Ld1/b;->c:Lcom/mega/engineeringmode/MainActivity;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/MainActivity;->n()V

    return-void
.end method

.method public final onCancel()V
    .locals 0

    iget-object p0, p0, Ld1/b;->c:Lcom/mega/engineeringmode/MainActivity;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    return-void
.end method
